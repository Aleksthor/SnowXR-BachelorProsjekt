using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace SnowXR.MassInjury
{
    public class BandSpawner : MonoBehaviour
    {
        [SerializeField] private Transform bandParent;
        [SerializeField] private GameObject greenBand;
        [SerializeField] private GameObject yellowBand;
        [SerializeField] private GameObject redBand;
        [SerializeField] private GameObject blackBand;

        private void Awake()
        {
            SpawnNewBand();
        }

        private void Update()
        {
            if (bandParent.childCount != 4)
            {
                SpawnNewBand();
            }

            foreach (Transform b in bandParent.transform)
            {
                BandPlacement bp = b.GetComponent<BandPlacement>();
                if (bp.Removed() && !bp.Grabbing())
                {
                    bp.transform.SetParent(null);
                    bp.GetComponent<Rigidbody>().isKinematic = false;
                }
            }
        }

        private void SpawnNewBand()
        {
            if (ReferenceEquals(null, bandParent.Find("GreenBand(Clone)")))
            {
                GameObject go = Instantiate(greenBand, bandParent);
                go.transform.localPosition = new Vector3(0.02f, 0, 0);
            }
            if (ReferenceEquals(null, bandParent.Find("YellowBand(Clone)")))
            {
                GameObject go = Instantiate(yellowBand, bandParent);
                go.transform.localPosition = new Vector3(0.0066f, 0, 0);
            }
            if (ReferenceEquals(null, bandParent.Find("RedBand(Clone)")))
            {
                GameObject go = Instantiate(redBand, bandParent);
                go.transform.localPosition = new Vector3(-0.0066f, 0, 0);
            }
            if (ReferenceEquals(null, bandParent.Find("BlackBand(Clone)")))
            {
                GameObject go = Instantiate(blackBand, bandParent);
                go.transform.localPosition = new Vector3(-0.02f, 0, 0);
            }
        }
    }
}
