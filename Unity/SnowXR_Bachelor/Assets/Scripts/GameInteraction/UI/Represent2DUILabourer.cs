using System;
using System.Collections.Generic;
using AI.NewGOAP;
using CrashKonijn.Goap.Behaviours;
using Descriptor;
using HalfLifeUI;
using Snow.Utility;
using SnowXR.Faction;
using SnowXR.Injectors;
using UnityEngine;
using UnityEngine.AddressableAssets;
using UnityEngine.AI;
using UnityEngine.EventSystems;
using UnityEngine.UI;

namespace SnowXR.Represent2D.Scenario {
    public class Represent2DUILabourer : Represent2DUI {
        protected void SetupBasicUI(SubWindowManager manager)
        {
            AddOnNextClickButton(manager, "Move To Position", OnNextClick_MoveTo);
            AddOnClickThisButton(manager, "Stop", () =>
            {
                Stop();
                Debug.Log("Tried to Stop Action");
            });
        }
        protected void Stop()
        {
            Stop(GetComponent<AgentBehaviour>());
        }
        protected bool OnNextClick_MoveTo(Vector3 position) {
            GetComponent<WorkerBrain>().MoveTo(position);
            return true;
        }
        private void Start() {
            _represent2D.onClickRepresentation.AddListener(OnClick2DRepresent);
        }
        private void OnClick2DRepresent() {
            if (UIGameObject == null) {
                UIGameObject = SpawnUI();
                SetupUI(UIGameObject);    
                return;
            }
            
            UIGameObject.GetComponentInChildren<SubWindowManager>().Open();
        }
        public void SetupUI(GameObject go) {
            SubWindowManager manager = UIGameObject.GetComponentInChildren<SubWindowManager>();
            
            if (TryGetComponent(out HealthWorkerBrain healthLabourer)) {
                SetupBasicUI(manager);
                SetupHealthWorkerUI(manager);
                return;
            }
            
            if (TryGetComponent(out FireWorkerBrain fireLabourer)) {
                SetupBasicUI(manager);
                SetupFireUI(manager);
                return;
            }

            if (TryGetComponent(out PatientWorkerBrain patientLabourer)) {
                SetupBasicUI(manager);
                SetupPatientUI(manager, patientLabourer);
                return;
            }

            if (TryGetComponent(out PoliceWorkerBrain policeWorker))
            {
                SetupBasicUI(manager);
                SetupPoliceUI(manager);
            }

            if (TryGetComponent(out PlayerWorkerBrain playerWorker))
            {
                SetupPlayerUI(manager);
            }

            if (TryGetComponent(out BackBoardWorkerBrain backBoardWorker))
            {
                SetupBasicUI(manager);
                SetupBackBoardUI(manager);
            }

            if (TryGetComponent(out StretcherWorkerBrain stretcherWorkerBrain))
            {
                SetupBasicUI(manager);
                SetupStretcherUI(manager);
            }
        }







        private static void Stop(AgentBehaviour agent)
        {
            agent.SetGoal(null, true);
        }
        private bool BackBoard_DeliverPatientToStretcher(Represent2D rep2D)
        {
            var patientWorker = rep2D.GetComponent<PatientWorkerBrain>();
            var backBoardWorker = GetComponent<BackBoardWorkerBrain>();
            
            if (patientWorker == null || backBoardWorker == null)
                return false;
            
            Stop();
            backBoardWorker.Agent.SetGoal<LoadPatientToStretcherGoal>(true);
            backBoardWorker.TargetBehaviour.SetPatient(patientWorker);
            return true;
        }

        private void GatherValidWorkers()
        {
            if (TryGetComponent(out WorkerKeeper workerKeeper))
            {
                // Gather all possible workers
                workerKeeper.GatherValidWorkers();
                workerKeeper.SetWorkerGoalHandleBackboard(GetComponent<BackBoardWorkerBrain>());
            }
        }

        void SetupHealthWorkerUI(SubWindowManager manager) {
            manager.StartSubWindow.SetTitle("Ambulance Personnel");
            AddOnNext2DRepClickButton(manager, "Investigate Patient", OnNextClick_Investigate, 
                DescriptorUtility.GetRepresentKey(RepresentType.Person, FactionType.Civil));
            AddOnClickThisButton(manager, "Find Backboard", OnNextClick_SpawnBackboard);
        }



        private void SetupFireUI(SubWindowManager manager) {
            manager.StartSubWindow.SetTitle("Fire Personnel");
            
            AddOnNext2DRepClickButton(manager, "Fast Release Patient", OnNextClick_FastReleasePatient,
                DescriptorUtility.GetRepresentKey(RepresentType.Person, FactionType.Civil));
        }


        private void SetupPoliceUI(SubWindowManager manager)
        {
            manager.StartSubWindow.SetTitle("Police Personnel");
            
            AddOnClickThisButton(manager, "Find Helicopter Landing", OnClickButton_FindLandingForHelicopter);
        }
        
        private void SetupPatientUI(SubWindowManager manager, PatientWorkerBrain patientWorkerBrain){
            manager.StartSubWindow.SetTitle("Patient");

            string ambulanceRepresentKey =
                DescriptorUtility.GetRepresentKey(RepresentType.Person, FactionType.Ambulance);
            
            AddOnNext2DRepClickButton(manager, "Hold Open Airways", StartGoal<HoldOpenAirWaysGoal>,
                ambulanceRepresentKey);
            
            // AddOnNext2DRepClickButton(manager, "Investigate Patient", OnNextClick_Investigate); HEALTH
            // AddOnClickThisButton(manager, "Do Fast Release", () => { }); FIRE
            AddOnNext2DRepClickButton(manager, "Give Oxygen", StartGoal<GiveOxygenGoal>,
                ambulanceRepresentKey);
            AddOnNext2DRepClickButton(manager, "Start HLR", StartGoal<GiveHLRGoal>,
                ambulanceRepresentKey);
            AddOnNext2DRepClickButton(manager, "Apply Neckbrace", StartGoal<ApplyNeckBraceGoal>,
                ambulanceRepresentKey);
            AddOnClickThisButton(manager, "Invite To Exit Vehicle", patientWorkerBrain.TryExitVehicle);
        }
        
        private void SetupPlayerUI(SubWindowManager manager)
        {
            manager.StartSubWindow.SetTitle("Player");
            AddOnClickThisButton(manager, "Stop", () =>
            {
                Stop();
                // GetComponent<AgentBehaviour>().SetGoal(null, true);
                // GetComponent<WorkerMoveBehaviour>().OnGoalCompleted(null);
                Debug.Log("Tried to Stop Action");
            });
            
        }
        
        private void SetupBackBoardUI(SubWindowManager manager)
        {
            manager.StartSubWindow.SetTitle("BackBoard");
            
            AddOnClickThisButton(manager, "Gather Valid Workers", GatherValidWorkers);
            AddOnNext2DRepClickButton(manager, "Deliver Patient to Stretcher", BackBoard_DeliverPatientToStretcher,
                DescriptorUtility.GetRepresentKey(RepresentType.Person, FactionType.Civil));
            
            AddOnClickThisButton(manager, "Toggle Back Board Mode", ToggleBackBoardMode);
            AddOnClickThisButton(manager, "ReleaseWorkers", ReleaseAllWorkersSpray);
        }


        private void SetupStretcherUI(SubWindowManager manager)
        {
            manager.StartSubWindow.SetTitle("Stretcher");
            
            
            AddOnClickThisButton(manager, "Gather Valid Workers", GatherValidWorkers);
            AddOnClickThisButton(manager, "Deliver Patient to Ambulance", Stretcher_DeliverToAmbulance);

            AddOnClickThisButton(manager, "ReleaseWorkers", ReleaseAllWorkersSpray);
        }

        private void Stretcher_DeliverToAmbulance()
        {
            var stretcherWorkerBrain = GetComponent<StretcherWorkerBrain>();
            
            if ( stretcherWorkerBrain == null)
                return;
            
            Stop();
            stretcherWorkerBrain.Agent.SetGoal<DeliverPatientToAmbulanceGoal>(true);
        }


        private bool StartGoal<T>(Represent2D rep2D) where T : GoalBase{
            HealthWorkerBrain healthWorker = rep2D.GetComponent<HealthWorkerBrain>();
            PatientWorkerBrain patientWorker = GetComponent<PatientWorkerBrain>();
            PlayerWorkerBrain playerWorker = rep2D.GetComponent<PlayerWorkerBrain>();
            
            // logic to start the transition
            if (patientWorker == null || (patientWorker == null && healthWorker == null))
            {
                Debug.Log($"One of the agents is null health is null : {healthWorker == null}  patient is null : {patientWorker == null}");
                return false;
            }
            
            Stop();
            if (healthWorker != null)
            {
                healthWorker.Agent.SetGoal<T>(true);
                healthWorker.SetPatientTarget(patientWorker);
            }

            if (playerWorker != null)
            {
                playerWorker.Agent.SetGoal<T>(true);
                playerWorker.SetTarget(patientWorker);
            }
            
            return true;
        }
        

        // Event listeners

        bool OnNextClick_Investigate(Represent2D represent2D) {
            if (TryGetComponent(out HealthWorkerBrain healthWorker) &&
                represent2D.TryGetComponent(out PatientWorkerBrain patientWorker))
            {
                healthWorker.Investigate(patientWorker);
                return true;
            }
        
            Representation2DManager.SetHelperText("Target Clicked is not a Patient!");
            
            return false;
        }

        bool OnNextClick_WalkToPatient(Represent2D represent2D) {
            GetComponent<AgentBehaviour>().SetGoal<WalkToGoal>(false);
            
            if (NavMesh.SamplePosition(represent2D.transform.position, out NavMeshHit hit, 100f, NavMesh.AllAreas))
            {
                FindObjectOfType<SnowXRGoapInjector>().Position = hit.position;
                GetComponent<AgentBehaviour>().EndAction();
                return true;
            }
            
            
            return false;
        }
        private static bool OnNextClick_FastReleasePatient(Represent2D represent2D) {
            // is valid?
            if (!represent2D.TryGetComponent(out PatientWorkerBrain patientWorkerBrain)) {
                return false;
            }
            
            // get car VTS
            if (patientWorkerBrain.inCarTransform == null)
            {
                Representation2DManager.SetHelperText("Patient does not need a fast release");
                return false;
                
            }
            
            VirtualTransforms vts = patientWorkerBrain.inCarTransform.GetComponent<VirtualTransforms>();
            
            List<WorkerBrain> brains = WorkerKeeper.FindValidWorkers(4, 0, represent2D.transform.position, typeof(FireWorkerBrain));
            
            
            
            int i = 0;
            
            foreach (WorkerBrain brain in brains) {
                var targetBehaviour = brain.GetComponent<TargetBehaviour>();
                
                // Setting targets
                targetBehaviour.vts = vts;
                targetBehaviour.vtsIndex = i;
                targetBehaviour.patient = patientWorkerBrain;
                
                // Goal
                Stop(brain.Agent);
                brain.Agent.SetGoal(null, true);
                brain.Agent.SetGoal<FastRealeaseGoal>(true);
                i++;
            }

            
            return true;
        }

        void OnClickButton_FindLandingForHelicopter()
        {
            Stop();
            GetComponent<AgentBehaviour>().SetGoal<WalkToGoal>(false);
            
            if (NavMesh.SamplePosition(new Vector3(18, 2, 8), out NavMeshHit hit, 100f, NavMesh.AllAreas))
            {
                FindObjectOfType<SnowXRGoapInjector>().Position = hit.position;
                GetComponent<AgentBehaviour>().EndAction();
            }
        }
        private void ToggleBackBoardMode()
        {
            WorkerBrain brain = GetComponent<WorkerBrain>();
            Rigidbody rb = GetComponent<Rigidbody>();
            Represent2D represent2D = GetComponent<Represent2D>();
            bool goapMode = !brain.NavMeshAgent.enabled; // not enabled, then goapMode is true

            Stop();

            rb.isKinematic = goapMode;
            brain.NavMeshAgent.enabled = goapMode;
            // represent2D.enabled = goapMode;


        }
        private void OnNextClick_SpawnBackboard()
        {
            GameObject backBoardGameObject = Addressables.InstantiateAsync("Workers/BackBoardWorker").WaitForCompletion();
            backBoardGameObject.transform.position = transform.position + transform.forward * 0.9f;
            backBoardGameObject.transform.rotation = transform.rotation;
            
        }

        private void ReleaseAllWorkersSpray()
        {
            transform.GetComponent<WorkerKeeper>().MoveWorkersToPositionsSpray(transform.position, transform.forward, transform);
            transform.GetComponent<WorkerKeeper>().ReleaseAllWorkers();
        }
    }
}