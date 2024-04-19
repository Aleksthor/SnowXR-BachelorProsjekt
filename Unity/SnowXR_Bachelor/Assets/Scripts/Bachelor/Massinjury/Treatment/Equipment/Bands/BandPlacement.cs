using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;
using BNG;
using MassInjury.Person;
using UnityEngine.Events;

namespace SnowXR.MassInjury
{
    public class BandPlacement : MonoBehaviour
    {
        private Transform nextParent;
        private GrabbableUnityEvents events;
        [SerializeField] private Zone zone;
        private Grabbable grabbable;
        
        [HideInInspector] public UnityEvent onPickup;

        private bool done = false;
        private void Awake()
        {
            events = GetComponent<GrabbableUnityEvents>();
            grabbable = GetComponent<Grabbable>();
        }

        private void OnDestroy()
        {
            events.onGrab.RemoveAllListeners();
            events.onRelease.RemoveAllListeners();
        }

        public bool Removed()
        {
            if (!done)
            {
                done = grabbable.BeingHeld || grabbable.RemoteGrabbing;
                if (done)
                    transform.SetParent(null);
            }
            return done;
        }
        public bool Grabbing()
        {
            return grabbable.BeingHeld || grabbable.RemoteGrabbing;
        }

        public void OnPickup()
        {

            List<GameObject> patients = GameObject.FindGameObjectsWithTag("Patient").ToList();

            foreach (var patient in patients)
            {
                BleedingInjury injury = patient.GetComponent<BleedingInjury>();
                
                GenderComponent p = patient.GetComponent<GenderComponent>();
                BandSockets
                    bandSockets = p.GetMesh().GetComponent<BandSockets>();
                
                bandSockets.SetHoldingBand(true, transform);
            }
            
            onPickup.Invoke();
        }
        public void OnDrop()
        {
            
            List<GameObject> patients = GameObject.FindGameObjectsWithTag("Patient").ToList();

            foreach (var patient in patients)
            {
                BandSockets
                    bandSockets = patient.GetComponent<GenderComponent>().GetMesh().GetComponent<BandSockets>();
                
                bandSockets.SetHoldingBand(false, null);
            }
            
            if (!ReferenceEquals(nextParent, null))
            {
                // Place the Band
                if (nextParent.childCount > 0)
                {
                    foreach (Transform child in nextParent)
                    {
                        Destroy(child.gameObject);
                    }
                }
                
                transform.parent = nextParent;
                transform.localPosition = new Vector3();
                transform.localRotation = new Quaternion();
                GetComponent<Grabbable>().enabled = false;
                GetComponent<Rigidbody>().isKinematic = true;
                
                
                Collider[] colliders =
                    Physics.OverlapSphere(transform.position, 4f, 1<<16);

                Transform closest = null;
                float best = float.MaxValue;
                foreach (var col in colliders)
                {
                    if (col.CompareTag("Agent"))
                    {
                        float compare = Vector3.Distance(transform.position, col.transform.position);
                        if (best > compare)
                        {
                            best = compare;
                            closest = col.transform;
                        }
                    }
                }

                if (!ReferenceEquals(closest, null))
                {
                    closest.parent.GetComponent<BleedingInjury>().Inspect(zone);
                }

                gameObject.name = "PlacedBand";

            }
        }

        public void SetNextParent(Transform transform)
        {
            nextParent = transform;
        }

        public Zone Zone()
        {
            return zone;
        }
    }
}
