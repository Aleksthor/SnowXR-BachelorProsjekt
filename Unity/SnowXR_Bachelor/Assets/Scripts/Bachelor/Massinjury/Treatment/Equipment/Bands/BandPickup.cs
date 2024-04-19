using System;
using System.Collections;
using System.Collections.Generic;
using BNG;
using UnityEngine;

namespace SnowXR.MassInjury
{
    public class BandPickup : MonoBehaviour
    {
        private Grabbable grabbable;
        private GameObject cubeMesh;
        private GameObject bandMesh;

        private bool done = false;
        
        
        // Start is called before the first frame update
        void Awake()
        {
            grabbable = GetComponent<Grabbable>();

            cubeMesh = transform.Find("Mesh").Find("Cube").gameObject;
            bandMesh = transform.Find("Mesh").Find("Band").gameObject;
        }

        private void Update()
        {
            if ((grabbable.BeingHeld || grabbable.RemoteGrabbing) && !done)
            {
                Pickup();
                done = true;
            }
        }

        // Update is called once per frame
        public void Pickup()
        {
            cubeMesh.SetActive(true);
            bandMesh.SetActive(false);
        }
    }
}
