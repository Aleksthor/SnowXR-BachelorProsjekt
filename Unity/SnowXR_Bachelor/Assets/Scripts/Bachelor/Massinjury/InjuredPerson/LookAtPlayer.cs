using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace SnowXR.MassInjury
{
    [RequireComponent(typeof(MassInjuryPatient))]
    public class LookAtPlayer : MonoBehaviour
    {
        [SerializeField] private Transform neck;

        private Transform playerTransform;
        // Start is called before the first frame update
        void Start()
        {
            GameObject mesh = GetComponent<MassInjuryPatient>().GetMesh();
            neck = mesh.transform.Find("skeleton").Find("root").Find("cog_jnt").Find("pelvis_jnt")
                .Find("spine_01_jnt").Find("spine_02_jnt").Find("spine_03_jnt").Find("neck_jnt");

            playerTransform = GameObject.Find("XR Rig Advanced").transform.Find("PlayerController");
        }

        // Update is called once per frame
        void LateUpdate()
        {
            Vector3 distance = playerTransform.position - transform.position;
            if (distance.sqrMagnitude < 9f)
            {
                
                float angle = Vector3.Dot(transform.right, distance.normalized) > 0f ?
                    Vector3.Angle(transform.forward, distance.normalized) :
                    Vector3.Angle(transform.forward, distance.normalized) * -1f;
                
                neck.rotation = Quaternion.Euler(35f,Mathf.Clamp(angle, -70f, 70f) ,0f);
            }
        }
    }
}
