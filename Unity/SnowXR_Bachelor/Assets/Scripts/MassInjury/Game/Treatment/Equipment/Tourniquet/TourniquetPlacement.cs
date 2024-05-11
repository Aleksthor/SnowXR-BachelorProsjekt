using System;
using System.Collections;
using System.Collections.Generic;
using BNG;
using UnityEngine;
using System.Linq;
using SnowXR.MassInjury.Person;
using UnityEngine.Events;
using UnityEngine.PlayerLoop;

namespace SnowXR.MassInjury
{
    public class TourniquetPlacement : MonoBehaviour
    {
        [Header("Gameobjects for spawing")]
        public GameObject tourniquetPrefabStrapStep;

        // Cache
        private GrabbableUnityEvents events;
        private Transform nextParent;
        private Grabbable grabbable;

        // Events
        [HideInInspector] public UnityEvent onPickup = new UnityEvent();
        [HideInInspector] public UnityEvent onPlacement = new UnityEvent();

        // Logic
        private bool done = false;

        private void Awake()
        {
            events = GetComponent<GrabbableUnityEvents>();
            grabbable = GetComponent<Grabbable>();
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


        private void OnDestroy()
        {
            events.onGrab.RemoveAllListeners();
            events.onRelease.RemoveAllListeners();
        }

        public void OnPickup()
        {
            transform.localScale = Vector3.one;
            List<GameObject> patients = GameObject.FindGameObjectsWithTag("Patient").ToList();

            foreach (var patient in patients)
            {
                BleedingInjury injury = patient.GetComponent<BleedingInjury>();
                if (injury.Side() == Comparative.None)
                    continue;
                
                if (injury.RecievedTourniquet()) continue;
                
                GenderComponent p = patient.GetComponent<GenderComponent>();
                TourniquetSockets
                    tourniquetSockets = p.GetMesh().GetComponent<TourniquetSockets>();
                
                tourniquetSockets.SetHoldingTourniquet(true, transform, injury.Side(), injury.GetBleedingArea());
            }
            
            onPickup?.Invoke();
        }
        public void OnDrop()
        {
            List<GameObject> patients = GameObject.FindGameObjectsWithTag("Patient").ToList();

            foreach (var patient in patients)
            {
                TourniquetSockets
                    tourniquetSockets = patient.GetComponent<GenderComponent>().GetMesh().GetComponent<TourniquetSockets>();
                
                tourniquetSockets.SetHoldingTourniquet(false, null);
            }
            
            if (!ReferenceEquals(nextParent, null))
            {
                Instantiate(tourniquetPrefabStrapStep, nextParent);
                
                onPlacement?.Invoke();
                
                Destroy(gameObject);
            }
        }

        public void SetNextParent(Transform transform)
        {
            nextParent = transform;
        }
    }
}
