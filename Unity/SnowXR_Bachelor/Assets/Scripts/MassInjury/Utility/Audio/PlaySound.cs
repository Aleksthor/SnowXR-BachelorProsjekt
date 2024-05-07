using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace SnowXR.MassInjury.Utility
{
    public class PlaySound : MonoBehaviour
    {
        [SerializeField] private AudioClip audioToPlay;
        private AudioSource audioSource;
        // Start is called before the first frame update
        void Awake()
        {
            audioSource = GetComponent<AudioSource>();
            audioSource.clip = audioToPlay; 
        }

        public void Play()
        {
            audioSource.Play(); 
        }
    }
}
