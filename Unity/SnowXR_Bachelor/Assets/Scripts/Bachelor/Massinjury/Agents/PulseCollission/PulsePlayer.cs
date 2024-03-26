using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using BNG;

namespace SnowXR.MassInjury
{
    public class PulsePlayer : MonoBehaviour
    {
        [SerializeField] private BleedingInjury currentInjury;
        [SerializeField] private int pulse = 0;
        [SerializeField] private ControllerHand hand;
        
        private PulseArea area;

        private AudioSource audioSource;
        private float speed;
        private float timer;

        private void Awake()
        {
            audioSource = GetComponent<AudioSource>();
            
        }

        private void Update()
        {
            if (ReferenceEquals(currentInjury, null) )
            {
                pulse = 0;
                audioSource.mute = true;
                return;
            }

            if (area == PulseArea.Wrist && currentInjury.bloodLossML > 2000f)
            {
                pulse = 0;
                audioSource.mute = true;
                return;
            }

            audioSource.volume = area == PulseArea.Neck ? 1f : 0.8f;
            

            timer += Time.deltaTime;
            if (timer > 1f / speed)
            {
                if (!ReferenceEquals(InputBridge.Instance, null))
                {
                    InputBridge.Instance.VibrateController(speed, 0.1f, 0.1f, hand);
                }

                timer = 0f;
            }
            

            speed = pulse / 60f;

            audioSource.pitch = speed;
            audioSource.mute = false;

            pulse = currentInjury.Pulse();
        }

        private void OnTriggerEnter(Collider other)
        {
            if (other.CompareTag("Pulse"))
            {
                currentInjury = other.GetComponent<PulseCollider>().GetInjury();
                area = other.GetComponent<PulseCollider>().area;
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
    
    public enum PulseArea
    {
        Neck,
        Wrist
    }
}
