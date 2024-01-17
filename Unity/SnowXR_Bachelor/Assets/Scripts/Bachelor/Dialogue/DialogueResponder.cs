using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using SnowXR.MassInjury;

namespace Bachelor.Dialogue
{
    [RequireComponent(typeof(BleedingInjury))]
    public class DialogueResponder : MonoBehaviour
    {

        [SerializeField] private List<Dialogue> playerOptions = new List<Dialogue>();

        private BleedingInjury bleedingInjury;
        
        // Start is called before the first frame update
        void Awake()
        {
            bleedingInjury = GetComponent<BleedingInjury>();
        }

        private void Start()
        {
            
        }

        public void Respond()
        {
            
        }

        public List<Dialogue> GetPlayerOptions()
        {
            return playerOptions;
        }
        
    }
}
