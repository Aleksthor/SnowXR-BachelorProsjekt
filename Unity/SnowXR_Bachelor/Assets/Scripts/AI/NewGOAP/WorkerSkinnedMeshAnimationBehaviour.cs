using System;
using System.Collections.Generic;
using AI;
using AI.NewGOAP.ActionInterfaces;
using KBCore.Refs;
//using Unity.Android.Gradle;
using UnityEngine;
using UnityEngine.AI;

namespace SnowXR
{
    [DisallowMultipleComponent]
    [RequireComponent(typeof(WorkerBrain))]
    public class WorkerSkinnedMeshAnimationBehaviour : MonoBehaviour
    {
        [SerializeField, Child()] private Animator _animator;
        [SerializeField, Self()] WorkerBrain _workerBrain;
        [SerializeField, Self()] private NavMeshAgent _navMeshAgent;
        private Vector3 _posLastFrame;

        [SerializeField] public List<WorkerAnimationLookupScriptableObject> lookups;

        private bool isInRange = false;

        private Dictionary<string, AnimationClip> _dictionary = new Dictionary<string, AnimationClip>();
        private void Start()
        {
            foreach (var lookup in lookups)
            {
                foreach (var clipTuple in lookup.animationClips)
                {
                    _dictionary.Add(clipTuple.name, clipTuple.clip);
                }
            }

            _workerBrain.Agent.Events.OnTargetOutOfRange += (x) =>
            {
                isInRange = false;
            };
            _workerBrain.Agent.Events.OnTargetInRange += (x) =>
            {
                isInRange = true;
                //Logging.LogWarning($"HAHA! logging");
                string currentActionName = _workerBrain.Agent.CurrentAction.GetType().Name;
                //Logging.LogInfo(currentActionName);
                if (_dictionary.ContainsKey(currentActionName))
                {
                    //Logging.LogWarning("found matching animation");
                    AnimationClip clip = _dictionary[currentActionName];
                    _animator.Play(clip.name, 0, 0f);
                }
            };
        }

        private void Update()
        {
            float distance = Vector3.Distance(_posLastFrame, transform.position);
            float velocity = distance / Time.deltaTime;
            
            
            if (_workerBrain.Agent.CurrentActionIs<FollowMoveableObjectAction>())
            {
                _animator.SetFloat("Move", velocity, 0.1f, Time.deltaTime);
            }
            else
            {
                _animator.SetFloat("Move", _navMeshAgent.velocity.magnitude, 0.1f, Time.deltaTime);
            }

            if (_workerBrain.Agent.CurrentAction is IActionPlaysAnimation action 
                && isInRange)
            {
                _animator.Play(action.AnimationClipName);
                _animator.SetBool("ShouldExitCurrentAction", false);
            }
            else
            {
                _animator.SetBool("ShouldExitCurrentAction", true);
            }
            
            
            _posLastFrame = transform.position;
        }

#if UNITY_EDITOR
        private void OnValidate()
        {
            this.ValidateRefs();
        }
#endif
    }
}