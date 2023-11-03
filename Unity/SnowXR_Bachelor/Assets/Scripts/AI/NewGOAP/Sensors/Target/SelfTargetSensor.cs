using CrashKonijn.Goap.Classes;
using CrashKonijn.Goap.Interfaces;
using CrashKonijn.Goap.Sensors;

namespace SnowXR.Target {
    // Simply returns self, this is used for actions that simply does a thing wherever the Worker is
    public class SelfTargetSensor : LocalTargetSensorBase {
        public override void Created() {
        }

        public override void Update() {
        }

        public override ITarget Sense(IMonoAgent agent, IComponentReference references) {
            return new TransformTarget(agent.transform);
        }
    }
}