using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Serialization;
using BNG;

namespace SnowXR.MassInjury
{
    public class PharyngealTubePlacement : MonoBehaviour
    {
        private Transform nextParent;
        [FormerlySerializedAs("tourniquetPrefabStrapStep")] public GameObject pharyngealTubePlaceholder;
        private GrabbableUnityEvents events;

        private void Awake()
        {
            events = GetComponent<GrabbableUnityEvents>();
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
                if (!injury.NeedPharyngealTube()) continue;
                
                if (injury.RecievedPharyngealTube()) continue;
                
                MassInjuryPatient p = patient.GetComponent<MassInjuryPatient>();
                PharyngealTubeSockets
                    pharyngealSockets = p.GetMesh().GetComponent<PharyngealTubeSockets>();
                
                pharyngealSockets.SetHoldingPharyngealTube(true, transform);
            }
        }
        public void OnDrop()
        {
            List<GameObject> patients = SpawnManager.instance.GetPatients();

            foreach (var patient in patients)
            {
                PharyngealTubeSockets
                    pharyngealSockets = patient.GetComponent<MassInjuryPatient>().GetMesh().GetComponent<PharyngealTubeSockets>();
                
                pharyngealSockets.SetHoldingPharyngealTube(false, null);
            }
            
            if (!ReferenceEquals(nextParent, null))
            {
                Instantiate(pharyngealTubePlaceholder, nextParent);
                
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
                    closest.parent.GetComponent<BleedingInjury>().SetRecievedPharyngealTube(true);
                }
                
                Destroy(gameObject);
            }
        }

        public void SetNextParent(Transform transform)
        {
            nextParent = transform;
        }
    }
}
