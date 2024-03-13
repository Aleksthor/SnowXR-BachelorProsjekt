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

        [SerializeField] public Transform breathParent;
        
        [SerializeField] public GameObject minimalBleedingParticles;
        [SerializeField] public GameObject moderateBleedingParticles;
        [SerializeField] public GameObject severeBleedingParticles;

        private BleedingInjury injury;

        private GameObject spawnedParticles;
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
        


        public void RemoveBloodParticles()
        {
            if (!ReferenceEquals(spawnedParticles, null))
                Destroy(spawnedParticles);
        }
    }
}
