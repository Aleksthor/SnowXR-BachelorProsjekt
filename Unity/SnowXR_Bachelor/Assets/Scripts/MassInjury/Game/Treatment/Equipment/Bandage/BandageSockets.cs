using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace SnowXR.MassInjury
{
    public class BandageSockets : MonoBehaviour
    {
        // References to parents
        [SerializeField] public Transform leftArmParent;
        [SerializeField] public Transform rightArmParent;
        [SerializeField] public Transform torsoParent;
        [SerializeField] public Transform leftThighParent;
        [SerializeField] public Transform rightThighParent;
        [SerializeField] public Transform leftLegParent;
        [SerializeField] public Transform rightLegParent;

        public GameObject bandPrefabWhite;
        public GameObject bandPrefabGreen;
        public GameObject bandPrefabWhiteTorso;
        public GameObject bandPrefabGreenTorso;

        // Logic
        private bool green = false;
        private bool lastGreen = false;
        private bool holdingBandage = false;
        private bool torso = false; 

        // Cache
        private Transform bandageTransform;
        private Transform injuryTransform;
        private GameObject spawnedBandage;
        // Update is called once per frame
        void Update()
        {
            if (ReferenceEquals(injuryTransform, null)) return;

            if (holdingBandage)
            {
                if (!ReferenceEquals(spawnedBandage, null))
                {
                    if (torso)
                    {
                        green = Vector3.Distance(spawnedBandage.transform.parent.parent.position, bandageTransform.position) < 0.3f;
                        if (green != lastGreen)
                        {
                            ChangeBandage(green, injuryTransform);
                            lastGreen = green;
                        }
                    }
                    else
                    {
                        green = Vector3.Distance(spawnedBandage.transform.position, bandageTransform.position) < 0.2f;
                        if (green != lastGreen)
                        {
                            ChangeBandage(green, injuryTransform);
                            lastGreen = green;
                        }
                    }
                }
            }
            else
            {
                if (injuryTransform.childCount > 0)
                {
                    foreach (Transform child in injuryTransform)
                    {
                        if (child.name.Contains("Placed"))
                            child.gameObject.SetActive(true);
                    }
                }
            }
        }


        public void SetHoldingBandage(bool input, Transform tourniquet, BleedingInjury injury)
        {
            holdingBandage = input;
            bandageTransform = tourniquet;
            switch ((BleedingArea)injury.GetBleedingArea())
            {
                case BleedingArea.Head:
                    break;
                case BleedingArea.Neck:
                    break;
                case BleedingArea.Arms:
                    injuryTransform = injury.Side() == Comparative.Left ? leftArmParent : rightArmParent;
                    break;
                case BleedingArea.Torso:
                    injuryTransform = torsoParent;
                    torso = true;
                    break;
                case BleedingArea.Thighs:
                    injuryTransform = injury.Side() == Comparative.Left ? leftThighParent : rightThighParent;
                    break;
                case BleedingArea.Legs:
                    injuryTransform = injury.Side() == Comparative.Left ? leftLegParent : rightLegParent;
                    break;
            }

            if (holdingBandage && !ReferenceEquals(injuryTransform, null))
            {
                spawnedBandage = Instantiate(torso ? bandPrefabWhiteTorso : bandPrefabWhite, injuryTransform);
            }
            else
            {
                if (injuryTransform.childCount > 0)
                {
                    foreach (Transform child in injuryTransform)
                    {
                        if (!child.name.Contains("Placed"))
                            Destroy(child.gameObject);

                        if (child.name.Contains("Placed"))
                            child.gameObject.SetActive(false);
                    }
                }
            }

        }

        private void ChangeBandage(bool check, Transform checking)
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
                if (torso)
                {
                    spawnedBandage = Instantiate(bandPrefabGreenTorso, checking);
                    if (!ReferenceEquals(bandageTransform, null))
                        bandageTransform.GetComponent<BandagePlacement>().SetNextParent(checking, torso);
                }
                else
                {
                    spawnedBandage = Instantiate(bandPrefabGreen, checking);
                    if (!ReferenceEquals(bandageTransform, null))
                        bandageTransform.GetComponent<BandagePlacement>().SetNextParent(checking, torso);
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
                if (torso)
                {
                    spawnedBandage = Instantiate(bandPrefabWhiteTorso, checking);
                    if (!ReferenceEquals(bandageTransform, null))
                        bandageTransform.GetComponent<BandagePlacement>().SetNextParent(null, false);
                }
                else
                {
                    spawnedBandage = Instantiate(bandPrefabWhite, checking);
                    if (!ReferenceEquals(bandageTransform, null))
                        bandageTransform.GetComponent<BandagePlacement>().SetNextParent(null, false);
                }
            }
        }
    }
}
