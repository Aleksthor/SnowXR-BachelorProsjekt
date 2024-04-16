using System;
using System.Collections;
using System.Collections.Generic;
using MassInjury.Person;
using UnityEngine;


namespace MassInjury.Player
{
    public class PlayerSettings : MonoBehaviour
    {
        public static PlayerSettings instance;

        private Gender gender;
        private GameDifficulty gameDifficulty;
        

        private void Awake()
        {
            if (instance)
            {
                Destroy(gameObject);
                return;
            }

            instance = this;
            gender = Gender.Male;
            gameDifficulty = GameDifficulty.Easy;
            DontDestroyOnLoad(gameObject);
        }

        public Gender GetGender()
        {
            return gender;
        }

        public void MaleButton()
        {
            gender = Gender.Male;
        }

        public void SetGameDifficulty(GameDifficulty difficulty)
        {
            gameDifficulty = difficulty;
        }

        public void FemaleButton()
        {
            gender = Gender.Female;
        }

        public GameDifficulty GetGameDifficulty()
        {
            return gameDifficulty;
        }
    }
    
    [System.Serializable]
    public enum GameDifficulty
    {
        Tutorial,
        Easy,
        Medium,
        Hard,
        Exam
    }

}