using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace SnowXR.MassInjury
{
    public class PulseCollider : MonoBehaviour
    {
        private BleedingInjury injury;

        public PulseArea area;

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
