using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Bachelor.Dialogue
{
    public class DialogueResponder : MonoBehaviour
    {
        [SerializeField] private List<Dialogue> playerOptions = new List<Dialogue>();
        
        public List<Dialogue> GetPlayerOptions()
        {
            return playerOptions;
        }

        public bool AskIfAwake()
        {
            return true;
        }
        
    }
}
