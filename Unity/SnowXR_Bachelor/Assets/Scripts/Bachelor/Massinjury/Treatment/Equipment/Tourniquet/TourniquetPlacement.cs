using System;
using System.Collections;
using System.Collections.Generic;
using BNG;
using UnityEngine;
using System.Linq;
using MassInjury.Person;
using UnityEngine.Events;
using UnityEngine.PlayerLoop;

namespace SnowXR.MassInjury
{
    public class TourniquetPlacement : MonoBehaviour
    {
        private Transform nextParent;
        public GameObject tourniquetPrefabStrapStep;
        private GrabbableUnityEvents events;
        private Grabbable grabbable;

        [HideInInspector] public UnityEvent onPickup;
        [HideInInspector] public UnityEvent onPlacement;

        private bool done = false;
        private void Awake()
        {
            events = GetComponent<GrabbableUnityEvents>();
            grabbable = GetComponent<Grabbable>();
        }

        private void Update()
        {
            if ((grabbable.RemoteGrabbing || grabbable.BeingHeld) && !done)
            {
                transform.parent = null;
                done = true;
            }
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
            
            onPickup.Invoke();
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
