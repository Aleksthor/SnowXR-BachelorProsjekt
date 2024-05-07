using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

namespace SnowXR.MassInjury.Dialogue
{
    public class DialogueResponder : MonoBehaviour
    {
        [SerializeField] private List<Dialogue> playerOptions = new List<Dialogue>();

        [SerializeField] private AudioSource audioSource;

        public List<Dialogue> GetPlayerOptions()
        {
            return playerOptions;
        }

        public void PlayClip(AudioClip clip)
        {
            audioSource.clip = clip;
            audioSource.Play();
        }
        
        
    }
}
