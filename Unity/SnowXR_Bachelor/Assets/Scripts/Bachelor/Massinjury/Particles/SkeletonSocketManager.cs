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

        private bool green = false;
        private bool lastGreen = false;

        private BleedingInjury injury;

        private GameObject spawnedParticles;
        private GameObject spawnedTourniquet;
        private Comparative side = Comparative.None;
        private BleedingArea area = BleedingArea.None;
        
        
        [SerializeField] private Transform neckPulse;
        [SerializeField] private Transform rightArmPulse;
        [SerializeField] private Transform leftArmPulse;
        

        private void Start()
        {
            injury = transform.parent.GetComponent<BleedingInjury>();
            neckPulse.GetComponent<PulseCollider>().Setup(injury);
            rightArmPulse.GetComponent<PulseCollider>().Setup(injury);
            leftArmPulse.GetComponent<PulseCollider>().Setup(injury);
            
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
                if (!ReferenceEquals(spawnedTourniquet, null))
                {
                    green = Vector3.Distance(spawnedTourniquet.transform.position, tourniquetTransform.position) < 0.2f;
                    if (green != lastGreen)
                    {
                        switch (area)
                        {
                            case BleedingArea.Arms:
                                Change(green, side == Comparative.Left ? lArmTourniquet : rArmTourniquet);
                                break;
                            case BleedingArea.Thighs:
                                Change(green, side == Comparative.Left ? lLegTourniquet : rLegTourniquet);
                                break;
                            case BleedingArea.Legs:
                                Change(green, side == Comparative.Left ? lLegTourniquet : rLegTourniquet);
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

                spawnedTourniquet = Instantiate(tourniquetPrefabGreen, checking);
                if (!ReferenceEquals(tourniquetTransform, null))
                    tourniquetTransform.GetComponent<TourniquetPlacement>().SetNextParent(checking);
            }
            else
            {
                foreach (Transform child in checking)
                {
                    Destroy(child.gameObject);
                }

                spawnedTourniquet = Instantiate(tourniquetPrefabWhite, checking);
                if (!ReferenceEquals(tourniquetTransform, null))
                    tourniquetTransform.GetComponent<TourniquetPlacement>().SetNextParent(null);
            }

            lastGreen = green;
        }


        public void RemoveBloodParticles()
        {
            Destroy(spawnedParticles);
        }
    }
}
