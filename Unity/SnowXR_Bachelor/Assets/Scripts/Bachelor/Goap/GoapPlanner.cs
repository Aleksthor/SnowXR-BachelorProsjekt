using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace MassInjury.Goap
{
    public class Node
    {
        public Node parent;
        public float cost;
        public Dictionary<string, int> state;
        public GoapAction action;

        public Node(Node p, float c, Dictionary<string, int> allStates, GoapAction a)
        {
            parent = p;
            cost = c;
            state = new Dictionary<string, int>(allStates);
            action = a;
        }

        public Node(Node p, float c, Dictionary<string, int> allStates, GoapAction a,
            Dictionary<string, int> beliefStates)
        {
            parent = p;
            cost = c;
            state = new Dictionary<string, int>(allStates);
            foreach (var b in beliefStates)
            {
                if (!state.ContainsKey(b.Key))
                {
                    state.Add(b.Key, b.Value);
                }
                else
                {
                    state[b.Key] += b.Value;
                }
            }

            action = a;


        }
    }

    public class GoapPlanner
    {
        public Queue<GoapAction> Plan(List<GoapAction> actions, Dictionary<string, int> goals, WorldStates beliefes)
        {
            List<GoapAction> useableActions = new List<GoapAction>();
            foreach (var a in actions)
            {
                if (a.IsAchievable())
                {
                    useableActions.Add(a);
                }
            }

            List<Node> leaves = new List<Node>();
            Node start = new Node(null, 0, GoapWorld.Instance.GetWorld().GetStates(), null, beliefes.GetStates());

            bool success = BuildGraph(start, leaves, useableActions, goals);

            if (!success)
            {
                return null;
            }

            Node cheapest = null;

            foreach (var leaf in leaves)
            {
                if (cheapest == null)
                {
                    cheapest = leaf;
                }
                else
                {
                    if (leaf.cost < cheapest.cost)
                    {
                        cheapest = leaf;
                    }
                }
            }

            List<GoapAction> result = new List<GoapAction>();

            Node n = cheapest;
            while (n != null)
            {
                if (n.action != null)
                {
                    result.Insert(0, n.action);
                }

                n = n.parent;
            }

            Queue<GoapAction> queue = new Queue<GoapAction>();
            foreach (var a in result)
            {
                queue.Enqueue(a);
            }

            //foreach (var a in queue)
            //{
            //    Debug.Log("Action: " + a.actionName);
            //}

            return queue;
        }


        private bool BuildGraph(Node parent, List<Node> leaves, List<GoapAction> usableActions, Dictionary<string, int> goal)
        {
            bool foundPath = false;

            foreach (var a in usableActions)
            {
                if (a.IsAchievableGiven(parent.state))
                {
                    Dictionary<string, int> currentState = new Dictionary<string, int>(parent.state);
                    foreach (var e in a.AfterEffects)
                    {
                        if (!currentState.ContainsKey(e.Key))
                        {
                            currentState.Add(e.Key, e.Value);
                        }

                        Node node = new Node(parent, parent.cost + a.Cost, currentState, a);

                        if (GoalAchieved(goal, currentState))
                        {
                            leaves.Add(node);
                            foundPath = true;
                        }
                        else
                        {
                            List<GoapAction> subSet = ActionSubset(usableActions, a);
                            bool found = BuildGraph(node, leaves, subSet, goal);
                            if (found)
                            {
                                foundPath = true;
                            }
                        }
                    }

                }
                
            }

            return foundPath;
        }
        
        private bool GoalAchieved(Dictionary<string, int> goal, Dictionary<string, int> state)
        {
            foreach (var g in goal)
            {
                if (!state.ContainsKey(g.Key))
                {
                    return false;
                }
            }

            return true;
        }

        List<GoapAction> ActionSubset(List<GoapAction> actions, GoapAction removeMe)
        {
            List<GoapAction> subSet = new List<GoapAction>();
            foreach (var a in actions)
            {
                if (!a.Equals(removeMe))
                {
                    subSet.Add(a);
                }
            }

            return subSet;
        }
    }
}
