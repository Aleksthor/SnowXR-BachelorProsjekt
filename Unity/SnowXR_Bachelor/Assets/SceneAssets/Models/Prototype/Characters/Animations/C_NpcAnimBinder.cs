using System;
using UnityEngine;
using UnityEngine.AI;

namespace SnowXR.Sim
{
    public class C_NpcAnimBinder : MonoBehaviour
    {
        private NavMeshAgent _agent;
        private Animator _anim;
        private static string _blendSpaceMoveParameterName = "Move";
        [SerializeField] private float animationTransitionSmoothing = 0.1f;

        private void Awake()
        {
            // _agent = GetComponent<NavMeshAgent>();
            // _anim = GetComponent<Animator>();
            // _agent.SetDestination(new Vector3(50, 0, 50));
        }
        
        private void LateUpdate()
        {
            _anim.SetFloat(_blendSpaceMoveParameterName, _agent.velocity.magnitude, animationTransitionSmoothing, Time.deltaTime);
        }
    }
}
