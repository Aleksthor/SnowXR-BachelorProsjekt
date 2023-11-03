using KBCore.Refs;
using UnityEngine;

namespace SnowXR
{
    [RequireComponent(typeof(TargetBehaviour))]
    public class PlayerWorkerBrain : WorkerBrain
    {
        [SerializeField, Self()] private TargetBehaviour targetBehaviour;

        public void SetTarget(PatientWorkerBrain patientWorkerBrain)
        {
            targetBehaviour.patient = patientWorkerBrain;
        }
        
        // TODO temp to follow player
        private void Update() {
               
        }

#if UNITY_EDITOR
        private void OnValidate()
        {
            this.ValidateRefs();
        }
#endif
    }
}