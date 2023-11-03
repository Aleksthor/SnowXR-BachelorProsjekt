using CrashKonijn.Goap.Classes;
using CrashKonijn.Goap.Interfaces;
using CrashKonijn.Goap.Sensors;
using UnityEngine;

namespace SnowXR.WordState
{
    public class WalkToWorldSensor : LocalWorldSensorBase
    {
        public override void Created()
        {
            
        }

        public override void Update()
        {
        }

        public override SenseValue Sense(IMonoAgent agent, IComponentReference references)
        {
            Vector3 targetPos = agent.GetComponent<WorkerBrain>().moveToPostion;

            if (Vector3.Distance(targetPos, agent.transform.position) < 1)
            {
                return 1;
            }
            // }

            return 0;
        }
    }
}