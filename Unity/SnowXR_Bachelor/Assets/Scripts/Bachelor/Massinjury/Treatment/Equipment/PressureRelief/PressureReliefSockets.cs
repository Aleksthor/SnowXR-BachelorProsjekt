using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Serialization;

namespace SnowXR.MassInjury
{
    public class PressureReliefSockets : MonoBehaviour
    {
        [SerializeField] private Transform pressureReliefParent;
        
        private bool greenPressureRelief = false;
        private bool lastGreenPressureRelief = false;
        
        private GameObject spawnedPressureRelief;
        
        
        private bool holdingPressureRelief = false;
        private Transform pressureReliefTransform;
        [FormerlySerializedAs("pharyngealTubePrefabWhite")] public GameObject pressureReliefPrefabWhite;
        [FormerlySerializedAs("pharyngealTubePrefabGreen")] public GameObject pressureReliefPrefabGreen;


        // Update is called once per frame
        void Update()
        {
            if (holdingPressureRelief)
            {
                if (!ReferenceEquals(spawnedPressureRelief, null))
                {
                    greenPressureRelief = Vector3.Distance(spawnedPressureRelief.transform.position, pressureReliefTransform.position) < 0.2f;
                    if (greenPressureRelief != lastGreenPressureRelief)
                    {
                        ChangePressureRelief(greenPressureRelief, pressureReliefParent);
                    }
                }
            }
        }
        
                
        public void SetHoldingPressureRelief(bool input, Transform tourniquet)
        {
            holdingPressureRelief = input;
            pressureReliefTransform = tourniquet;
            if (holdingPressureRelief)
            {
                spawnedPressureRelief = Instantiate(pressureReliefPrefabWhite, pressureReliefParent);
            }
            else
            {
                if (pressureReliefParent.childCount > 0)
                {
                    foreach (Transform child in pressureReliefParent)
                    {
                        Destroy(child.gameObject);
                    }
                }
            }
        }
        
        
        private void ChangePressureRelief(bool check, Transform checking)
        {
            if (check)
            {
                if (checking.childCount > 0)
                {
                    foreach (Transform child in checking)
                    {
                        Destroy(child.gameObject);
                    } 
                }

                spawnedPressureRelief = Instantiate(pressureReliefPrefabGreen, checking);
                if (!ReferenceEquals(pressureReliefTransform, null))
                    pressureReliefTransform.GetComponent<PressureReliefPlacement>().SetNextParent(checking);
            }
            else
            {
                if (checking.childCount > 0)
                {
                    foreach (Transform child in checking)
                    {
                        Destroy(child.gameObject);
                    } 
                }

                spawnedPressureRelief = Instantiate(pressureReliefPrefabWhite, checking);
                if (!ReferenceEquals(pressureReliefTransform, null))
                    pressureReliefTransform.GetComponent<PressureReliefPlacement>().SetNextParent(null);
            }

            lastGreenPressureRelief = greenPressureRelief;
        }

        public Transform GetSocket()
        {
            return pressureReliefParent;
        }
    }
}
