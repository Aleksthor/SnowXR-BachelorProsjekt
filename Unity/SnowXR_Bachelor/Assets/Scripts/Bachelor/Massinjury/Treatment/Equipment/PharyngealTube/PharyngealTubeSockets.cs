using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace SnowXR.MassInjury
{
    public class PharyngealTubeSockets : MonoBehaviour
    {
        [SerializeField] private Transform pharyngealTubeParent;
        
        private bool greenPharyngealTube = false;
        private bool lastGreenPharyngealTube = false;
        
        private GameObject spawnedPharyngealTube;
        
        
        private bool holdingPharyngealTube = false;
        private Transform pharyngealTubeTransform;
        public GameObject pharyngealTubePrefabWhite;
        public GameObject pharyngealTubePrefabGreen;


        // Update is called once per frame
        void Update()
        {
            if (holdingPharyngealTube)
            {
                if (!ReferenceEquals(spawnedPharyngealTube, null))
                {
                    greenPharyngealTube = Vector3.Distance(spawnedPharyngealTube.transform.position, pharyngealTubeTransform.position) < 0.2f;
                    if (greenPharyngealTube != lastGreenPharyngealTube)
                    {
                        ChangePharyngealTube(greenPharyngealTube, pharyngealTubeParent);
                    }
                }
            }
        }
        
                
        public void SetHoldingPharyngealTube(bool input, Transform tourniquet)
        {
            holdingPharyngealTube = input;
            pharyngealTubeTransform = tourniquet;
            if (holdingPharyngealTube)
            {
                spawnedPharyngealTube = Instantiate(pharyngealTubePrefabWhite, pharyngealTubeParent);
            }
            else
            {
                if (pharyngealTubeParent.childCount > 0)
                {
                    foreach (Transform child in pharyngealTubeParent)
                    {
                        Destroy(child.gameObject);
                    }
                }
            }
        }
        
        
        private void ChangePharyngealTube(bool check, Transform checking)
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

                spawnedPharyngealTube = Instantiate(pharyngealTubePrefabGreen, checking);
                if (!ReferenceEquals(pharyngealTubeTransform, null))
                    pharyngealTubeTransform.GetComponent<PharyngealTubePlacement>().SetNextParent(checking);
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

                spawnedPharyngealTube = Instantiate(pharyngealTubePrefabWhite, checking);
                if (!ReferenceEquals(pharyngealTubeTransform, null))
                    pharyngealTubeTransform.GetComponent<PharyngealTubePlacement>().SetNextParent(null);
            }

            lastGreenPharyngealTube = greenPharyngealTube;
        }

    }
}
