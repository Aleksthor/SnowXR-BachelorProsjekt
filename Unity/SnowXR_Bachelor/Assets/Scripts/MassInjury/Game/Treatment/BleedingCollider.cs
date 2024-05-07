using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace SnowXR.MassInjury
{
    public class BleedingCollider : MonoBehaviour
    {
        [SerializeField] private BleedingSockets sockets;

        public BleedingSockets GetSockets()
        {
            return sockets;
        }
    }
}
