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

        private void Awake()
        {
            band = GetComponent<Grabbable>();
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

                GetComponent<Grabbable>().enabled = false;
                GetComponent<Rigidbody>().isKinematic = true;
                GetComponent<Rigidbody>().useGravity = false;
                GetComponent<GrabbableRingHelper>().enabled = false;
                GetComponent<BoxCollider>().enabled = false;
                
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
                Debug.Log("Ready");
            }
        }
        private void OnTriggerExit(Collider other)
        {
            if (other == currentCollission)
            {
                currentCollission = null;
                Debug.Log("NotReady");
            }
        }
    }
}
