using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using BNG;

namespace SnowXR.MassInjury
{
    public class BandPlacement : MonoBehaviour
    {
        private Transform nextParent;
        private GrabbableUnityEvents events;
        [SerializeField] private Zone zone;
        private Grabbable grabbable;

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
        
        public void OnPickup()
        {
            List<GameObject> patients = SpawnManager.instance.GetPatients();

            foreach (var patient in patients)
            {
                BleedingInjury injury = patient.GetComponent<BleedingInjury>();
                
                MassInjuryPatient p = patient.GetComponent<MassInjuryPatient>();
                BandSockets
                    bandSockets = p.GetMesh().GetComponent<BandSockets>();
                
                bandSockets.SetHoldingBand(true, transform);
            }
        }
        public void OnDrop()
        {
            List<GameObject> patients = SpawnManager.instance.GetPatients();

            foreach (var patient in patients)
            {
                BandSockets
                    bandSockets = patient.GetComponent<MassInjuryPatient>().GetMesh().GetComponent<BandSockets>();
                
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
    }
}
