using CrashKonijn.Goap.Classes;
using CrashKonijn.Goap.Interfaces;
using CrashKonijn.Goap.Sensors;
using SnowXR.State;
using UnityEngine;

namespace SnowXR.WordState
{
    /// <summary>
    /// -1 does not have oxygen accsess
    /// 1 has oxygen accsess
    /// </summary>
    public class PatientTargetOxygenWorldSensor : LocalWorldSensorBase
    {
        public override void Created()
        {
            
        }

        public override void Update()
        {
        }

        public override SenseValue Sense(IMonoAgent agent, IComponentReference references)
        {
            var targetBehavoiur = agent.GetComponent<TargetBehaviour>();
            if (targetBehavoiur == null) {
                Debug.LogWarning("Agnet does not have TargetBehaviour, all worker agents should have this component!");
                return 0;
            }

            if (targetBehavoiur.patient == null) {
                // Debug.LogWarning("Agent does not have patientTarget");
                return 0;
            }
            
            var complexState = targetBehavoiur.patient.GetComponent<ComplexWorldStateBehaviour>();
            if (!complexState.Has<HasClosedAirways>())
            {
                return 0;
            }
            
            // If we reach here, we do not have open airways
            
            if (!complexState.Has<HasOxygenApperatus>())
                return 1;
            
            // Does not have closed airways nor oxygen apparatus, can breate
            return 0;
        }
    }
}