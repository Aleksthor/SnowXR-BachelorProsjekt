using AI.NewGOAP.CustomITargets;
using CrashKonijn.Goap.Interfaces;
using CrashKonijn.Goap.Sensors;

namespace SnowXR.Target
{
    public class FastReleaseTargetSensor : LocalTargetSensorBase
    {
        public override void Created()
        {
        }

        public override void Update()
        {
        }

        public override ITarget Sense(IMonoAgent agent, IComponentReference references)
        {
            var targetBehaviour = agent.GetComponent<TargetBehaviour>();

            if (targetBehaviour.vts != null && targetBehaviour.vtsIndex != -1)
            {
                VirtualTransformTarget target = new VirtualTransformTarget(targetBehaviour.vts, targetBehaviour.vtsIndex);
                return target;
            }

            return null;
        }
    }
}