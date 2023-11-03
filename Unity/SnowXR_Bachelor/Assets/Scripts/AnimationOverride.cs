using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace SnowXR.Sim
{
    [DefaultExecutionOrder(4)]
    public class AnimationOverride : MonoBehaviour
    {
        private Animator _anim;
        public AnimationClip overrideClip;
        
        // Start is called before the first frame update
        [ContextMenu("SetState")]
        void Start()
        {
            _anim = GetComponent<Animator>();
            _anim.Play(overrideClip.name, 0);
        }
    }
}
