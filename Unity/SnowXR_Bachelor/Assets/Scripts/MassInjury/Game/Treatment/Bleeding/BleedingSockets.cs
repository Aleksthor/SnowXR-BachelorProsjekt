using System.Collections;
using System.Collections.Generic;
using System.Numerics;
using UnityEngine;
using UnityEngine.Rendering.Universal;

namespace SnowXR.MassInjury
{
    public class BleedingSockets : MonoBehaviour
    {
        [Header("Bleeding Parents")]
        [SerializeField] public Transform headBleedingParent;
        [SerializeField] public Transform neckBleedingParent;
        [SerializeField] public Transform leftArmBleedingParent;
        [SerializeField] public Transform rightArmBleedingParent;
        [SerializeField] public Transform torsoBleedingParent;
        [SerializeField] public Transform leftThighBleedingParent;
        [SerializeField] public Transform rightThighBleedingParent;
        [SerializeField] public Transform leftLegBleedingParent;
        [SerializeField] public Transform rightLegBleedingParent;

        [Header("Decal Parents")]
        [SerializeField] public Transform headDecalParent;
        [SerializeField] public Transform neckDecalParent;
        [SerializeField] public Transform leftArmDecalParent;
        [SerializeField] public Transform rightArmDecalParent;
        [SerializeField] public Transform torsoDecalParent;
        [SerializeField] public Transform leftThighDecalParent;
        [SerializeField] public Transform rightThighDecalParent;
        [SerializeField] public Transform leftLegDecalParent;
        [SerializeField] public Transform rightLegDecalParent;

        [Header("Breath Parents")]
        [SerializeField] public Transform breathParent;

        [Header("Particle Effects for spawning")]
        [SerializeField] public GameObject minimalBleedingParticles;
        [SerializeField] public GameObject moderateBleedingParticles;
        [SerializeField] public GameObject severeBleedingParticles;

        [Header("Decal Materials")]
        [SerializeField] public List<Material> minimalDecals;
        [SerializeField] public List<Material> moderateDecals;
        [SerializeField] public List<Material> severeDecals;

        [Header("TreatmentParents")]
        [SerializeField] public Transform openAirways;
        [SerializeField] public Transform recoverPose;

        [Header("Pulse Parents")]
        [SerializeField] private Transform neckPulse;
        [SerializeField] private Transform rightArmPulse;
        [SerializeField] private Transform leftArmPulse;

        // Cache
        private BleedingInjury injury;
        private GameObject spawnedParticles;
        private Comparative side = Comparative.None;
        private BleedingArea area = BleedingArea.None;


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

            headBleedingParent.gameObject.SetActive(false);
            neckBleedingParent.gameObject.SetActive(false);
            leftArmBleedingParent.gameObject.SetActive(false);
            rightArmBleedingParent.gameObject.SetActive(false);
            torsoBleedingParent.gameObject.SetActive(false);
            leftThighBleedingParent.gameObject.SetActive(false);
            rightThighBleedingParent.gameObject.SetActive(false);
            leftLegBleedingParent.gameObject.SetActive(false);
            rightLegBleedingParent.gameObject.SetActive(false);

            openAirways.gameObject.SetActive(false);
            recoverPose.gameObject.SetActive(false);
        }

        private void Start()
        {
            injury = transform.parent.GetComponent<BleedingInjury>();
            neckPulse.GetComponent<PulseCollider>().Setup(injury);
            rightArmPulse.GetComponent<PulseCollider>().Setup(injury);
            leftArmPulse.GetComponent<PulseCollider>().Setup(injury);
            
            // Spawn Particles
            switch (injury.GetBleedingArea())
            {
                case 1:
                    switch (injury.GetBleedingSeverity())
                    {
                        case 1:
                            spawnedParticles = Instantiate(minimalBleedingParticles, headBleedingParent);
                            headDecalParent.GetComponentInChildren<DecalProjector>().material = minimalDecals[Random.Range(0, minimalDecals.Count)];
                            break;
                        case 2:
                            spawnedParticles = Instantiate(moderateBleedingParticles, headBleedingParent);
                            headDecalParent.GetComponentInChildren<DecalProjector>().material = moderateDecals[Random.Range(0, moderateDecals.Count)];
                            break;
                        case 3:
                            spawnedParticles = Instantiate(severeBleedingParticles, headBleedingParent);
                            headDecalParent.GetComponentInChildren<DecalProjector>().material = severeDecals[Random.Range(0, severeDecals.Count)];
                            break;
                        default:
                            break;
                    }
                    headBleedingParent.gameObject.SetActive(true);
                    headBleedingParent.GetComponent<SphereCollider>().enabled = true;
                    headDecalParent.gameObject.SetActive(true);
                    break;
                case 2:
                    switch (injury.GetBleedingSeverity())
                    {
                        case 1:
                            spawnedParticles = Instantiate(minimalBleedingParticles, neckBleedingParent);
                            neckDecalParent.GetComponentInChildren<DecalProjector>().material = minimalDecals[Random.Range(0, minimalDecals.Count)];
                            break;
                        case 2:
                            spawnedParticles = Instantiate(moderateBleedingParticles, neckBleedingParent);
                            neckDecalParent.GetComponentInChildren<DecalProjector>().material = moderateDecals[Random.Range(0, moderateDecals.Count)];
                            break;
                        case 3:
                            spawnedParticles = Instantiate(severeBleedingParticles, neckBleedingParent);
                            neckDecalParent.GetComponentInChildren<DecalProjector>().material = severeDecals[Random.Range(0, severeDecals.Count)];
                            break;
                        default:
                            break;
                    }
                    neckBleedingParent.gameObject.SetActive(true);
                    neckBleedingParent.GetComponent<SphereCollider>().enabled = true;
                    neckDecalParent.gameObject.SetActive(true);
                    break;
                case 3:
                    switch (injury.GetBleedingSeverity())
                    {
                        case 1:
                            spawnedParticles = Instantiate(minimalBleedingParticles, injury.Side() == Comparative.Left ? leftArmBleedingParent : rightArmBleedingParent);
                            if (injury.Side() == Comparative.Left)
                            {
                                leftArmDecalParent.GetComponentInChildren<DecalProjector>().material = minimalDecals[Random.Range(0, minimalDecals.Count)];
                            }
                            else
                            {
                                rightArmDecalParent.GetComponentInChildren<DecalProjector>().material = minimalDecals[Random.Range(0, minimalDecals.Count)];
                            }
                            break;
                        case 2:
                            spawnedParticles = Instantiate(moderateBleedingParticles, injury.Side() == Comparative.Left ? leftArmBleedingParent : rightArmBleedingParent);
                            if (injury.Side() == Comparative.Left)
                            {
                                leftArmDecalParent.GetComponentInChildren<DecalProjector>().material = moderateDecals[Random.Range(0, moderateDecals.Count)];
                            }
                            else
                            {
                                rightArmDecalParent.GetComponentInChildren<DecalProjector>().material = moderateDecals[Random.Range(0, moderateDecals.Count)];
                            }
                            break;
                        case 3:
                            spawnedParticles = Instantiate(severeBleedingParticles, injury.Side() == Comparative.Left ? leftArmBleedingParent : rightArmBleedingParent);
                            if (injury.Side() == Comparative.Left)
                            {
                                leftArmDecalParent.GetComponentInChildren<DecalProjector>().material = severeDecals[Random.Range(0, severeDecals.Count)];
                            }
                            else
                            {
                                rightArmDecalParent.GetComponentInChildren<DecalProjector>().material = severeDecals[Random.Range(0, severeDecals.Count)];
                            }
                            break;
                        default:
                            break;
                    }

                    if (injury.Side() == Comparative.Left)
                    {
                        leftArmBleedingParent.gameObject.SetActive(true);
                        leftArmBleedingParent.GetComponent<SphereCollider>().enabled = true;
                        leftArmDecalParent.gameObject.SetActive(true);
                    }
                    else
                    {
                        rightArmBleedingParent.gameObject.SetActive(true);
                        rightArmBleedingParent.GetComponent<SphereCollider>().enabled = true;
                        rightArmDecalParent.gameObject.SetActive(true);
                    }
                    break;
                case 4:
                    switch (injury.GetBleedingSeverity())
                    {
                        case 1:
                            spawnedParticles = Instantiate(minimalBleedingParticles, torsoBleedingParent);
                            torsoDecalParent.GetComponentInChildren<DecalProjector>().material = minimalDecals[Random.Range(0, minimalDecals.Count)];                          
                            break;
                        case 2:
                            spawnedParticles = Instantiate(moderateBleedingParticles, torsoBleedingParent);
                            torsoDecalParent.GetComponentInChildren<DecalProjector>().material = moderateDecals[Random.Range(0, moderateDecals.Count)];
                            break;
                        case 3:
                            spawnedParticles = Instantiate(severeBleedingParticles, torsoBleedingParent);
                            torsoDecalParent.GetComponentInChildren<DecalProjector>().material = severeDecals[Random.Range(0, severeDecals.Count)];
                            break;
                        default:
                            break;
                    }
                    torsoBleedingParent.gameObject.SetActive(true);
                    torsoBleedingParent.GetComponent<SphereCollider>().enabled = true;
                    torsoDecalParent.gameObject.SetActive(true);
                    break;
                case 5:
                    switch (injury.GetBleedingSeverity())
                    {
                        case 1:
                            spawnedParticles = Instantiate(minimalBleedingParticles, injury.Side() == Comparative.Left ? leftThighBleedingParent : rightThighBleedingParent);
                            if (injury.Side() == Comparative.Left)
                            {
                                leftThighDecalParent.GetComponentInChildren<DecalProjector>().material = minimalDecals[Random.Range(0, minimalDecals.Count)];
                            }
                            else
                            {
                                rightThighDecalParent.GetComponentInChildren<DecalProjector>().material = minimalDecals[Random.Range(0, minimalDecals.Count)];
                            }
                            break;
                        case 2:
                            spawnedParticles = Instantiate(moderateBleedingParticles, injury.Side() == Comparative.Left ? leftThighBleedingParent : rightThighBleedingParent);
                            if (injury.Side() == Comparative.Left)
                            {
                                leftThighDecalParent.GetComponentInChildren<DecalProjector>().material = moderateDecals[Random.Range(0, moderateDecals.Count)];
                            }
                            else
                            {
                                rightThighDecalParent.GetComponentInChildren<DecalProjector>().material = moderateDecals[Random.Range(0, moderateDecals.Count)];
                            }
                            break;
                        case 3:
                            spawnedParticles = Instantiate(severeBleedingParticles, injury.Side() == Comparative.Left ? leftThighBleedingParent : rightThighBleedingParent);
                            if (injury.Side() == Comparative.Left)
                            {
                                leftThighDecalParent.GetComponentInChildren<DecalProjector>().material = severeDecals[Random.Range(0, severeDecals.Count)];
                            }
                            else
                            {
                                rightThighDecalParent.GetComponentInChildren<DecalProjector>().material = severeDecals[Random.Range(0, severeDecals.Count)];
                            }
                            break;
                        default:
                            break;
                    }
                    if (injury.Side() == Comparative.Left)
                    {
                        leftThighBleedingParent.gameObject.SetActive(true);
                        leftThighBleedingParent.GetComponent<SphereCollider>().enabled = true;
                        leftThighDecalParent.gameObject.SetActive(true);
                    }
                    else
                    {
                        rightThighBleedingParent.gameObject.SetActive(true);
                        rightThighBleedingParent.GetComponent<SphereCollider>().enabled = true;
                        rightThighDecalParent.gameObject.SetActive(true);
                    }
                    break;
                case 6:
                    switch (injury.GetBleedingSeverity())
                    {
                        case 1:
                            spawnedParticles = Instantiate(minimalBleedingParticles, injury.Side() == Comparative.Left ? leftLegBleedingParent : rightLegBleedingParent);
                            if (injury.Side() == Comparative.Left)
                            {
                                leftLegDecalParent.GetComponentInChildren<DecalProjector>().material = minimalDecals[Random.Range(0, minimalDecals.Count)];
                            }
                            else
                            {
                                rightLegDecalParent.GetComponentInChildren<DecalProjector>().material = minimalDecals[Random.Range(0, minimalDecals.Count)];
                            }
                            break;
                        case 2:
                            spawnedParticles =  Instantiate(moderateBleedingParticles, injury.Side() == Comparative.Left ? leftLegBleedingParent : rightLegBleedingParent);
                            if (injury.Side() == Comparative.Left)
                            {
                                leftLegDecalParent.GetComponentInChildren<DecalProjector>().material = moderateDecals[Random.Range(0, moderateDecals.Count)];
                            }
                            else
                            {
                                rightLegDecalParent.GetComponentInChildren<DecalProjector>().material = moderateDecals[Random.Range(0, moderateDecals.Count)];
                            }
                            break;
                        case 3:
                            spawnedParticles = Instantiate(severeBleedingParticles, injury.Side() == Comparative.Left ? leftLegBleedingParent : rightLegBleedingParent);
                            if (injury.Side() == Comparative.Left)
                            {
                                leftLegDecalParent.GetComponentInChildren<DecalProjector>().material = severeDecals[Random.Range(0, severeDecals.Count)];
                            }
                            else
                            {
                                rightLegDecalParent.GetComponentInChildren<DecalProjector>().material = severeDecals[Random.Range(0, severeDecals.Count)];
                            }
                            break;
                        default:
                            break;
                    }
                    if (injury.Side() == Comparative.Left)
                    {
                        leftLegBleedingParent.gameObject.SetActive(true);
                        leftLegBleedingParent.GetComponent<SphereCollider>().enabled = true;
                        leftLegDecalParent.gameObject.SetActive(true);
                    }
                    else
                    {
                        rightLegBleedingParent.gameObject.SetActive(true);
                        rightLegBleedingParent.GetComponent<SphereCollider>().enabled = true;
                        rightLegDecalParent.gameObject.SetActive(true);
                    }
                    break;
                default:
                    break;
            }

            // Remove particles if dead
            if (injury.Dead())
            {
                openAirways.gameObject.SetActive(false);
                recoverPose.gameObject.SetActive(false);
                RemoveBloodParticles();
                return;
            }

            // Setup Open Airways
            if (injury.CanOpenAirways() && !injury.RecievedOpenAirways())
            {
                openAirways.gameObject.SetActive(true);
            }
            else
            {
                openAirways.gameObject.SetActive(false);
            }

            // Setup RecoveryPose
            if (injury.NeedRecoveryPose() && !injury.RecievedRecoveryPose())
            {
                recoverPose.gameObject.SetActive(true);
            }
            else
            {
                recoverPose.gameObject.SetActive(false);
            }
            
        }

        #region Setup
        public void SetupSideLease()
        {
            recoverPose.gameObject.SetActive(true);
        }
        #endregion

        #region Getters
        public BleedingInjury GetInjury()
        {
            return injury;
        }

        public GameObject GetBloodParticles()
        {
            return spawnedParticles;
        }
        #endregion

        #region Utility
        public void RemoveBloodParticles()
        {
            if (!ReferenceEquals(spawnedParticles, null))
            {
                Destroy(spawnedParticles);
                headBleedingParent.GetComponent<SphereCollider>().enabled = false;
                foreach(Transform child in headBleedingParent)
                {
                    Destroy(child.gameObject);
                }
                neckBleedingParent.GetComponent<SphereCollider>().enabled = false;
                foreach (Transform child in neckBleedingParent)
                {
                    Destroy(child.gameObject);
                }
                leftArmBleedingParent.GetComponent<SphereCollider>().enabled = false;
                foreach (Transform child in leftArmBleedingParent)
                {
                    Destroy(child.gameObject);
                }
                rightArmBleedingParent.GetComponent<SphereCollider>().enabled = false;
                foreach (Transform child in rightArmBleedingParent)
                {
                    Destroy(child.gameObject);
                }
                torsoBleedingParent.GetComponent<SphereCollider>().enabled = false;
                foreach (Transform child in torsoBleedingParent)
                {
                    Destroy(child.gameObject);
                }
                leftThighBleedingParent.GetComponent<SphereCollider>().enabled = false;
                foreach (Transform child in leftThighBleedingParent)
                {
                    Destroy(child.gameObject);
                }
                rightThighBleedingParent.GetComponent<SphereCollider>().enabled = false;
                foreach (Transform child in rightThighBleedingParent)
                {
                    Destroy(child.gameObject);
                }
                leftLegBleedingParent.GetComponent<SphereCollider>().enabled = false;
                foreach (Transform child in leftLegBleedingParent)
                {
                    Destroy(child.gameObject);
                }
                rightLegBleedingParent.GetComponent<SphereCollider>().enabled = false;
                foreach (Transform child in rightLegBleedingParent)
                {
                    Destroy(child.gameObject);
                }
            }
                
        }
        #endregion

    }
}
