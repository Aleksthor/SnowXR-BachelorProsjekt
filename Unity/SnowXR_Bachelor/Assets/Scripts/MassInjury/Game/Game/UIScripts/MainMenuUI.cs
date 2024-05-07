using System;
using System.Collections;
using System.Collections.Generic;
using SnowXR.MassInjury.Person;
using SnowXR.MassInjury.Utility;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;
using SnowXR.MassInjury.Player;

namespace SnowXR.MassInjury
{
    public class MainMenuUI : MonoBehaviour
    {
        // Reference to images on UI
        [SerializeField] private Image male;
        [SerializeField] private Image female;
        
        // Reference to images on UI
        [SerializeField] private Image easy;
        [SerializeField] private Image medium;
        [SerializeField] private Image hard;
        [SerializeField] private Image exam;

        // Color of selected and not selected buttons
        [SerializeField] private Color selected;
        [SerializeField] private Color notSelected;

        // Fader reference
        [SerializeField] private FadeScreen fader;

        private int loadScene = 0;
        private AudioSource audioSource;

        private void Awake()
        {
            audioSource = GetComponent<AudioSource>();
        }


        private void Start()
        {
            male.color = PlayerSettings.instance.GetGender() == Gender.Male ? selected : notSelected;
            female.color = PlayerSettings.instance.GetGender() == Gender.Female ? selected : notSelected;
            
            easy.color = PlayerSettings.instance.GetGameDifficulty() == GameDifficulty.Easy ? selected : notSelected;
            medium.color = PlayerSettings.instance.GetGameDifficulty() == GameDifficulty.Medium ? selected : notSelected;
            hard.color = PlayerSettings.instance.GetGameDifficulty() == GameDifficulty.Hard ? selected : notSelected;
            exam.color = PlayerSettings.instance.GetGameDifficulty() == GameDifficulty.VeryHard ? selected : notSelected;
        }

        public void StartGame()
        {
            audioSource.Play();
            loadScene = 1;
            fader.FadeOut();
        }

        public void MaleButton()
        {
            PlayerSettings.instance.MaleButton();
            male.color = selected;
            female.color = notSelected;
        }
        
        public void FemaleButton()
        {
            PlayerSettings.instance.FemaleButton();
            male.color = notSelected;
            female.color = selected;
        }

        public void GameDifficultyButton(int difficulty)
        {
            easy.color = (GameDifficulty)difficulty == GameDifficulty.Easy ? selected : notSelected;
            medium.color = (GameDifficulty)difficulty == GameDifficulty.Medium ? selected : notSelected;
            hard.color = (GameDifficulty)difficulty == GameDifficulty.Hard ? selected : notSelected;
            exam.color = (GameDifficulty)difficulty == GameDifficulty.VeryHard ? selected : notSelected;
            
            PlayerSettings.instance.SetGameDifficulty((GameDifficulty)difficulty);
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
