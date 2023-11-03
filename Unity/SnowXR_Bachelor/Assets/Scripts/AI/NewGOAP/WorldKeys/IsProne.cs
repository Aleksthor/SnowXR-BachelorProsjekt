using CrashKonijn.Goap.Behaviours;
using CrashKonijn.Goap.Configs.Interfaces;
using SnowXR.State;
using UnityEngine;

namespace SnowXR
{
    public class IsProne : WorldKeyBase, IWorkerState
    {
        public string DebugName => typeof(IsProne).ToString();
        public void SelfAddedOnState(Animator animator, Transform parent)
        {
            
        }

        public void SelfRemovedFromState(Animator animator, Transform parent)
        {
            
        }

    }
}