using System;
using System.Collections;
using System.Collections.Generic;
using BNG;
using UnityEngine;
using UnityEngine.SceneManagement;
using MassInjury.Utility;

namespace SnowXR.MassInjury
{
    public class SettingsUI : MonoBehaviour
    {
        [SerializeField] private GameObject UI;
        [SerializeField] private ControllerBinding Input1 = ControllerBinding.AButtonDown;
        [SerializeField] private ControllerBinding Input2 = ControllerBinding.XButtonDown;
        [SerializeField] private FadeScreen fader;

        private AudioSource audioSource;

        private int loadScene = 0;

        private void Awake()
        {
            audioSource = GetComponentInChildren<AudioSource>();
        }

        private void Start()
        {
            UI.SetActive(false);
        }

        // Update is called once per frame
        void Update()
        {
            if (Input1.GetDown() || Input.GetKeyDown(KeyCode.P) || Input2.GetDown())
            {
                UI.SetActive(!UI.activeSelf);
            }

            if (loadScene > 0)
            {
                if (audioSource.clip.length < audioSource.time + 0.1f)
                {
                    switch (loadScene)
                    {
                        case 1:
                            SceneManager.LoadScene(SceneManager.GetActiveScene().buildIndex);
                            break;
                        case 2:
                            SceneManager.LoadScene(0);
                            break;
                    }
                }
            }
        }

        public void RestartScene()
        {
            audioSource.Play();
            loadScene = 1;
            fader.FadeOut();
        }
        
        public void LoadMainMenu()
        {
            audioSource.Play();
            loadScene = 2;
            fader.FadeOut();
        }
    }
}
