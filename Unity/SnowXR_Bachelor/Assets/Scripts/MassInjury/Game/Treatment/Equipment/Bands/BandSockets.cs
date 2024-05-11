using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace SnowXR.MassInjury
{
    public class BandSockets : MonoBehaviour
    {
        // References to parents
        [SerializeField] public Transform leftBicepsParent;
        [SerializeField] public Transform rightBicepsParent;
        
        // Gameobjects for spawing        
        private GameObject spawnedBandRight;
        private GameObject spawnedBandLeft;

        // Logic
        private bool greenLeft = false;
        private bool lastGreenLeft = false;
        private bool greenRight = false;
        private bool lastGreenRight = false;
        private bool holdingBand = false;
        
        // Cache
        private Transform bandTransform;
        public GameObject bandPrefabWhite;
        public GameObject bandPrefabGreen;
        
        // Update is called once per frame
        void Update()
        {
            if (holdingBand)
            {
                if (!ReferenceEquals(spawnedBandRight, null))
                {
                    greenRight = Vector3.Distance(spawnedBandRight.transform.position, bandTransform.position) < 0.2f;
                    if (greenRight != lastGreenRight)
                    {
                        ChangeBand(greenRight, rightBicepsParent, Comparative.Right);
                        lastGreenRight = greenRight;
                    }
                }
                if (!ReferenceEquals(spawnedBandLeft, null))
                {
                    greenLeft = Vector3.Distance(spawnedBandLeft.transform.position, bandTransform.position) < 0.2f;
                    if (greenLeft != lastGreenLeft)
                    {
                        ChangeBand(greenLeft, leftBicepsParent, Comparative.Left);
                        lastGreenLeft = greenLeft;
                    }
                }
            }
            else
            {
                if (rightBicepsParent.childCount > 0)
                {
                    foreach (Transform child in rightBicepsParent)
                    {
                        if (child.name.Contains("Placed"))
                            child.gameObject.SetActive(true);
                    }
                }
                if (leftBicepsParent.childCount > 0)
                {
                    foreach (Transform child in leftBicepsParent)
                    {
                        if (child.name.Contains("Placed"))
                            child.gameObject.SetActive(true);
                    }
                }
            }
        }
        
                
        public void SetHoldingBand(bool input, Transform tourniquet)
        {
            holdingBand = input;
            bandTransform = tourniquet;
            if (holdingBand)
            {
                spawnedBandRight = Instantiate(bandPrefabWhite, rightBicepsParent);
                spawnedBandLeft = Instantiate(bandPrefabWhite, leftBicepsParent);
            }
            else
            {
                if (rightBicepsParent.childCount > 0)
                {
                    foreach (Transform child in rightBicepsParent)
                    {
                        if (!child.name.Contains("Placed"))
                            Destroy(child.gameObject);
                        
                        if (child.name.Contains("Placed"))
                            child.gameObject.SetActive(false);
                    }
                }
                if (leftBicepsParent.childCount > 0)
                {
                    foreach (Transform child in leftBicepsParent)
                    {
                        if (!child.name.Contains("Placed"))
                            Destroy(child.gameObject);
                        
                        if (child.name.Contains("Placed"))
                            child.gameObject.SetActive(false);
                    }
                }
            }
        }
        
        
        private void ChangeBand(bool check, Transform checking, Comparative side)
        {
            if (check)
            {
                if (checking.childCount > 0)
                {
                    foreach (Transform child in checking)
                    {
                        if (!child.name.Contains("Placed"))
                            Destroy(child.gameObject);
                        
                        if (child.name.Contains("Placed"))
                            child.gameObject.SetActive(false);
                    } 
                }

                if (side == Comparative.Right)
                {
                    spawnedBandRight = Instantiate(bandPrefabGreen, checking);
                    if (!ReferenceEquals(bandTransform, null))
                        bandTransform.GetComponent<BandPlacement>().SetNextParent(checking);
                }
                else
                {
                    spawnedBandLeft = Instantiate(bandPrefabGreen, checking);
                    if (!ReferenceEquals(bandTransform, null))
                        bandTransform.GetComponent<BandPlacement>().SetNextParent(checking);
                }
            }
            else
            {
                if (checking.childCount > 0)
                {
                    foreach (Transform child in checking)
                    {
                        if (!child.name.Contains("Placed"))
                            Destroy(child.gameObject);
                        
                        if (child.name.Contains("Placed"))
                            child.gameObject.SetActive(false);
                    } 
                }

                if (side == Comparative.Right)
                {
                    spawnedBandRight = Instantiate(bandPrefabWhite, checking);
                    if (!ReferenceEquals(bandTransform, null))
                        bandTransform.GetComponent<BandPlacement>().SetNextParent(null);
                }
                else
                {
                    spawnedBandLeft = Instantiate(bandPrefabWhite, checking);
                    if (!ReferenceEquals(bandTransform, null))
                        bandTransform.GetComponent<BandPlacement>().SetNextParent(null);
                }
            }
        }

        
    }
}
