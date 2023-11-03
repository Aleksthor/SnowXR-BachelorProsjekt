using CrashKonijn.Goap.Classes;
using CrashKonijn.Goap.Interfaces;
using CrashKonijn.Goap.Sensors;
using UnityEngine;

namespace SnowXR.WordState {
    public class HasBackboardWorldSensor : LocalWorldSensorBase {
        public override void Created() {
        }

        public override void Update() {
        }

        public override SenseValue Sense(IMonoAgent agent, IComponentReference references) {
            
            // To to have an explicit target
            if (agent.TryGetComponent(out TargetBehaviour targetBehaviour)) {
                if (targetBehaviour.backBoard != null) {
                    return 1;
                }
            }

            return 0;
        }
    }
}