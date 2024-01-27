using System;
using System.Collections;
using System.Collections.Generic;
using Codice.Client.Commands.WkTree;
using UnityEngine;
using Random = UnityEngine.Random;

namespace SnowXR.MassInjury
{
    [RequireComponent(typeof(BleedingInjury))]
    public class MassInjuryPerson : MonoBehaviour
    {
        private BleedingInjury injuryScript;
        private Animator animator;

        [Header("Gender")]
        [SerializeField] Gender gender;

        [Header("Spawning Body")] 
        [SerializeField] private GameObject malePrefab;
        [SerializeField] private GameObject femalePrefab;
        
        // Start is called before the first frame update
        private void Awake()
        {
            injuryScript = GetComponent<BleedingInjury>();
            gender = (Gender)Random.Range(0, 2);
            GameObject go;
            switch (gender)
            {
                case Gender.Male:
                    go = Instantiate(malePrefab, transform);
                    animator = go.GetComponent<Animator>();
                    break;
                case Gender.Female:
                    go = Instantiate(femalePrefab, transform);
                    animator = go.GetComponent<Animator>();
                    break;
            }
        }

        private void Update()
        {
            animator.SetBool("canStand", injuryScript.CanWalk());
            animator.SetBool("sitting", injuryScript.Sitting());
        }
    }
    
    

    [System.Serializable]
    public enum Gender
    {
        Male, Female
    }
}
