using CrashKonijn.Goap.Classes;
using CrashKonijn.Goap.Interfaces;
using CrashKonijn.Goap.Sensors;
using SnowXR.Injectors;
using UnityEngine;

namespace SnowXR
{
    public class WalkToSnowXRSensor : LocalTargetSensorBase, ISnowXRInjectable
    {
        private SnowXRGoapInjector _injector;
        
        public override void Created()
        {
        }

        public override void Update()
        {
        }

        public override ITarget Sense(IMonoAgent agent, IComponentReference references)
        {
            // agent.GetComponent<WorkerBrain>().moveToPostion = _injector.Position;
            return new PositionTarget(agent.GetComponent<WorkerBrain>().moveToPostion);
        }

        public void Inject(SnowXRGoapInjector injector)
        {
            _injector = injector;
        }
    }
}