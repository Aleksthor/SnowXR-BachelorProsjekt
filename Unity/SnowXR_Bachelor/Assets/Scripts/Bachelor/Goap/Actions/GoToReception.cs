using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

namespace MassInjury.Goap
{
    public class GoToReception : GoapAction
    {
        public GoToReception(string actionName, int cost, GameObject target, Vector3 targetPos, string targetTag, float duration, NavMeshAgent agent, 
            Dictionary<string, int> preConditions, Dictionary<string, int> afterEffects, WorldStates beliefes, GoapInventory inventory)
        {
            this.actionName = actionName;
            this.cost = cost;
            this.target = target;
            this.targetPos = targetPos;
            this.targetTag = targetTag;
            this.duration = duration;
            this.agent = agent;


            this.preConditions = preConditions;
            this.afterEffects = afterEffects;

            this.beliefes = beliefes;
            this.inventory = inventory;

        }
        public override bool PrePerform()
        {
            return true;
        }

        public override bool PostPerform()
        {
            beliefes.RemoveState("goToReception");
            return true;
        }
    }
}
