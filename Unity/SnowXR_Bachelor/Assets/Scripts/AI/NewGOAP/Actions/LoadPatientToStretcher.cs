using AI.NewGOAP;
using AI.NewGOAP.ActionInterfaces;
using CrashKonijn.Goap.Behaviours;
using CrashKonijn.Goap.Classes;
using CrashKonijn.Goap.Enums;
using CrashKonijn.Goap.Interfaces;
using Snow.Utility;
using SnowXR.Data;
using UnityEngine;

namespace SnowXR
{
    public class LoadPatientToStretcher : ActionBase<LoadPatientToStretcher.Data>, IActionPlaysAnimation
    {
        public class Data : IActionTimerData
        {
            public ITarget Target { get; set; }
            public float timer { get; set; }
        }

        public override void Created()
        {
            
        }

        public override void Start(IMonoAgent agent, Data data)
        {
            data.timer = 4f;
        }

        public override ActionRunState Perform(IMonoAgent agent, Data data, ActionContext context)
        {
            data.timer -= context.DeltaTime;
            if (data.timer > 0)
            {
                return ActionRunState.Continue;
            }
            
            BackBoardWorkerBrain backBoardBrain = agent.GetComponent<BackBoardWorkerBrain>();
            PatientWorkerBrain patientBrain = backBoardBrain.TargetBehaviour.patient;
            
            TransformTarget targetTransform = (data.Target as TransformTarget);
            StretcherWorkerBrain stretcherWorkerBrain = targetTransform.Transform.GetComponent<StretcherWorkerBrain>();
            if (targetTransform == null)
                return ActionRunState.Stop;
            
            
            // NavMesh
            backBoardBrain.NavMeshAgent.enabled = false;
            patientBrain.NavMeshAgent.enabled = false;
            
            // Patient Transform
            Transform patientSlot = targetTransform.Transform.Find("Slots").Find("PatientSlot");
                
            patientBrain.transform.parent = patientSlot;
            patientBrain.transform.localPosition = Vector3.zero;
            patientBrain.transform.localRotation = Quaternion.identity;
            
            // BackBoard Transform
            // backBoardBrain.transform.parent = targetTransform.BackboardSlotTarget;
            // backBoardBrain.transform.localPosition = new Vector3(0, 0,0.8f);
            // backBoardBrain.transform.localRotation = Quaternion.identity;
            
            
            // Disable Represent2d
            // backBoardBrain.GetComponent<GenericDescriptor>().b2DVisible  = false;
            // patientBrain.GetComponent<GenericDescriptor>().b2DVisible = false;
            
            
            // State
            patientBrain.ComplexWorldState.Add<OnStretcher>();
            patientBrain.ComplexWorldState.Remove<OnBackBoard>(); // make sure state is valid
            
            // Setup Stretcher
            stretcherWorkerBrain.targetBehaviour.patient = patientBrain;
            
            // Release workers
            Vector3 direction = (backBoardBrain.transform.position - targetTransform.Transform.position).RemoveY().normalized;
            backBoardBrain.transform.Translate(direction * 1.5f, Space.World);
            backBoardBrain.workerKeeper.MoveWorkersToPositionsSpray(agent.transform.position, -agent.transform.forward, backBoardBrain.transform);
            backBoardBrain.workerKeeper.ReleaseAllWorkers();
            
            // attach workers
            Debug.Log("SetBoa");
            WorkerKeeper stretcherWorkerKeeper = stretcherWorkerBrain.workerKeeper;
            stretcherWorkerKeeper.GatherValidWorkers();
            // stretcherWorkerKeeper.SetWorkerGoalHandleMovableObject(stretcherWorkerKeeper.transform);
            // stretcherWorkerBrain.Invoke("GatherValidWorkers", 0.2f);
            return ActionRunState.Stop;
        }

        public override void End(IMonoAgent agent, Data data)
        {
        }

        public string AnimationClipName => "Fumble";
    }
}