using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace SnowXR.MassInjury
{
    public class PulseCollider : MonoBehaviour
    {
        [Header("Wrist/Neck")]
        public PulseArea area;

        // Cache
        private BleedingInjury injury;

        public void Setup(BleedingInjury i)
        {
            injury = i;
        }

        public BleedingInjury GetInjury()
        {
            return injury;
        }
    }

    
}
