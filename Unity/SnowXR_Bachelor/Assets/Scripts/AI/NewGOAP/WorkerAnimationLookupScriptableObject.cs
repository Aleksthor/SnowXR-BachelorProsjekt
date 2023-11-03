using System;
using System.Collections.Generic;
using UnityEngine;

namespace AI
{
    [CreateAssetMenu(fileName = "WorkerAnimationLookup", menuName = "ScriptableObjects/WorkerAnimationLookup", order = 1)]
    public class WorkerAnimationLookupScriptableObject : ScriptableObject
    {
        [SerializeField] public List<AnimationTuple> animationClips = new List<AnimationTuple>();
    }
    
    
        
        [Serializable]
        public struct AnimationTuple
        {
            public string name;
            public AnimationClip clip;
        }
}