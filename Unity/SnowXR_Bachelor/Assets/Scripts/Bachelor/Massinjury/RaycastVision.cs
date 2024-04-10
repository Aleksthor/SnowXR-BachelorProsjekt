using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;
using MassInjury.Dialogue;

namespace SnowXR.MassInjury
{
    public class RaycastVision : MonoBehaviour
    {
        private float gracePeriod = 0f;
        private bool grace = false;

        public float graceTime = 1f;

        private Transform cache;
        // Update is called once per frame
        void FixedUpdate()
        {
            int layerMask = 1 << 16;
            if(Physics.Raycast(transform.position, transform.forward, out RaycastHit hitInfo, 5, layerMask))
            {
                if (!hitInfo.transform.CompareTag("Agent"))
                {
                    return;
                }

                grace = false;
                cache = hitInfo.transform.parent;
                Transform owner = hitInfo.transform.parent;
                if (!ReferenceEquals(DialogueController.instance, null))
                {
                    DialogueController.instance.SetActiveResponder(owner.GetComponent<DialogueResponder>());
                }
            }
            else
            {
                if (!ReferenceEquals(DialogueController.instance, null))
                {
                    if (!ReferenceEquals(cache, null))
                    {
                        if (grace == false)
                        {
                            grace = true;
                            gracePeriod = 0f;
                        }

                        if (gracePeriod < graceTime)
                        {
                            gracePeriod += Time.deltaTime;
                            return;
                        }
                    }
                    DialogueController.instance.SetActiveResponder(null);
                }
            }
        }
    }
}
