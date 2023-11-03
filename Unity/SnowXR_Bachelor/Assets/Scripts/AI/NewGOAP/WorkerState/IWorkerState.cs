using System;
using UnityEngine;

namespace SnowXR.State
{
    public interface IWorkerState 
    {
        string DebugName { get; }

        public void SelfAddedOnState(Animator animator, Transform parent)
        {
            
        }
        
        public void SelfRemovedFromState(Animator animator, Transform parent) {
                   
        }
        
        public string DebugNameE() {
            return this.GetType().ToString();
        }
        // GameObject gameObject { get; }
        // bool IsHeld { get; }
        // bool IsInBox { get; }
        // bool IsClaimed { get; }

        // void Claim();
        // void Pickup(bool visible = false);
        // void Drop(bool inBox = false);
    }
}