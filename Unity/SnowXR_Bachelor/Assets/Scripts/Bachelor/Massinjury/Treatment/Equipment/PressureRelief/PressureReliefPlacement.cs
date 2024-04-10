using System.Collections;
using System.Collections.Generic;
using System.Linq;
using BNG;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.Serialization;

namespace SnowXR.MassInjury
{
    public class PressureReliefPlacement : MonoBehaviour
    {
        private Transform nextParent;
        [FormerlySerializedAs("tourniquetPrefabStrapStep")] public GameObject pressureReliefPrefabStrapStep;
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

                if (!injury.NeedPressureRelief()) continue;
                if (injury.RecievedPressureRelief()) continue;
                
                MassInjuryPatient p = patient.GetComponent<MassInjuryPatient>();
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
                    tourniquetSockets = patient.GetComponent<MassInjuryPatient>().GetMesh().GetComponent<PressureReliefSockets>();
                
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
