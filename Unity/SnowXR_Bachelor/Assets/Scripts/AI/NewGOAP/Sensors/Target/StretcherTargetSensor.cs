using CrashKonijn.Goap.Classes;
using CrashKonijn.Goap.Interfaces;
using CrashKonijn.Goap.Sensors;

namespace SnowXR.Target {
    public class StretcherTargetSensor : LocalTargetSensorBase {
        public override void Created() {
        }

        public override void Update() {
        }

        public override ITarget Sense(IMonoAgent agent, IComponentReference references) {
            var strecher = agent.GetComponent<TargetBehaviour>().strecher;
            if (strecher == null)
            {
                return null;
            }
            return new TransformTarget(strecher.transform);
        }
    }
}