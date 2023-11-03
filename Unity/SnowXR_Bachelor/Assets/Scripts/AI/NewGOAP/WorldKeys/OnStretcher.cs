using CrashKonijn.Goap.Behaviours;
using SnowXR.State;
using UnityEngine;

namespace SnowXR
{
    public class OnStretcher : WorldKeyBase, IWorkerState
    {
        public string DebugName => this.GetType().ToString();

        public void SelfAddedOnState(Animator animator, Transform parent)
        {
            animator.Play("MoveBlendSpace");
            animator.speed = 0f;
        }
    }
}