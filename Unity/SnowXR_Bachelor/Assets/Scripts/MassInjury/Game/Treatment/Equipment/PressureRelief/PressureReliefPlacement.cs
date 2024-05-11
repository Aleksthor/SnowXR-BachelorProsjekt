using System.Collections;
using System.Collections.Generic;
using System.Linq;
using BNG;
using SnowXR.MassInjury.Person;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.Serialization;

namespace SnowXR.MassInjury
{
    public class PressureReliefPlacement : MonoBehaviour
    {
        [Header("Gameobjects for spawing")]
        [FormerlySerializedAs("tourniquetPrefabStrapStep")] public GameObject pressureReliefPrefabStrapStep;

        // Events
        [HideInInspector] public UnityEvent onPickup;
        [HideInInspector] public UnityEvent onPlacement;

        // Cache
        private Transform nextParent;
        private GrabbableUnityEvents events;
        private Grabbable grabbable;

        // Logic
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

                if (!injury.NeedPressureRelief()) continue;
                if (injury.RecievedPressureRelief()) continue;
                
                GenderComponent p = patient.GetComponent<GenderComponent>();
                PressureReliefSockets
                    tourniquetSockets = p.GetMesh().GetComponent<PressureReliefSockets>();
                
                tourniquetSockets.SetHoldingPressureRelief(true, transform);
            }
            
            onPickup.Invoke();
        }
        public void OnDrop()
        {
            List<GameObject> patients = GameObject.FindGameObjectsWithTag("Patient").ToList();

            foreach (var patient in patients)
            {
                PressureReliefSockets
                    tourniquetSockets = patient.GetComponent<GenderComponent>().GetMesh().GetComponent<PressureReliefSockets>();
                
                tourniquetSockets.SetHoldingPressureRelief(false, null);
            }
            
            if (!ReferenceEquals(nextParent, null))
            {
                Instantiate(pressureReliefPrefabStrapStep, nextParent);
                onPlacement.Invoke();
                Destroy(gameObject);
            }
        }

        public void SetNextParent(Transform transform)
        {
            nextParent = transform;
        }
    }
}
