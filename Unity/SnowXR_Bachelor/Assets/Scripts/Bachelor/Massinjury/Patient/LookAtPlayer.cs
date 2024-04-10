using System;
using System.Collections;
using System.Collections.Generic;
using MassInjury.Person;
using UnityEngine;

namespace SnowXR.MassInjury
{
    [RequireComponent(typeof(PatientAnimationController), typeof(BleedingInjury))]
    public class LookAtPlayer : MonoBehaviour
    {
        [SerializeField] private Transform neck;

        private Transform playerTransform;

        private BleedingInjury bleedingInjury;

        private Quaternion cachedQuaternion;
        
        // Start is called before the first frame update
        void Start()
        {
            GameObject mesh = GetComponent<GenderComponent>().GetMesh();
            neck = mesh.transform.Find("skeleton").Find("root").Find("cog_jnt").Find("pelvis_jnt")
                .Find("spine_01_jnt").Find("spine_02_jnt").Find("spine_03_jnt").Find("neck_jnt");

            playerTransform = GameObject.Find("XR Rig Advanced").transform.Find("PlayerController");
            bleedingInjury = GetComponent<BleedingInjury>();
            cachedQuaternion = Quaternion.identity;
        }

        // Update is called once per frame
        void LateUpdate()
        {
            if (!bleedingInjury.Concious()) return;
            Vector3 distance = playerTransform.position - transform.position;
            if (distance.sqrMagnitude < 9f)
            {
                
                float angle = Vector3.Dot(neck.transform.right, distance.normalized) > 0f ?
                    Vector3.Angle(neck.transform.forward, distance.normalized) :
                    Vector3.Angle(neck.transform.forward, distance.normalized) * -1f;

                if (cachedQuaternion == Quaternion.identity)
                {
                    neck.localRotation = Quaternion.Lerp(neck.rotation, Quaternion.Euler(15f, Mathf.Clamp(angle, -70f, 70f), 0f),
                        Time.deltaTime);
                }
                else
                {
                    neck.localRotation = Quaternion.Lerp(cachedQuaternion, Quaternion.Euler(15f, Mathf.Clamp(angle, -70f, 70f), 0f),
                        Time.deltaTime);
                }
                var rotation = neck.localRotation;
                cachedQuaternion = new Quaternion(rotation.x, rotation.y,rotation.z,rotation.w);
            }
            else
            {
                if (cachedQuaternion == Quaternion.identity)
                {
                    neck.localRotation = Quaternion.Lerp(neck.rotation, Quaternion.Euler(15f, Mathf.Clamp(0f, -70f, 70f), 0f),
                        Time.deltaTime);
                }
                else
                {
                    neck.localRotation = Quaternion.Lerp(cachedQuaternion, Quaternion.Euler(15f, Mathf.Clamp(0f, -70f, 70f), 0f),
                        Time.deltaTime);
                }
                var rotation = neck.localRotation;
                cachedQuaternion = new Quaternion(rotation.x, rotation.y,rotation.z,rotation.w);
            }
        }
    }
}
