using System;
using System.Collections;
using System.Collections.Generic;
using System.Numerics;
using UnityEngine;
using Vector3 = UnityEngine.Vector3;

namespace SnowXR.MassInjury
{
    public class SkeletonSocketManager : MonoBehaviour
    {
        [SerializeField] public Transform headBleedingParent;
        [SerializeField] public Transform neckBleedingParent;
        [SerializeField] public Transform leftArmBleedingParent;
        [SerializeField] public Transform rightArmBleedingParent;
        [SerializeField] public Transform torsoBleedingParent;
        [SerializeField] public Transform leftThighBleedingParent;
        [SerializeField] public Transform rightThighBleedingParent;
        [SerializeField] public Transform leftLegBleedingParent;
        [SerializeField] public Transform rightLegBleedingParent;
        
        [SerializeField] public Transform leftBicepsParent;
        [SerializeField] public Transform rightBicepsParent;

        [SerializeField] public Transform breathParent;
        
        [SerializeField] public GameObject minimalBleedingParticles;
        [SerializeField] public GameObject moderateBleedingParticles;
        [SerializeField] public GameObject severeBleedingParticles;

        [SerializeField] private Transform lArmTourniquet;
        [SerializeField] private Transform rArmTourniquet;
        [SerializeField] private Transform lLegTourniquet;
        [SerializeField] private Transform rLegTourniquet;


        private bool holdingTourniquet = false;
        private Transform tourniquetTransform;
        public GameObject tourniquetPrefabWhite;
        public GameObject tourniquetPrefabGreen;

        private bool rLegGreen = false;
        private bool lLegGreen = false;
        private bool rArmGreen = false;
        private bool lArmGreen = false;

        private BleedingInjury injury;

        private GameObject spawnedParticles;
        
        private void Start()
        {
            injury = transform.parent.GetComponent<BleedingInjury>();
            switch (injury.GetBleedingArea())
            {
                case 1:
                    switch (injury.GetBleedingSeverity())
                    {
                        case 1:
                            spawnedParticles = Instantiate(minimalBleedingParticles, headBleedingParent);
                            break;
                        case 2:
                            spawnedParticles = Instantiate(moderateBleedingParticles, headBleedingParent);
                            break;
                        case 3:
                            spawnedParticles = Instantiate(severeBleedingParticles, headBleedingParent);
                            break;
                        default:
                            break;
                    }
                    break;
                case 2:
                    switch (injury.GetBleedingSeverity())
                    {
                        case 1:
                            spawnedParticles = Instantiate(minimalBleedingParticles, neckBleedingParent);
                            break;
                        case 2:
                            spawnedParticles = Instantiate(moderateBleedingParticles, neckBleedingParent);
                            break;
                        case 3:
                            spawnedParticles = Instantiate(severeBleedingParticles, neckBleedingParent);
                            break;
                        default:
                            break;
                    }
                    break;
                case 3:
                    switch (injury.GetBleedingSeverity())
                    {
                        case 1:
                            spawnedParticles = Instantiate(minimalBleedingParticles, injury.Side() == Comparative.Left ? leftArmBleedingParent : rightArmBleedingParent);
                            break;
                        case 2:
                            spawnedParticles = Instantiate(moderateBleedingParticles, injury.Side() == Comparative.Left ? leftArmBleedingParent : rightArmBleedingParent);
                            break;
                        case 3:
                            spawnedParticles = Instantiate(severeBleedingParticles, injury.Side() == Comparative.Left ? leftArmBleedingParent : rightArmBleedingParent);
                            break;
                        default:
                            break;
                    }
                    break;
                case 4:
                    switch (injury.GetBleedingSeverity())
                    {
                        case 1:
                            spawnedParticles = Instantiate(minimalBleedingParticles, torsoBleedingParent);
                            break;
                        case 2:
                            spawnedParticles = Instantiate(moderateBleedingParticles, torsoBleedingParent);
                            break;
                        case 3:
                            spawnedParticles = Instantiate(severeBleedingParticles, torsoBleedingParent);
                            break;
                        default:
                            break;
                    }
                    break;
                case 5:
                    switch (injury.GetBleedingSeverity())
                    {
                        case 1:
                            spawnedParticles = Instantiate(minimalBleedingParticles, injury.Side() == Comparative.Left ? leftThighBleedingParent : rightThighBleedingParent);
                            break;
                        case 2:
                            spawnedParticles = Instantiate(moderateBleedingParticles, injury.Side() == Comparative.Left ? leftThighBleedingParent : rightThighBleedingParent);
                            break;
                        case 3:
                            spawnedParticles = Instantiate(severeBleedingParticles, injury.Side() == Comparative.Left ? leftThighBleedingParent : rightThighBleedingParent);
                            break;
                        default:
                            break;
                    }
                    break;
                case 6:
                    switch (injury.GetBleedingSeverity())
                    {
                        case 1:
                            spawnedParticles = Instantiate(minimalBleedingParticles, injury.Side() == Comparative.Left ? leftLegBleedingParent : rightLegBleedingParent);
                            break;
                        case 2:
                            spawnedParticles =  Instantiate(moderateBleedingParticles, injury.Side() == Comparative.Left ? leftLegBleedingParent : rightLegBleedingParent);
                            break;
                        case 3:
                            spawnedParticles = Instantiate(severeBleedingParticles, injury.Side() == Comparative.Left ? leftLegBleedingParent : rightLegBleedingParent);
                            break;
                        default:
                            break;
                    }
                    break;
                default:
                    break;
            }
        }


        private void Update()
        {
            if (holdingTourniquet)
            {
                if (lArmGreen != Vector3.Distance(tourniquetTransform.position,
                        lArmTourniquet.position) < 0.1f)
                {
                    Change(!lArmGreen, lArmTourniquet);
                    lArmGreen = !lArmGreen;
                }
                if (rArmGreen != Vector3.Distance(tourniquetTransform.position,
                        rArmTourniquet.position) < 0.1f)
                {
                    Change(!rArmGreen, rArmTourniquet);
                    rArmGreen = !rArmGreen;
                }
                if (lLegGreen != Vector3.Distance(tourniquetTransform.position,
                        lLegTourniquet.position) < 0.1f)
                {
                    Change(!lLegGreen, lLegTourniquet);
                    lLegGreen = !lLegGreen;
                }
                if (rLegGreen != Vector3.Distance(tourniquetTransform.position,
                        rLegTourniquet.position) < 0.1f)
                {
                    Change(!rLegGreen, rLegTourniquet);
                    rLegGreen = !rLegGreen;
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
                        Instantiate(tourniquetPrefabWhite, side == Comparative.Left ? lArmTourniquet : rArmTourniquet);
                        break;
                    case (int)BleedingArea.Thighs:
                        Instantiate(tourniquetPrefabWhite, side == Comparative.Left ? lLegTourniquet : rLegTourniquet);
                        break;
                    case (int)BleedingArea.Legs:
                        Instantiate(tourniquetPrefabWhite, side == Comparative.Left ? lLegTourniquet : rLegTourniquet);
                        break;
                    default:
                        break;
                }
            }
            else
            {
                foreach (Transform child in lArmTourniquet)
                {
                    Destroy(child.gameObject);
                }
                foreach (Transform child in rArmTourniquet)
                {
                    Destroy(child.gameObject);
                }
                foreach (Transform child in lLegTourniquet)
                {
                    Destroy(child.gameObject);
                }
                foreach (Transform child in rLegTourniquet)
                {
                    Destroy(child.gameObject);
                }
            }
        }

        private void Change(bool check, Transform checking)
        {
            if (check)
            {
                foreach (Transform child in checking)
                {
                    Destroy(child.gameObject);
                }

                Instantiate(tourniquetPrefabGreen, checking);
                if (!ReferenceEquals(tourniquetTransform, null))
                    tourniquetTransform.GetComponent<TourniquetPlacement>().SetNextParent(checking);
            }
            else
            {
                foreach (Transform child in checking)
                {
                    Destroy(child.gameObject);
                }

                Instantiate(tourniquetPrefabWhite, checking);
                if (!ReferenceEquals(tourniquetTransform, null))
                    tourniquetTransform.GetComponent<TourniquetPlacement>().SetNextParent(null);
            }
            
        }


        public void RemoveBloodParticles()
        {
            Destroy(spawnedParticles);
        }
    }
}
