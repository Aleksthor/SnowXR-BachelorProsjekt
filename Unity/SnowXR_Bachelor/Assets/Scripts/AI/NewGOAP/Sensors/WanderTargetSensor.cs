using CrashKonijn.Goap.Classes;
using CrashKonijn.Goap.Interfaces;
using CrashKonijn.Goap.Sensors;
using UnityEngine;

namespace SnowXR
{
    public class WanderTargetSensor : LocalTargetSensorBase
    {
        public override void Created()
        {
        }

        public override void Update()
        {
            
        }

        public override ITarget Sense(IMonoAgent agent, IComponentReference references)
        {
            var random = GetRandomPosition(agent);
            return new PositionTarget(random);
        }

        private Vector3 GetRandomPosition(IMonoAgent agent){
            
            
            var random =  Random.insideUnitCircle * 10f;
            var position = agent.transform.position + new Vector3(random.x, 0f, random.y);

            return position;
        }
    }
}