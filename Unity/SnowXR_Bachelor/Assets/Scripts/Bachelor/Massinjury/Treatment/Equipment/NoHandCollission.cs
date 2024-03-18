using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace SnowXR.MassInjury
{
    [RequireComponent(typeof(Rigidbody), typeof(Collider))]
    public class NoHandCollission : MonoBehaviour
    {
        private Collider col;
        private Rigidbody rb;
        // Start is called before the first frame update
        void Awake()
        {
            col = GetComponent<Collider>();
            rb = GetComponent<Rigidbody>();
        }

        // Update is called once per frame
        void Update()
        {
            col.isTrigger = rb.isKinematic;
        }
    }
}
