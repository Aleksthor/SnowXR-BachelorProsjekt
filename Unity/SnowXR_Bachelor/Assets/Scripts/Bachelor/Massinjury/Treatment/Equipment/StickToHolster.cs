using System.Collections;
using System.Collections.Generic;
using BNG;
using UnityEngine;

namespace SnowXR.MassInjury
{
    public class StickToHolster : MonoBehaviour
    {
        private Grabbable grabbable;
        [SerializeField] private SnapZone holster;
        // Start is called before the first frame update
        void Awake()
        {
            grabbable = GetComponent<Grabbable>();
        }

        // Update is called once per frame
        void Update()
        {

            if (!ReferenceEquals(holster.HeldItem, grabbable) && !grabbable.BeingHeld)
            {
                holster.GrabGrabbable(grabbable);
            }
        }
    }
}
