using System;
using System.Collections;
using System.Collections.Generic;
using MassInjury.Utility;
using UnityEngine;
using UnityEngine.SceneManagement;

namespace SnowXR.MassInjury
{
    public class MainMenuUI : MonoBehaviour
    {
        private int loadScene = 0;
        private AudioSource audioSource;
        [SerializeField] private FadeScreen fader;

        private void Awake()
        {
            audioSource = GetComponent<AudioSource>();
        }

        public void StartGame()
        {
            audioSource.Play();
            loadScene = 1;
            fader.FadeOut();
        }

        public void FixedUpdate()
        {
            if (loadScene > 0)
            {
                switch (loadScene)
                {
                    case 1:
                        if (audioSource.clip.length < audioSource.time + 0.1f)
                            SceneManager.LoadScene(1);
                        break;
                    case 2:
                        break;
                }
            }
        }
    }
}
