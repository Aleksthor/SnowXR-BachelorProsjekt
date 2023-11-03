using AI.NewGOAP;
using CrashKonijn.Goap.Classes;
using CrashKonijn.Goap.Interfaces;
using CrashKonijn.Goap.Sensors;
using Snow.Utility;
using UnityEngine;

namespace SnowXR
{
    public class WorkerKeeperHasNumberOfWorkers : LocalWorldSensorBase
    {
        public override void Created()
        {
            
        }

        public override void Update()
        {
        }

        public override SenseValue Sense(IMonoAgent agent, IComponentReference references)
        {
            WorkerKeeper backBoardWorker = agent.GetComponent<WorkerKeeper>();


            int i = 0;
            for (int j = 0; j < backBoardWorker.workerBrains.Count; j++)
            {
                // todo this can be made cleaner / safer / less error prone
                if (Vector3.Distance(backBoardWorker.workerBrains[i].transform.position, agent.transform.position) < 3f)
                {
                    i++;
                }
            }

            return i;
        }
    }
}