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
        private GameObject currentParticles;

        private void Update()
        {
            if (!ReferenceEquals(currentArea, null))
            {
                BleedingSockets sockets = currentArea.GetComponent<BleedingCollider>().GetSockets();
                if (currentArea.childCount == 0) return;

                if (!currentArea.GetChild(0).GetComponent<Grabbable>().BeingHeld)
                {
                    foreach(Transform child in currentParticles.transform)
                    {
                        child.transform.localScale = Vector3.one * 0.2f;
                    }
                    currentParticles.transform.localScale = Vector3.one;
                    return;
                }
                foreach (Transform child in currentParticles.transform)
                {
                    child.transform.localScale = Vector3.one * 0.075f;
                }
                timer += Time.deltaTime;
                if (timer > 3.5f)
                {
                    BleedingInjury injury = sockets.GetInjury();

                    if (injury.GetBleedingSeverity() > (int)BloodLossSeverity.Moderate)
                    {
                        timer = 0f;
                        return;
                    }
                    injury.SetRecievedPressure(true);
                    sockets.RemoveBloodParticles();
                    timer = 0f;
                    Destroy(currentArea.GetChild(0).gameObject);
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
                currentParticles = currentArea.GetComponent<BleedingCollider>().GetSockets().GetBloodParticles();
            }
        }

        private void OnTriggerExit(Collider other)
        {
            if (other.CompareTag("BleedingArea"))
            {
                timer = 0;
                currentArea = null;
                currentParticles = null;
            }
        }
    }
}
