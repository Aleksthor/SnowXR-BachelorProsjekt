using System;
using System.Collections;
using System.Collections.Generic;
using BNG;
using UnityEngine;

namespace SnowXR.MassInjury
{
    public class TourniquetPlacement : MonoBehaviour
    {
        private Transform nextParent;
        public GameObject tourniquetPrefabStrapStep;
        private GrabbableUnityEvents events;
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
                if (injury.Side() == Comparative.None)
                    continue;
                
                if (injury.RecievedTourniquet()) continue;
                
                MassInjuryPatient p = patient.GetComponent<MassInjuryPatient>();
                TourniquetSockets
                    tourniquetSockets = p.GetMesh().GetComponent<TourniquetSockets>();
                
                tourniquetSockets.SetHoldingTourniquet(true, transform, injury.Side(), injury.GetBleedingArea());
            }
        }
        public void OnDrop()
        {
            List<GameObject> patients = SpawnManager.instance.GetPatients();

            foreach (var patient in patients)
            {
                TourniquetSockets
                    tourniquetSockets = patient.GetComponent<MassInjuryPatient>().GetMesh().GetComponent<TourniquetSockets>();
                
                tourniquetSockets.SetHoldingTourniquet(false, null);
            }
            
            if (!ReferenceEquals(nextParent, null))
            {
                Instantiate(tourniquetPrefabStrapStep, nextParent);
                Destroy(gameObject);
            }
        }

        public void SetNextParent(Transform transform)
        {
            nextParent = transform;
        }
    }
}
