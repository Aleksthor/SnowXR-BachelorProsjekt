using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace SnowXR.MassInjury
{
    public class TourniquetSockets : MonoBehaviour
    {
        [SerializeField] private Transform lArmTourniquet;
        [SerializeField] private Transform rArmTourniquet;
        [SerializeField] private Transform lLegTourniquet;
        [SerializeField] private Transform rLegTourniquet;
        
        private bool holdingTourniquet = false;
        private Transform tourniquetTransform;
        public GameObject tourniquetPrefabWhite;
        public GameObject tourniquetPrefabGreen;
        
        private bool greenTourniquet = false;
        private bool lastGreenTrouniquet = false;
        
        private BleedingInjury injury;
        
        private GameObject spawnedTourniquet;
        private Comparative side = Comparative.None;
        private BleedingArea area = BleedingArea.None;

        private void Start()
        {
            injury = transform.parent.GetComponent<BleedingInjury>();
        }

        private void Update()
        {
            if (holdingTourniquet)
            {
                if (!ReferenceEquals(spawnedTourniquet, null))
                {
                    greenTourniquet = Vector3.Distance(spawnedTourniquet.transform.position, tourniquetTransform.position) < 0.2f;
                    if (greenTourniquet != lastGreenTrouniquet)
                    {
                        switch (area)
                        {
                            case BleedingArea.Arms:
                                ChangeTourniquet(greenTourniquet, side == Comparative.Left ? lArmTourniquet : rArmTourniquet);
                                break;
                            case BleedingArea.Thighs:
                                ChangeTourniquet(greenTourniquet, side == Comparative.Left ? lLegTourniquet : rLegTourniquet);
                                break;
                            case BleedingArea.Legs:
                                ChangeTourniquet(greenTourniquet, side == Comparative.Left ? lLegTourniquet : rLegTourniquet);
                                break;
                            default:
                                break;
                        }
                    }
                }
            }
        }
        
          public void SetHoldingTourniquet(bool input, Transform tourniquet, Comparative side = Comparative.None, int area = 0)
        {
            holdingTourniquet = input;
            tourniquetTransform = tourniquet;
            if (holdingTourniquet)
            {
                switch (area)
                {
                    case (int)BleedingArea.Arms:
                        spawnedTourniquet = Instantiate(tourniquetPrefabWhite, side == Comparative.Left ? lArmTourniquet : rArmTourniquet);
                        this.side = side;
                        this.area = (BleedingArea)area;
                        break;
                    case (int)BleedingArea.Thighs:
                        spawnedTourniquet = Instantiate(tourniquetPrefabWhite, side == Comparative.Left ? lLegTourniquet : rLegTourniquet);
                        this.side = side;
                        this.area = (BleedingArea)area;
                        break;
                    case (int)BleedingArea.Legs:
                        spawnedTourniquet = Instantiate(tourniquetPrefabWhite, side == Comparative.Left ? lLegTourniquet : rLegTourniquet);
                        this.side = side;
                        this.area = (BleedingArea)area;
                        break;
                    default:
                        break;
                }
            }
            else
            {
                if (lArmTourniquet.childCount > 0)
                {
                    foreach (Transform child in lArmTourniquet)
                    {
                        Destroy(child.gameObject);
                    }
                }

                if (rArmTourniquet.childCount > 0)
                {
                    foreach (Transform child in rArmTourniquet)
                    {
                        Destroy(child.gameObject);
                    }
                }

                if (lLegTourniquet.childCount > 0)
                {
                    foreach (Transform child in lLegTourniquet)
                    {
                        Destroy(child.gameObject);
                    }
                }

                if (rLegTourniquet.childCount > 0)
                {
                    foreach (Transform child in rLegTourniquet)
                    {
                        Destroy(child.gameObject);
                    }
                }
            }
        }
          
        private void ChangeTourniquet(bool check, Transform checking)
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

                spawnedTourniquet = Instantiate(tourniquetPrefabGreen, checking);
                if (!ReferenceEquals(tourniquetTransform, null))
                    tourniquetTransform.GetComponent<TourniquetPlacement>().SetNextParent(checking);
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
                spawnedTourniquet = Instantiate(tourniquetPrefabWhite, checking);
                if (!ReferenceEquals(tourniquetTransform, null))
                    tourniquetTransform.GetComponent<TourniquetPlacement>().SetNextParent(null);
            }

            lastGreenTrouniquet = greenTourniquet;
        }
        
    }
}
