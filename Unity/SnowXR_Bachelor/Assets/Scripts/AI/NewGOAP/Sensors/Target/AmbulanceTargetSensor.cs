using CrashKonijn.Goap.Classes;
using CrashKonijn.Goap.Interfaces;
using CrashKonijn.Goap.Sensors;
using SnowXR.Injectors;

namespace SnowXR.Target
{
    public class AmbulanceTargetSensor : LocalTargetSensorBase, ISnowXRInjectable
    {
        private SnowXRGoapInjector injector = null;
        public override void Created()
        {
        }

        public override void Update() {
        }

        public override ITarget Sense(IMonoAgent agent, IComponentReference references) {
            var ambulance = agent.GetComponent<TargetBehaviour>().ambulance;
            if (ambulance == null)
            {
                return null;
            }
            return new TransformTarget(ambulance.transform);
            
            
            return injector.GetClosestAmbulanceTransformTarget(agent.transform.position);
        }

        public void Inject(SnowXRGoapInjector injector)
        {
            this.injector = injector;
        }
    }
}