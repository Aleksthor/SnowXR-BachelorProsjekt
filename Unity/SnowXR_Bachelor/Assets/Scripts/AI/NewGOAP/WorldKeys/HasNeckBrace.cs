using CrashKonijn.Goap.Behaviours;
using SnowXR.State;
using UnityEngine;

namespace SnowXR
{
    public class HasNeckBrace : WorldKeyBase, IWorkerState
    {
        public string DebugName => typeof(HasNeckBrace).ToString();


        public void SelfAddedOnState(Animator animator, Transform parent)
        {
            // Apply NeckBrace
            parent.BroadcastMessage("AttachItemGOAP", "PF_Static_Nakkekrage");
        }

        public void SelfRemovedFromState(Animator animator, Transform parent)
        {
            parent.BroadcastMessage("RemoveItemGOAP", "PF_Static_Nakkekrage");
        }
    }
}