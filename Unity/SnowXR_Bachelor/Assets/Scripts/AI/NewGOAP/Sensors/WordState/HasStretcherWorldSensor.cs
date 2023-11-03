using CrashKonijn.Goap.Classes;
using CrashKonijn.Goap.Interfaces;
using CrashKonijn.Goap.Sensors;

namespace SnowXR.WordState {
    public class HasStretcherWorldSensor : LocalWorldSensorBase {
        
        public override void Created() {
        }

        public override void Update() {
        }

        public override SenseValue Sense(IMonoAgent agent, IComponentReference references) {
            
            // To to have an explicit target
            if (agent.TryGetComponent(out TargetBehaviour targetBehaviour)) {
                if (targetBehaviour.strecher != null) {
                    return 1;
                }
            }

            return 0;
        }
    }
}