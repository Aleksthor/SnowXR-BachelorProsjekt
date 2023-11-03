using AI.NewGOAP.ActionInterfaces;
using CrashKonijn.Goap.Behaviours;
using CrashKonijn.Goap.Classes;
using CrashKonijn.Goap.Enums;
using CrashKonijn.Goap.Interfaces;
using Snow.Utility;
using SnowXR.Data;
using UnityEngine;
using UnityEngine.AI;

namespace SnowXR
{
    public class LoadPatientToBackBoardAction : ActionBase<LoadPatientToBackBoardAction.Data>, IActionPlaysAnimation
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
            if (data.timer > 0f)
            {
                return ActionRunState.Continue;
            }
            
            PatientWorkerBrain patientWorkerBrain = (data.Target as TransformTarget).Transform.GetComponent<PatientWorkerBrain>();
            BackBoardWorkerBrain backBoardWorkerBrain = agent.GetComponent<BackBoardWorkerBrain>();
            Transform patientSlot = backBoardWorkerBrain.transform.Find("Slots").Find("PatientSlot");
            if (patientSlot == null)
            {
                Debug.LogError("NOT FOUNT");
            }
            
            patientWorkerBrain.GetComponent<NavMeshAgent>().enabled = false;
            
            
            patientWorkerBrain.transform.SetParent(patientSlot);
            patientWorkerBrain.transform.localRotation = Quaternion.identity;
            patientWorkerBrain.transform.localPosition = Vector3.zero;
            
            patientWorkerBrain.ComplexWorldState.Add<OnBackBoard>();
            patientWorkerBrain.ComplexWorldState.Remove<StuckInCar>();
            return ActionRunState.Stop;
        }

        public override void End(IMonoAgent agent, Data data)
        {
        }

        public string AnimationClipName => "Fumble";
    }
}