using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace SnowXR.MassInjury.Dialogue
{
    public class DialogueUI : MonoBehaviour
    {
        [SerializeField] private GameObject gameStatus;
        [SerializeField] private GameObject parent;
        
        public void GoToGameStatus()
        {
            gameStatus.SetActive(true);
            parent.SetActive(false);
        }
        
    }
}
