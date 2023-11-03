using CrashKonijn.Goap.Classes;
using CrashKonijn.Goap.Interfaces;
using CrashKonijn.Goap.Sensors;
using SnowXR;
using SnowXR.State;
using UnityEngine;

namespace AI.NewGOAP.Classes
{
    public class PatientTargetHasComplexWorldState<T> : LocalWorldSensorBase
        where T : IWorkerState
    {
        public override void Created()
        {
            
        }

        public override void Update()
        {
        }

        public override SenseValue Sense(IMonoAgent agent, IComponentReference references)
        {
            // Todo ugly, fix
            var patientTarget = agent.GetComponent<TargetBehaviour>();
            if (patientTarget == null)
            {
                Debug.LogWarning($"{agent.gameObject.name} has no PatientTargetBehaviour!");
                return 0;
            }


            if (patientTarget.patient != null)
            {
                
                bool hasT = patientTarget.patient.GetComponent<ComplexWorldStateBehaviour>().Has<T>(); 
                // Debug.Log("Sense gave : " + hasT);
                return hasT;
            }

            return 0;

        }
    }
    public class PatientTargetHasComplexWorldState<T0, T1> : LocalWorldSensorBase
        where T0 : IWorkerState 
        where T1 : IWorkerState
    {
        public override void Created()
        {
            
        }

        public override void Update()
        {
        }

        public override SenseValue Sense(IMonoAgent agent, IComponentReference references)
        {
            // Todo ugly, fix
            var patientTarget = agent.GetComponent<TargetBehaviour>();
            if (patientTarget == null)
            {
                Debug.LogWarning($"{agent.gameObject.name} has no PatientTargetBehaviour!");
                return 0;
            }


            if (patientTarget.patient != null)
            {
                ComplexWorldStateBehaviour stateBehaviour = patientTarget.GetComponent<ComplexWorldStateBehaviour>();
                bool hasT = stateBehaviour.Has<T0>() || stateBehaviour.Has<T1>(); 
                // Debug.Log("Sense gave : " + hasT);
                return hasT;
            }

            return 0;

        }
    }
}