using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using BNG;
using UnityEngine.Events;

namespace SnowXR.MassInjury
{
    public class PulseAudioPlayer : MonoBehaviour
    {
        [Header("Cache")]
        [SerializeField] private BleedingInjury currentInjury;
        [Header("Current HeartRate")]
        [SerializeField] private int pulse = 0;
        [Header("Hand we are using")]
        [SerializeField] private ControllerHand hand;
        
        // Cache
        private PulseArea area;
        private AudioSource audioSource;
        private Transform target;

        // Logic
        private float speed;
        private float timer;
        private bool active = false;

        // Events
        [HideInInspector] public UnityEvent onListenNeck;
        [HideInInspector] public UnityEvent onListenWrist;

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

            if (ReferenceEquals(target, null))
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

            audioSource.volume = area == PulseArea.Neck ? 0.1f : 0.05f;
            

            timer += Time.deltaTime;
            pulse = currentInjury.Pulse();
            speed = pulse / 60f;

            if (timer > 1f / speed)
            {
                if (!ReferenceEquals(InputBridge.Instance, null))
                {
                    InputBridge.Instance.VibrateController(speed, 0.1f, 0.1f, hand);
                }

                timer = 0f;
            }
            

            audioSource.pitch = speed;
            audioSource.mute = false;

        }

        private void OnTriggerEnter(Collider other)
        {
            if (other.CompareTag("Pulse"))
            {
                target = other.transform;
                currentInjury = other.GetComponent<PulseCollider>().GetInjury();
                area = other.GetComponent<PulseCollider>().area;
                if (area == PulseArea.Neck) onListenNeck.Invoke();
                else onListenWrist.Invoke();
                active = true;
            }
        }

        private void OnTriggerExit(Collider other)
        {
            if (other.CompareTag("Pulse"))
            {
                currentInjury = null;
                active = false;
                target = null;
            }
        }

        public bool Active()
        {
            return active;
        }

        public ControllerHand Hand()
        {
            return hand;
        }

        public PulseArea Area()
        {
            return area;
        }
    }
    
    public enum PulseArea
    {
        Neck,
        Wrist
    }
}
