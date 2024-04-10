using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

namespace MassInjury.Goap
{
    [System.Serializable]
    public abstract class GoapAction
    {
        protected string actionName = "Action";
        protected float cost = 1f;

        protected GameObject target;
        protected Vector3 targetPos;
        protected string targetTag = "";
        protected float duration = 0f;
        
        protected NavMeshAgent agent;
        
        protected Dictionary<string, int> preConditions;
        protected Dictionary<string, int> afterEffects;

        protected WorldStates beliefes;
        protected GoapInventory inventory;

        protected bool running = false;

        public GoapAction()
        {
            preConditions = new Dictionary<string, int>();
            afterEffects = new Dictionary<string, int>();
            targetPos = new Vector3();
        }
        
        public bool IsAchievable()
        {
            return true;
        }
        
        public bool IsAchievableGiven(Dictionary<string, int> conditions)
        {
            foreach (var p in preConditions)
            {
                if (!conditions.ContainsKey(p.Key))
                {
                    return false;
                }
            }

            return true;
        }
        
        public abstract bool PrePerform();
        public abstract bool PostPerform();

        public string ActionName
        {
            get => actionName;
            set => actionName = value;
        }
        public float Cost
        {
            get => cost;
            set => cost = value;
        }
        public GameObject Target
        {
            get => target;
            set => target = value;
        }
        public Vector3 TargetPos
        {
            get => targetPos;
            set => targetPos = value;
        }
        public string TargetTag
        {
            get => targetTag;
            set => targetTag = value;
        }
        public float Duration
        {
            get => duration;
            set => duration = value;
        }
        public NavMeshAgent Agent
        {
            get => agent;
            set => agent = value;
        }
        public Dictionary<string, int> PreConditions
        {
            get => preConditions;
            set => preConditions = value;
        }
        public Dictionary<string, int> AfterEffects
        {
            get => afterEffects;
            set => afterEffects = value;
        }
        public WorldStates Beliefes
        {
            get => beliefes;
            set => beliefes = value;
        }
        public GoapInventory Inventory
        {
            get => inventory;
            set => inventory = value;
        }
        public bool Running
        {
            get => running;
            set => running = value;
        }
    }
}
