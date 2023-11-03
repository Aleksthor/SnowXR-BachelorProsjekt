using CrashKonijn.Goap.Behaviours;
using SnowXR.State;
using UnityEngine;

namespace SnowXR
{
    public class OnBackBoard : WorldKeyBase, IWorkerState
    {
        public string DebugName => typeof(OnBackBoard).ToString();
        public void SelfAddedOnState(Animator animator, Transform parent)
        {
            animator.Play("MoveBlendSpace");
            animator.speed = 0f;
        }
    }
}