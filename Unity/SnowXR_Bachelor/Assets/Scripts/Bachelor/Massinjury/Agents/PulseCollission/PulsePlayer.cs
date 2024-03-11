using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace SnowXR.MassInjury
{
    public class PulsePlayer : MonoBehaviour
    {
        [SerializeField] private BleedingInjury currentInjury;
        [SerializeField] private int pulse = 0;

        private AudioSource audioSource;

        private void Awake()
        {
            audioSource = GetComponent<AudioSource>();
        }

        private void Update()
        {
            if (ReferenceEquals(currentInjury, null))
            {
                pulse = 0;
                audioSource.mute = true;
                return;
            }

            float fraction = pulse / 60f;

            audioSource.pitch = fraction;
            audioSource.mute = false;

            pulse = currentInjury.Pulse();
        }

        private void OnTriggerEnter(Collider other)
        {
            if (other.CompareTag("Pulse"))
            {
                currentInjury = other.GetComponent<PulseCollider>().GetInjury();
            }
        }

        private void OnTriggerExit(Collider other)
        {
            if (other.CompareTag("Pulse"))
            {
                if (ReferenceEquals(currentInjury, other.GetComponent<PulseCollider>().GetInjury()))
                {
                    currentInjury = null;
                }
            }
        }
    }
}
