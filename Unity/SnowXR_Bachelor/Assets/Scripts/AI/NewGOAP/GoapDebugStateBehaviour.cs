using System;
using CrashKonijn.Goap.Behaviours;
using CrashKonijn.Goap.Classes.Validators;
using CrashKonijn.Goap.Interfaces;
using KBCore.Refs;
using UnityEditor;
using UnityEngine;

namespace SnowXR
{
    [RequireComponent(typeof(AgentBehaviour))]
    [DisallowMultipleComponent]
    public class GoapDebugStateBehaviour : MonoBehaviour
    {
        [SerializeField, Self()] private AgentBehaviour _agentBehaviour;

#if UNITY_EDITOR
        private void OnDrawGizmos()
        {
            Handles.Label(transform.position, GetText());        
        }
#endif
        private void OnDrawGizmosSelected()
        {
            if (_agentBehaviour.CurrentActionData == null)
                return;
            ITarget target = _agentBehaviour.CurrentActionData.Target;
            if (target == null)
                return;
            
            
            Gizmos.color = Color.blue;
            Gizmos.DrawWireSphere(target.Position, 1f);
        }

        string GetText()
        {
            if (_agentBehaviour.CurrentAction is null)
            {
                return "Idle";
            }
            
            return $"{_agentBehaviour.CurrentGoal.GetType().GetGenericTypeName()} \n {_agentBehaviour.CurrentAction.GetType().GetGenericTypeName()}\n {_agentBehaviour.State}";
        }
        
        
        #if UNITY_EDITOR
        private void OnValidate()
        {
            this.ValidateRefs();
        }
#endif
    }
}