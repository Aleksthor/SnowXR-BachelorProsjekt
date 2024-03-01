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
        private GameObject mesh;
        private static readonly int Walking = Animator.StringToHash("walking");

        private Transform normalBreath;

        // Start is called before the first frame update
        private void Awake()
        {
            injuryScript = GetComponent<BleedingInjury>();
            agent = GetComponent<NavMeshAgent>();
            gender = (Gender)Random.Range(0, 2);
            switch (gender)
            {
                case Gender.Male:
                    mesh = Instantiate(malePrefab, transform);
                    animator = mesh.GetComponent<Animator>();
                    break;
                case Gender.Female:
                    mesh = Instantiate(femalePrefab, transform);
                    animator = mesh.GetComponent<Animator>();
                    break;
            }

            normalBreath = transform.Find("Breathing");
            normalBreath.parent = mesh.GetComponent<SkeletonSocketManager>().breathParent;
            normalBreath.localPosition = Vector3.zero;
        }

        

        private void Update()
        {
            animator.SetInteger(InjuryType, injuryScript.GetBleedingArea());
            animator.SetBool(CanStand, injuryScript.CanWalk());
            animator.SetBool(Sitting, injuryScript.Sitting());
            animator.SetBool(Walking, agent.velocity.sqrMagnitude > 1f);
            
            
            switch (injuryScript.BreathStatus())
            {
                case BreathingStatus.None:
                    normalBreath.gameObject.SetActive(false);
                    break;
                case BreathingStatus.CriticalProblem:
                    normalBreath.gameObject.SetActive(false);
                    break;
                case BreathingStatus.MinimalProblem:
                    normalBreath.gameObject.SetActive(true);
                    break;
                case BreathingStatus.Normal:
                    normalBreath.gameObject.SetActive(true);
                    break;
            }
        }

        public GameObject GetMesh()
        {
            return mesh;
        }
    }
    
    

    [System.Serializable]
    public enum Gender
    {
        Male, Female
    }
}
