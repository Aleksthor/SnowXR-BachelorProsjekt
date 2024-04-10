using System;
using System.Collections;
using System.Collections.Generic;
using BNG;
using UnityEngine;
using UnityEngine.SceneManagement;

namespace SnowXR.MassInjury
{
    public class SettingsUI : MonoBehaviour
    {
        [SerializeField] private GameObject UI;
        [SerializeField] private ControllerBinding ToggleHandsInput = ControllerBinding.AButtonDown;

        private void Start()
        {
            UI.SetActive(false);
        }

        // Update is called once per frame
        void Update()
        {
            if (ToggleHandsInput.GetDown() || Input.GetKeyDown(KeyCode.P))
            {
                UI.SetActive(!UI.activeSelf);
            }
        }

        public void RestartScene()
        {
            SceneManager.LoadScene(SceneManager.GetActiveScene().buildIndex);
        }
        
        public void LoadMainMenu()
        {
            SceneManager.LoadScene(5);
        }
    }
}
