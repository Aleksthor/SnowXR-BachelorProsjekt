using System;
using System.Collections;
using System.Collections.Generic;
using Codice.Client.Commands.WkTree;
using UnityEngine;
using UnityEngine.AI;
using Random = UnityEngine.Random;

namespace SnowXR.MassInjury
{
    [RequireComponent(typeof(BleedingInjury), typeof(NavMeshAgent))]
    public class MassInjuryPatient : MonoBehaviour
    {
        private BleedingInjury injuryScript;
        private Animator animator;

        [Header("Gender")]
        [SerializeField] Gender gender;

        [Header("Spawning Body")] 
        [SerializeField] private GameObject malePrefab;
        [SerializeField] private GameObject femalePrefab;
        
        // Cache
        private static readonly int InjuryType = Animator.StringToHash("InjuryType");
        private static readonly int CanStand = Animator.StringToHash("canStand");
        private static readonly int Sitting = Animator.StringToHash("sitting");

        private NavMeshAgent agent;
        private static readonly int Walking = Animator.StringToHash("walking");

        // Start is called before the first frame update
        private void Awake()
        {
            injuryScript = GetComponent<BleedingInjury>();
            agent = GetComponent<NavMeshAgent>();
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
            animator.SetInteger(InjuryType, injuryScript.GetBleedingArea());
            animator.SetBool(CanStand, injuryScript.CanWalk());
            animator.SetBool(Sitting, injuryScript.Sitting());
            animator.SetBool(Walking, agent.velocity.sqrMagnitude > 1f);
        }
    }
    
    

    [System.Serializable]
    public enum Gender
    {
        Male, Female
    }
}
