using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace SnowXR.MassInjury
{
    public class SkeletonSocketManager : MonoBehaviour
    {
        [SerializeField] public Transform headBleedingParent;
        [SerializeField] public Transform neckBleedingParent;
        [SerializeField] public Transform armBleedingParent;
        [SerializeField] public Transform torsoBleedingParent;
        [SerializeField] public Transform thighBleedingParent;
        [SerializeField] public Transform legBleedingParent;
        
        [SerializeField] public Transform leftBicepsParent;
        [SerializeField] public Transform rightBicepsParent;

        [SerializeField] public GameObject minimalBleedingParticles;
        [SerializeField] public GameObject moderateBleedingParticles;
        [SerializeField] public GameObject severeBleedingParticles;
        private void Start()
        {
            BleedingInjury injury = transform.parent.GetComponent<BleedingInjury>();
            switch (injury.GetBleedingArea())
            {
                case 1:
                    switch (injury.GetBleedingSeverity())
                    {
                        case 1:
                            Instantiate(minimalBleedingParticles, headBleedingParent);
                            break;
                        case 2:
                            Instantiate(moderateBleedingParticles, headBleedingParent);
                            break;
                        case 3:
                            Instantiate(severeBleedingParticles, headBleedingParent);
                            break;
                        default:
                            break;
                    }
                    break;
                case 2:
                    switch (injury.GetBleedingSeverity())
                    {
                        case 1:
                            Instantiate(minimalBleedingParticles, neckBleedingParent);
                            break;
                        case 2:
                            Instantiate(moderateBleedingParticles, neckBleedingParent);
                            break;
                        case 3:
                            Instantiate(severeBleedingParticles, neckBleedingParent);
                            break;
                        default:
                            break;
                    }
                    break;
                case 3:
                    switch (injury.GetBleedingSeverity())
                    {
                        case 1:
                            Instantiate(minimalBleedingParticles, armBleedingParent);
                            break;
                        case 2:
                            Instantiate(moderateBleedingParticles, armBleedingParent);
                            break;
                        case 3:
                            Instantiate(severeBleedingParticles, armBleedingParent);
                            break;
                        default:
                            break;
                    }
                    break;
                case 4:
                    switch (injury.GetBleedingSeverity())
                    {
                        case 1:
                            Instantiate(minimalBleedingParticles, torsoBleedingParent);
                            break;
                        case 2:
                            Instantiate(moderateBleedingParticles, torsoBleedingParent);
                            break;
                        case 3:
                            Instantiate(severeBleedingParticles, torsoBleedingParent);
                            break;
                        default:
                            break;
                    }
                    break;
                case 5:
                    switch (injury.GetBleedingSeverity())
                    {
                        case 1:
                            Instantiate(minimalBleedingParticles, thighBleedingParent);
                            break;
                        case 2:
                            Instantiate(moderateBleedingParticles, thighBleedingParent);
                            break;
                        case 3:
                            Instantiate(severeBleedingParticles, thighBleedingParent);
                            break;
                        default:
                            break;
                    }
                    break;
                case 6:
                    switch (injury.GetBleedingSeverity())
                    {
                        case 1:
                            Instantiate(minimalBleedingParticles, legBleedingParent);
                            break;
                        case 2:
                            Instantiate(moderateBleedingParticles, legBleedingParent);
                            break;
                        case 3:
                            Instantiate(severeBleedingParticles, legBleedingParent);
                            break;
                        default:
                            break;
                    }
                    break;
                default:
                    break;
            }
        }
    }
}
