using System.Collections.Generic;
using System.Linq;
using AI.NewGOAP;
using CrashKonijn.Goap.Enums;
using KBCore.Refs;
using Snow.Utility;
using UnityEngine;
using UnityEngine.Serialization;

namespace SnowXR
{
    [RequireComponent(typeof(TargetBehaviour), typeof(VirtualTransforms), typeof(WorkerKeeper))]
    public class StretcherWorkerBrain : WorkerBrain
    {
        [SerializeField, Self()] public TargetBehaviour targetBehaviour;
        [SerializeField, Self()] private VirtualTransforms virtualTransforms;
        [SerializeField, Self()] public WorkerKeeper workerKeeper;
        
        public void GatherValidWorkers()
        {
            List<WorkerBrain> potentialWorkers = FindObjectsOfType<WorkerBrain>().ToList();

            // Filter valid worker brains
            potentialWorkers.RemoveAll(brain => {
                if (brain.GetType() != typeof(HealthWorkerBrain))
                {
                    return true;
                }
                if (brain.Agent.State != AgentState.NoAction)
                    return true;
                return false;
            });

            // If we cant find enough workers, bail
            int currentWorkers = workerKeeper.Count;
            int newWorkersToGather = 3 - currentWorkers;
            if (potentialWorkers.Count < newWorkersToGather)
                return;
            if (newWorkersToGather <= 0)
                return;

            potentialWorkers.Sort((b1, b2) =>
            {
                float distance1 = Vector3.Distance(b1.transform.position, transform.position);
                float distance2 = Vector3.Distance(b2.transform.position, transform.position);
                if (distance1 < distance2)
                    return -1;
                if (distance1 > distance2)
                    return 1;
                return 0;
            });

            workerKeeper.workerBrains = potentialWorkers.GetRange(0, newWorkersToGather);
        }
        

    }
}