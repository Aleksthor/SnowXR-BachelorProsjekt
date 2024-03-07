using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace SnowXR.MassInjury
{
    public class TourniquetPlacement : MonoBehaviour
    {
        private Transform nextParent;
        public GameObject tourniquetPrefabStrapStep;
        public void OnPickup()
        {
            List<GameObject> patients = SpawnManager.instance.GetPatients();

            foreach (var patient in patients)
            {
                BleedingInjury injury = patient.GetComponent<BleedingInjury>();
                if (injury.Side() == Comparative.None)
                    continue;
                
                MassInjuryPatient p = patient.GetComponent<MassInjuryPatient>();
                SkeletonSocketManager
                skeletonSocketManager = p.GetMesh().GetComponent<SkeletonSocketManager>();
                
                skeletonSocketManager.SetHoldingTourniquet(true, transform, injury.Side(), injury.GetBleedingArea());
            }
        }
        public void OnDrop()
        {
            List<GameObject> patients = SpawnManager.instance.GetPatients();

            foreach (var patient in patients)
            {
                SkeletonSocketManager
                    skeletonSocketManager = patient.GetComponent<MassInjuryPatient>().GetMesh().GetComponent<SkeletonSocketManager>();
                
                skeletonSocketManager.SetHoldingTourniquet(false, null);
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
