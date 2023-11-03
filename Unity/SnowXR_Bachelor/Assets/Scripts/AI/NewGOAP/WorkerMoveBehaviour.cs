using System;
using CrashKonijn.Goap.Behaviours;
using CrashKonijn.Goap.Interfaces;
using KBCore.Refs;
using UnityEngine;
using UnityEngine.AI;

namespace SnowXR
{
    [RequireComponent(typeof(NavMeshAgent))]
    [DisallowMultipleComponent]
    public class WorkerMoveBehaviour : MonoBehaviour
    {
        // References
        [SerializeField, Self()] private AgentBehaviour agent;
        [SerializeField, Self()] private NavMeshAgent navMeshAgent;
        
        // State
        private ITarget currentTarget;
        [SerializeField]private bool shouldMode;

        // private void Awake() {
        //     this.agent = this.GetComponent<AgentBehaviour>();
        // }

        private void OnEnable() {
            agent.Events.OnTargetInRange += OnTargetInRange;
            agent.Events.OnTargetChanged += OnTargetChanged;
            agent.Events.OnTargetOutOfRange += OnTargetOutOfRange;
            agent.Events.OnGoalCompleted += OnGoalCompleted;
            
            
            
            // agent.Events.OnMove += target => { Debug.Log("OnMove");};
            // agent.Events.OnActionStart += target => { Debug.Log("OnActionStart"); };
            agent.Events.OnActionStop += target =>
            {
                // Debug.Log("OnActionStop");
                bool idle = agent.CurrentGoal == null;
                if (idle) 
                {
                    shouldMode = false;
                    if (navMeshAgent.isOnNavMesh) 
                        navMeshAgent.isStopped = true;
                    
                }
            };
            // agent.Events.OnGoalStart += target => {  Debug.Log("OnGoalStart");};
            // agent.Events.OnNoActionFound+= target => {  Debug.Log("OnNoActionFound");};
            
        }


        private void OnDisable() {
            agent.Events.OnTargetInRange -= OnTargetInRange;
            agent.Events.OnTargetChanged -= OnTargetChanged;
            agent.Events.OnTargetOutOfRange -= OnTargetOutOfRange;
            agent.Events.OnGoalCompleted -= OnGoalCompleted;
        }
        
        private void OnTargetInRange(ITarget target) {
            shouldMode = false;
        }
        private void OnTargetChanged(ITarget target, bool inrange) {
            currentTarget = target;
            shouldMode = !inrange;
        }

        private void OnTargetOutOfRange(ITarget target) {
            shouldMode = true;
        }

        private void Update() {
            if (!this.shouldMode) 
                return;

            if (currentTarget == null) 
                return;

            if (navMeshAgent.enabled == false)
                return;

            if (Vector3.Distance(navMeshAgent.destination, currentTarget.Position) > 0.2f)
            {
                navMeshAgent.isStopped = false;
                navMeshAgent.SetDestination(currentTarget.Position);
            }
        }
        public void OnGoalCompleted(IGoalBase goal)
        {
            shouldMode = false;
            if (navMeshAgent.isOnNavMesh) {
                navMeshAgent.isStopped = true;
            }
            currentTarget = null;
        }
        
#if UNITY_EDITOR
        private void OnValidate()
        {
            this.ValidateRefs();
        }
#endif
    }
}