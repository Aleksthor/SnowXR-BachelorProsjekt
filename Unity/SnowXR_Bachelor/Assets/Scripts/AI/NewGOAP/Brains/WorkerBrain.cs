using System;
using CrashKonijn.Goap.Behaviours;
using CrashKonijn.Goap.Interfaces;
using KBCore.Refs;
using SnowXR.Injectors;
using SnowXR.State;
using UnityEngine;
using UnityEngine.AI;
using UnityEngine.Serialization;

namespace SnowXR
{
    [SelectionBase]
    [RequireComponent(typeof(AgentBehaviour), typeof(ComplexWorldStateBehaviour), typeof(NavMeshAgent))]
    public class WorkerBrain : MonoBehaviour
    {
        [field: SerializeField, Self()] public AgentBehaviour Agent { get;protected set; }
        public Vector3 moveToPostion;
        [field : SerializeField, Self() ]public ComplexWorldStateBehaviour ComplexWorldState { get; protected set; }
        [field : SerializeField, Self() ]public NavMeshAgent NavMeshAgent { get; protected set; }
        
        public void MoveTo(Vector3 position)
        {
            var comp = GetComponentInChildren<Animator>();
            if (comp != null)
            {
                comp.Play("MoveBlendSpace");
            }
            Agent.SetGoal(null, true);
            Agent.SetGoal<WalkToGoal>(true);
            // GetComponent<AgentBehaviour>().SetGoal(null, false);
            if (NavMesh.SamplePosition(position, out NavMeshHit hit, 100f, NavMesh.AllAreas)) {
                moveToPostion = hit.position;
            }
        }

        private IGoalBase oldGoal;
        public void Sensee(float delay = -1f) {
            
            oldGoal = Agent.CurrentGoal;
            if (delay <= 0) {
                Sense();
            }
            else {
                Invoke("Sense", delay);
            }
        }
        
        [ContextMenu("Sense")]
        private void Sense() {
            Agent.Refresh();
        }

        public void Stop() {
            Agent.SetGoal(null, true);
        }

#if UNITY_EDITOR
        private void OnValidate()
        {
            this.ValidateRefs();
        }
#endif
    }
}