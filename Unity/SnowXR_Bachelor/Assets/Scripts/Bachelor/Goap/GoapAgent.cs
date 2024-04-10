using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System.Linq;
using UnityEngine.AI;

namespace MassInjury.Goap
{
    public class SubGoal
    {
        public Dictionary<string, int> sGoals;
        public bool remove;

        public SubGoal(string goal, int cost, bool _remove)
        {
            sGoals = new Dictionary<string, int>();
            sGoals.Add(goal, cost);
            remove = _remove;
        }
    }
    
    public class GoapAgent : MonoBehaviour
    {
        public List<GoapAction> actions = new List<GoapAction>();
        public Dictionary<SubGoal, int> goals = new Dictionary<SubGoal, int>();
        public GoapInventory inventory = new GoapInventory();
        public WorldStates beliefes = new WorldStates();

        private GoapPlanner planner;
        private Queue<GoapAction> actionQueue;
        public GoapAction currentAction;
        private SubGoal currentSubGoal;

        private bool invoked = false;
        
        // Start is called before the first frame update
        protected virtual void Start()
        {
            currentAction = null;
            
        }
        
        
        void LateUpdate()
        {

            if (!ReferenceEquals(currentAction, null))
            {
                if (currentAction.Running)
                {
                    float distanceToTarget;
                    if (currentAction.TargetPos != Vector3.zero)
                    {
                        distanceToTarget =
                            Vector3.Distance(currentAction.TargetPos, transform.position);
                        if (distanceToTarget < 2f)
                        {
                            if (!invoked)
                            {
                                Invoke("CompleteAction", currentAction.Duration);
                                invoked = true;
                            }
                        }
                        
                        return;
                    }
                    
                    
                    if (ReferenceEquals(currentAction.Target, null))
                    {
                        Debug.Log("No Target!!");
                        return;
                    }

                    distanceToTarget =
                        Vector3.Distance(currentAction.Target.transform.position, transform.position);
                    if (distanceToTarget < 2f)
                    {
                        if (!invoked)
                        {
                            Invoke("CompleteAction", currentAction.Duration);
                            invoked = true;
                        }
                    }

                    return;
                }
            }



            if (planner == null || actionQueue == null)
            {
               planner = new GoapPlanner();

                var sortedGoals = from entry in goals orderby entry.Value descending select entry;
                foreach (var subGoal in sortedGoals)
                {
            
                    actionQueue = planner.Plan(actions, subGoal.Key.sGoals, beliefes);
                    if (actionQueue != null)
                    {
                        currentSubGoal = subGoal.Key;
                        break;
                   }
                }
            }

            if (!ReferenceEquals(actionQueue, null))
            {
                if (actionQueue.Count == 0)
                {
                    if (currentSubGoal.remove)
                    {
                        goals.Remove(currentSubGoal);
                    }

                    planner = null;
                }
            }

            if (!ReferenceEquals(actionQueue, null))
            {
                if (actionQueue.Count > 0)
                {
                    currentAction = actionQueue.Dequeue();
                    if (currentAction.PrePerform())
                    {
                        if (currentAction.TargetPos != Vector3.zero)
                        {
                            currentAction.Running = true;
                            currentAction.Agent.SetDestination(currentAction.TargetPos);
                            return;
                        }
                        
                        if (ReferenceEquals(currentAction.Target, null) && currentAction.TargetTag != "")
                        {
                            currentAction.Target = GameObject.FindWithTag(currentAction.TargetTag);
                        }

                        if (!ReferenceEquals(currentAction.Target, null))
                        {
                            currentAction.Running = true;
                            
                            Transform dest = currentAction.Target.transform.Find("Destination");
                            if (ReferenceEquals(dest, null))
                            {
                                dest = currentAction.Target.transform;
                            }

                            currentAction.Agent.SetDestination(dest.position);
                        }
                    }
                    else
                    {
                        actionQueue = null;
                    }
                }
            }

        }

        void CompleteAction()
        {
            if (currentAction.PostPerform())
            {
                currentAction.Running = false;
                invoked = false;
            }
        }
    }
}
