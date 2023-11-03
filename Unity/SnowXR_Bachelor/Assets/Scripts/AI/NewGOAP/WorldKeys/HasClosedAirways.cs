using CrashKonijn.Goap;
using CrashKonijn.Goap.Behaviours;
using SnowXR.State;
using UnityEngine;

namespace SnowXR
{
    public class HasClosedAirways : WorldKeyBase , IWorkerState
    {
        public string DebugName => typeof(HasClosedAirways).ToString();


        public void SelfAddedOnState(Animator animator, Transform parent) 
        {
            if (!parent && !parent.gameObject)
                return;

            parent.gameObject.BroadcastMessage("OpenJaw");
        }

        public void SelfRemovedFromState(Animator animator, Transform parent)
        {
            if (!parent && !parent.gameObject)
                return;

            parent.gameObject.BroadcastMessage("CloseJaw");
        }
    }
}