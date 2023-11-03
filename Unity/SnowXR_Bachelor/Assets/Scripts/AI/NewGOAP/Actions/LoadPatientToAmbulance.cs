using AI.NewGOAP.ActionInterfaces;
using AI.NewGOAP.CustomITargets;
using CrashKonijn.Goap.Behaviours;
using CrashKonijn.Goap.Classes;
using CrashKonijn.Goap.Enums;
using CrashKonijn.Goap.Interfaces;
using SnowXR.Data;
using SnowXR.Sim.Descriptor;
using UnityEngine;

namespace SnowXR
{
    public class LoadPatientToAmbulance : ActionBase<LoadPatientToAmbulance.Data>, IActionPlaysAnimation
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
            enter = false;
            data.timer = 4f;
        }

        private bool enter = false;
        public override ActionRunState Perform(IMonoAgent agent, Data data, ActionContext context)
        {
            data.timer -= context.DeltaTime;
            if (!enter)
            {
                enter = true;
                AmbulanceTransformTarget targett = (data.Target as AmbulanceTransformTarget);
                var doorsystem = targett.BackTarget.parent.GetComponent<VehicleDoorSystem>();
                doorsystem.OpenSpecificDoor(4,5);
            }
            if (data.timer > 0)
            {
                return ActionRunState.Continue;
            }
            
            StretcherWorkerBrain stretcherBrain = agent.GetComponent<StretcherWorkerBrain>();
            PatientWorkerBrain patientBrain = stretcherBrain.targetBehaviour.patient;
            
            AmbulanceTransformTarget targetTransform = (data.Target as AmbulanceTransformTarget);

            if (targetTransform == null || /*targetTransform.jointMover == null ||*/ targetTransform.PatientSlot == null)
            {
                Debug.LogError($"One of the following is null. TargetTransforms : {targetTransform == null} jointMover : {targetTransform.jointMover == null } or PatientSlot {targetTransform.PatientSlot == null}");
                return ActionRunState.Stop;
                
            }
            
            // Release workers
            stretcherBrain.workerKeeper.MoveWorkersToPositionsSpray(agent.transform.position, -agent.transform.forward, stretcherBrain.transform);
            stretcherBrain.workerKeeper.ReleaseAllWorkers();
            
            // Delete stretcher
            GameObject.Destroy(stretcherBrain.transform.gameObject);
            
            // Reset visual Stretcher
            if (targetTransform.jointMover != null)
            {
                targetTransform.jointMover.ResetState();
            }
            
            // NavMesh
            stretcherBrain.NavMeshAgent.enabled = false;
            patientBrain.NavMeshAgent.enabled = false;
            
            // Patient Transform
            patientBrain.transform.parent = targetTransform.PatientSlot;
            patientBrain.transform.localPosition = Vector3.zero;
            patientBrain.transform.localRotation = Quaternion.identity;
            
            
            // // BackBoard Transform
            // stretcherBrain.transform.parent = targetTransform.BackboardSlotTarget;
            // stretcherBrain.transform.localPosition = new Vector3(0, 0,0.8f);
            // stretcherBrain.transform.localRotation = Quaternion.identity;
            
            
            // Disable Represent2d
            // stretcherBrain.GetComponent<GenericDescriptor>().b2DVisible  = false;
            patientBrain.GetComponent<GenericDescriptor>().b2DVisible = false;
            
            
            // State
            patientBrain.ComplexWorldState.Add<InAmbulance>();
            
            
            var doorsystem2 = targetTransform.BackTarget.parent.GetComponent<VehicleDoorSystem>();
            doorsystem2.CloseSpecificDoor(4,5);
            
            Debug.Log("Patient Delivered to ambulance!");
            
            return ActionRunState.Stop;
        }
        
        

        public override void End(IMonoAgent agent, Data data)
        {
        }

        public string AnimationClipName => "Fumble";
    }
}