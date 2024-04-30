using BNG;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace SnowXR.MassInjury
{
    public class StopBleeding : MonoBehaviour
    {
        private Transform currentArea;
        private float timer = 0;

        private void Update()
        {
            if (!ReferenceEquals(currentArea, null))
            {
                if (!currentArea.GetChild(0).GetComponent<Grabbable>().BeingHeld)
                {
                    return;
                }

                timer += Time.deltaTime;
                if (timer > 3.5f)
                {
                    BleedingSockets sockets = currentArea.GetComponent<BleedingCollider>().GetSockets();
                    BleedingInjury injury = sockets.GetInjury();

                    if (injury.GetBleedingSeverity() > (int)BloodLossSeverity.Moderate)
                    {
                        timer = 0f;
                        return;
                    }
                    injury.SetRecievedPressure(true);
                    sockets.RemoveBloodParticles();
                    timer = 0f;
                }
            }
            else
            {
                timer = 0f;
            }
        }

        private void OnTriggerEnter(Collider other)
        {
            if (other.CompareTag("BleedingArea"))
            {
                currentArea = other.transform;
                timer = 0f;
            }
        }

        private void OnTriggerExit(Collider other)
        {
            if (other.CompareTag("BleedingArea"))
            {
                timer = 0;
                currentArea = null;
            }
        }
    }
}
