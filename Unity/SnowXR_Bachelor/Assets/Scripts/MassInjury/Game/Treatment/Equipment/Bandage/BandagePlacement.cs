using BNG;
using SnowXR.MassInjury.Person;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;
using UnityEngine.Events;

namespace SnowXR.MassInjury
{
    public class BandagePlacement : MonoBehaviour
    {
        [Header("Gameobjects for spawning")]
        [SerializeField] private GameObject smallBandage;
        [SerializeField] private GameObject torsoBandage;

        // Events
        [HideInInspector] public UnityEvent onPickup;

        // Cache
        private Transform nextParent;
        private GrabbableUnityEvents events;
        private Grabbable grabbable;

        // Logic
        private bool done = false;
        private bool torso = false;
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

        public void Update()
        {
            if (!done)
            {
                done = grabbable.BeingHeld || grabbable.RemoteGrabbing;
                if (done)
                    transform.SetParent(null);
            }
        }
        public bool Grabbing()
        {
            return grabbable.BeingHeld || grabbable.RemoteGrabbing;
        }

        public void OnPickup()
        {
            transform.localScale = Vector3.one;
            List<GameObject> patients = GameObject.FindGameObjectsWithTag("Patient").ToList();

            foreach (var patient in patients)
            {
                BleedingInjury injury = patient.GetComponent<BleedingInjury>();

                GenderComponent p = patient.GetComponent<GenderComponent>();
                BandageSockets
                    bandageSockets = p.GetMesh().GetComponent<BandageSockets>();

                bandageSockets.SetHoldingBandage(true, transform, injury);
            }

            onPickup.Invoke();
        }
        public void OnDrop()
        {

            List<GameObject> patients = GameObject.FindGameObjectsWithTag("Patient").ToList();

            foreach (var patient in patients)
            {
                BandageSockets
                    bandageSockets = patient.GetComponent<GenderComponent>().GetMesh().GetComponent<BandageSockets>();

                bandageSockets.SetHoldingBandage(false, null, patient.GetComponent<BleedingInjury>());
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

                if (torso)
                {
                    GameObject go = Instantiate(torsoBandage, nextParent);
                    go.name = "Placed Bandage";
                }
                else
                {
                    GameObject go = Instantiate(smallBandage, nextParent);
                    go.name = "Placed Bandage";
                }


                Collider[] colliders =
                    Physics.OverlapSphere(transform.position, 4f, 1 << 16);

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
                    closest.parent.GetComponent<BleedingInjury>().SetRecievedBandage(true);
                }

                Destroy(gameObject);

            }
        }

        public void SetNextParent(Transform transform, bool isTorso)
        {
            nextParent = transform;
            torso = isTorso;
        }
    }
}
