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
        private Rigidbody rigidbody;
        private GrabbableRingHelper ringHelper;
        private BoxCollider collider;
        private GameObject cubeMesh;
        private GameObject bandMesh;
        
        // Start is called before the first frame update
        void Awake()
        {
            grabbable = GetComponent<Grabbable>();
            rigidbody = GetComponent<Rigidbody>();
            ringHelper = GetComponent<GrabbableRingHelper>();
            collider = GetComponent<BoxCollider>();

            cubeMesh = transform.Find("Mesh").Find("Cube").gameObject;
            bandMesh = transform.Find("Mesh").Find("Band").gameObject;
        }

        private void Update()
        {
            if (grabbable.BeingHeld || grabbable.RemoteGrabbing)
            {
                Pickup();
            }
        }

        // Update is called once per frame
        public void Pickup()
        {
            transform.parent = null;
            //rigidbody.isKinematic = false;
            cubeMesh.SetActive(true);
            bandMesh.SetActive(false);
        }
    }
}
