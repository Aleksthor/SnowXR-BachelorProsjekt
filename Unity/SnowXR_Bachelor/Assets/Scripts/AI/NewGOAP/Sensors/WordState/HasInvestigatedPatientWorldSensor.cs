using System.Numerics;
using CrashKonijn.Goap;
using CrashKonijn.Goap.Classes;
using CrashKonijn.Goap.Interfaces;
using CrashKonijn.Goap.Sensors;

namespace SnowXR.WordState {
    public class HasInvestigatedPatientWorldSensor : LocalWorldSensorBase {
        public override void Created() {
            
        }

        public override void Update() {
        }

        public override SenseValue Sense(IMonoAgent agent, IComponentReference references) {
            
            var brain = agent.GetComponent<WorkerBrain>();
            
            bool hasState = brain.ComplexWorldState.Has<HasInvestigatedPatient>();
            if (hasState) {
                brain.ComplexWorldState.Remove<HasInvestigatedPatient>();
                return 1;
            }

            return 0;
        }
    }
}