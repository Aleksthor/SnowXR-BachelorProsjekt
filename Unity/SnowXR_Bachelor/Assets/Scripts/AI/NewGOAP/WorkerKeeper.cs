using System;
using System.Collections.Generic;
using System.Linq;
using CrashKonijn.Goap.Enums;
using Snow.Utility;
using SnowXR;
using SnowXR.Goals;
using UnityEngine;

namespace AI.NewGOAP
{
    public class WorkerKeeper : MonoBehaviour
    {
        public List <WorkerBrain> workerBrains = new List<WorkerBrain>();
        
        public int Count => workerBrains.Count;
        
        public void SetWorkerGoalHandleBackboard(BackBoardWorkerBrain backboardWorkerBrain)
        {
            for (int i = 0; i < workerBrains.Count; i++)
            {
                workerBrains[i].Agent.SetGoal<HandleBackBoardGoal>(true);
                workerBrains[i].GetComponent<TargetBehaviour>().backBoard = backboardWorkerBrain;
            }
        }
        
        public void SetWorkerGoalHandleStretcher(StretcherWorkerBrain stretcherWorkerBrain)
        {
            for (int i = 0; i < workerBrains.Count; i++)
            {
                workerBrains[i].Agent.SetGoal<HandleStretcherGoal>(true);
                workerBrains[i].GetComponent<TargetBehaviour>().strecher = stretcherWorkerBrain;
            }
        }
        
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
            int currentWorkers = Count;
            int newWorkersToGather = 2 - currentWorkers;
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

            workerBrains.AddRange(potentialWorkers.GetRange(0, newWorkersToGather));
        }


        public static List<WorkerBrain> FindValidWorkers(int targetWorkers, int currentWorkers, Vector3 distancePosition, params Type[] includeTypes) {
            List<WorkerBrain> potentialWorkers = FindObjectsOfType<WorkerBrain>().ToList();

            // Filter valid worker brains
            potentialWorkers.RemoveAll(brain => {
                bool remove = true; 
                foreach (var includeType in includeTypes) {
                    if (brain.GetType() == includeType) {
                        remove = false;
                        break;
                    }
                }
                if (remove) 
                    return true;
                
                
                if (brain.Agent.State != AgentState.NoAction)
                    return true;
                return false;
            });

            // If we cant find enough workers, bail
            int newWorkersToGather = targetWorkers - currentWorkers;
            if (potentialWorkers.Count < newWorkersToGather) // if there are not enough workers
                return new List<WorkerBrain>();
            if (newWorkersToGather <= 0) // if we alleready have enough workers
                return new List<WorkerBrain>();
            
            // Find closest workers
            var query = potentialWorkers.OrderBy((b1) => Vector3.Distance(b1.transform.position, distancePosition));
            return query.Take(3).ToList();
        }
        
        public Vector3 GetWorkerPosition(WorkerBrain requestingBrain)
        {
            for (var index = 0; index < workerBrains.Count; index++)
            {
                var brain = workerBrains[index];
                
                if (brain == requestingBrain)
                {
                    if (TryGetComponent(out VirtualTransforms vts))
                    {
                        return index < vts.Count ?  vts.GetWorldPosition(index) : transform.position;
                    }
                }
            }

            return transform.position;
        }
        
        public void ReleaseAllWorkers()
        {
            foreach (var workerBrain in workerBrains)
            {
                workerBrain.Agent.SetGoal(null, true);
            }
            workerBrains.Clear();
        }
        
        public void MoveWorkersToPositionsSpray(Vector3 position, Vector3 direction, Transform transform)
        {

            for (int i = 0; i < workerBrains.Count; i++)
            {
                float x = Mathf.Cos(Mathf.PI * i / workerBrains.Count);
                float z = -Mathf.Sin(Mathf.PI  * i / workerBrains.Count);
                Vector3 pos = new Vector3(x, 0, z) * 3f;
                pos = transform.TransformPoint(pos);
                workerBrains[i].transform.position = pos;
                // todo use goap
                // workerBrains[i].MoveTo(pos);
            }
            
        }
        
    }

}