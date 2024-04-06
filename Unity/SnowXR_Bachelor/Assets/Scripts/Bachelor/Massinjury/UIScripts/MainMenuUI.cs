using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

namespace SnowXR.MassInjury
{
    public class MainMenuUI : MonoBehaviour
    {

        public void StartGame()
        {
            SceneManager.LoadScene(3);
        }
        
        public void StartTutorial()
        {
            SceneManager.LoadScene(4);
        }
    }
}
