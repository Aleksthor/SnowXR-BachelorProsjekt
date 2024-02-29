using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using BNG;

namespace SnowXR.MassInjury
{
    public class BandPlacement : MonoBehaviour
    {
        private Grabbable band;
        
        private bool beingHeld = false;
        private Collider currentCollission = null;

        [SerializeField] private Zone bandColor;
        
        private Rigidbody rigidbody;
        private GrabbableRingHelper ringHelper;
        private BoxCollider collider;
        private void Awake()
        {
            band = GetComponent<Grabbable>();
            
            rigidbody = GetComponent<Rigidbody>();
            ringHelper = GetComponent<GrabbableRingHelper>();
            collider = GetComponent<BoxCollider>();
            
            beingHeld = band.BeingHeld;
        }

        private void Update()
        {
            if (!band.BeingHeld && beingHeld)
            {
                beingHeld = false;
                Dropped();
                return;
            }

            if (band.BeingHeld && !beingHeld)
            {
                beingHeld = true;
                Pickup();
            }
        }

        private void Dropped()
        {
            if (!ReferenceEquals(currentCollission, null))
            {
                SkeletonSocketManager patientSockets =
                    currentCollission.transform.parent.GetComponentInChildren<SkeletonSocketManager>();

                if (ReferenceEquals(patientSockets, null))
                {
                    return;
                }

                Transform parent = Vector3.Distance(transform.position, patientSockets.leftBicepsParent.position) <
                                   Vector3.Distance(transform.position, patientSockets.rightBicepsParent.position)
                    ? patientSockets.leftBicepsParent
                    : patientSockets.rightBicepsParent;

                transform.parent = parent;
                transform.localPosition = Vector3.zero;

                band.enabled = false;
                rigidbody.isKinematic = true;
                rigidbody.useGravity = false;
                ringHelper.enabled = false;
                collider.enabled = false;
                
                currentCollission.transform.parent.GetComponent<BleedingInjury>().Inspect(bandColor);
                
            }
        }

        private void Pickup()
        {
            
        }

        private void OnTriggerEnter(Collider other)
        {
            if (other.CompareTag("BandReciever"))
            {
                currentCollission = other;
            }
        }
        private void OnTriggerExit(Collider other)
        {
            if (other == currentCollission)
            {
                currentCollission = null;
            }
        }
    }
}
