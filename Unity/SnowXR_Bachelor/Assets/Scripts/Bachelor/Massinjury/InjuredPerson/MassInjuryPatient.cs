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
        private Transform heavyBreath;
        private Transform criticalBreath;

        private SkinnedMeshRenderer head;
        private SkinnedMeshRenderer hands;
        private SkeletonSocketManager skeletonManager;
        
        private static readonly int Saturation = Shader.PropertyToID("_Saturation");
        private static readonly int Dead = Animator.StringToHash("Dead");
        private static readonly int Concious = Animator.StringToHash("Concious");

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

            normalBreath = transform.Find("NormalBreath");
            heavyBreath = transform.Find("HeavyBreath");
            criticalBreath = transform.Find("CriticalBreath");

            skeletonManager = mesh.GetComponent<SkeletonSocketManager>();
            normalBreath.parent = skeletonManager.breathParent;
            normalBreath.localPosition = Vector3.zero;
            
            heavyBreath.parent = skeletonManager.breathParent;
            heavyBreath.localPosition = Vector3.zero;
            
            criticalBreath.parent = skeletonManager.breathParent;
            criticalBreath.localPosition = Vector3.zero;


            if (gender == Gender.Male)
            {
                head = mesh.transform.Find("mesh").Find("M_Head").GetComponent<SkinnedMeshRenderer>();
                hands = mesh.transform.Find("mesh").Find("M_Hands").GetComponent<SkinnedMeshRenderer>();
            }
            else
            {
                head = mesh.transform.Find("mesh").Find("F_Head").GetComponent<SkinnedMeshRenderer>();
                hands = mesh.transform.Find("mesh").Find("F_Hands").GetComponent<SkinnedMeshRenderer>();
            }

        }

        

        private void Update()
        {
            animator.SetInteger(InjuryType, injuryScript.GetBleedingArea());
            animator.SetBool(CanStand, injuryScript.CanWalk());
            animator.SetBool(Sitting, injuryScript.Sitting());
            animator.SetBool(Walking, agent.velocity.sqrMagnitude > 1f);
            animator.SetBool(Dead, injuryScript.Dead());
            animator.SetBool(Concious, injuryScript.Concious());
            
            
            switch (injuryScript.BreathStatus())
            {
                case BreathingStatus.None:
                    normalBreath.gameObject.SetActive(false);
                    heavyBreath.gameObject.SetActive(false);
                    criticalBreath.gameObject.SetActive(false);
                    break;
                case BreathingStatus.CriticalProblem:
                    normalBreath.gameObject.SetActive(false);
                    heavyBreath.gameObject.SetActive(false);
                    criticalBreath.gameObject.SetActive(true);
                    break;
                case BreathingStatus.MinimalProblem:
                    normalBreath.gameObject.SetActive(false);
                    heavyBreath.gameObject.SetActive(true);
                    criticalBreath.gameObject.SetActive(false);
                    break;
                case BreathingStatus.Normal:
                    normalBreath.gameObject.SetActive(true);
                    heavyBreath.gameObject.SetActive(false);
                    criticalBreath.gameObject.SetActive(false);
                    break;
            }

            if (injuryScript.Dead())
            {
                head.material.SetFloat(Saturation, 0.4f);
                hands.material.SetFloat(Saturation, 0.4f);
            }
            else
            {
                head.material.SetFloat(Saturation, map(injuryScript.bloodLossML, 4000f,0f, 0.4f,1f));
                hands.material.SetFloat(Saturation, map(injuryScript.bloodLossML, 4000f,0f, 0.4f,1f));
            }
        }

        public SkeletonSocketManager GetSkeletonSocketManager()
        {
            return skeletonManager;
        }

        public Gender GetGender()
        {
            return gender;
        }

        public GameObject GetMesh()
        {
            return mesh;
        }
        
        float map(float s, float a1, float a2, float b1, float b2)
        {
            return b1 + (s-a1)*(b2-b1)/(a2-a1);
        }
    }
    
    

    [System.Serializable]
    public enum Gender
    {
        Male, Female
    }
}
