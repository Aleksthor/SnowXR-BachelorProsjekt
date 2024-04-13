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
                timer += Time.deltaTime;
                if (timer > 4.5f)
                {
                    BleedingSockets sockets = currentArea.GetComponent<BleedingCollider>().GetSockets();
                    sockets.GetInjury().SetRecievedPressure(true);
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
            }
        }

        private void OnTriggerExit(Collider other)
        {
            if (other.CompareTag("BleedingArea"))
            {
                timer = 0;
                if (ReferenceEquals(other.transform, currentArea))
                {
                    currentArea = null;
                    timer = 0f;
                }
            }
        }
    }
}
