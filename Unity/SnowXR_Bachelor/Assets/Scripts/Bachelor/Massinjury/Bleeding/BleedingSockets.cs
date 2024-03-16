using System;
using System.Collections;
using System.Collections.Generic;
using System.Numerics;
using UnityEngine;
using Vector3 = UnityEngine.Vector3;

namespace SnowXR.MassInjury
{
    public class BleedingSockets : MonoBehaviour
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
        
        [SerializeField] public Transform headDecalParent;
        [SerializeField] public Transform neckDecalParent;
        [SerializeField] public Transform leftArmDecalParent;
        [SerializeField] public Transform rightArmDecalParent;
        [SerializeField] public Transform torsoDecalParent;
        [SerializeField] public Transform leftThighDecalParent;
        [SerializeField] public Transform rightThighDecalParent;
        [SerializeField] public Transform leftLegDecalParent;
        [SerializeField] public Transform rightLegDecalParent;

        [SerializeField] public Transform breathParent;
        
        [SerializeField] public GameObject minimalBleedingParticles;
        [SerializeField] public GameObject moderateBleedingParticles;
        [SerializeField] public GameObject severeBleedingParticles;

        private BleedingInjury injury;
        
        [SerializeField] public Transform openAirways;

        private GameObject spawnedParticles;
        private Comparative side = Comparative.None;
        private BleedingArea area = BleedingArea.None;
        
        
        [SerializeField] private Transform neckPulse;
        [SerializeField] private Transform rightArmPulse;
        [SerializeField] private Transform leftArmPulse;

        private void Awake()
        {
            headDecalParent.gameObject.SetActive(false);
            neckDecalParent.gameObject.SetActive(false);
            leftArmDecalParent.gameObject.SetActive(false);
            rightArmDecalParent.gameObject.SetActive(false);
            torsoDecalParent.gameObject.SetActive(false);
            leftThighDecalParent.gameObject.SetActive(false);
            rightThighDecalParent.gameObject.SetActive(false);
            leftLegDecalParent.gameObject.SetActive(false);
            rightLegDecalParent.gameObject.SetActive(false);
            
            openAirways.gameObject.SetActive(true);
        }

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
                    headBleedingParent.GetComponent<SphereCollider>().enabled = true;
                    headDecalParent.gameObject.SetActive(true);
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
                    neckBleedingParent.GetComponent<SphereCollider>().enabled = true;
                    neckDecalParent.gameObject.SetActive(true);
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

                    if (injury.Side() == Comparative.Left)
                    {
                        leftArmBleedingParent.GetComponent<SphereCollider>().enabled = true;
                        leftArmDecalParent.gameObject.SetActive(true);
                    }
                    else
                    {
                        rightArmBleedingParent.GetComponent<SphereCollider>().enabled = true;
                        rightArmDecalParent.gameObject.SetActive(true);
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
                    torsoBleedingParent.GetComponent<SphereCollider>().enabled = true;
                    torsoDecalParent.gameObject.SetActive(true);
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
                    if (injury.Side() == Comparative.Left)
                    {
                        leftThighBleedingParent.GetComponent<SphereCollider>().enabled = true;
                        leftThighDecalParent.gameObject.SetActive(true);
                    }
                    else
                    {
                        rightThighBleedingParent.GetComponent<SphereCollider>().enabled = true;
                        rightThighDecalParent.gameObject.SetActive(true);
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
                    if (injury.Side() == Comparative.Left)
                    {
                        leftLegBleedingParent.GetComponent<SphereCollider>().enabled = true;
                        leftLegDecalParent.gameObject.SetActive(true);
                    }
                    else
                    {
                        rightLegBleedingParent.GetComponent<SphereCollider>().enabled = true;
                        rightLegDecalParent.gameObject.SetActive(true);
                    }
                    break;
                default:
                    break;
            }
        }

        private void Update()
        {
            if (!injury.Concious() && injury.BreathStatus() == BreathingStatus.ClosedAirway && !injury.Dead())
            {
                openAirways.gameObject.SetActive(true);
            }
            else
            {
                openAirways.gameObject.SetActive(false);
            }
        }

        public BleedingInjury GetInjury()
        {
            return injury;
        }


        public void RemoveBloodParticles()
        {
            if (!ReferenceEquals(spawnedParticles, null))
            {
                Destroy(spawnedParticles);
                headBleedingParent.GetComponent<SphereCollider>().enabled = false;
                neckBleedingParent.GetComponent<SphereCollider>().enabled = false;
                leftArmBleedingParent.GetComponent<SphereCollider>().enabled = false;
                rightArmBleedingParent.GetComponent<SphereCollider>().enabled = false;
                torsoBleedingParent.GetComponent<SphereCollider>().enabled = false;
                leftThighBleedingParent.GetComponent<SphereCollider>().enabled = false;
                rightThighBleedingParent.GetComponent<SphereCollider>().enabled = false;
                leftLegBleedingParent.GetComponent<SphereCollider>().enabled = false;
                rightLegBleedingParent.GetComponent<SphereCollider>().enabled = false;
            }
                
        }
    }
}
