using System;
using System.Collections;
using System.Collections.Generic;
using Codice.Client.Commands.WkTree;
using MassInjury.Person;
using UnityEngine;
using UnityEngine.AI;
using Random = UnityEngine.Random;

namespace SnowXR.MassInjury
{
    [RequireComponent(typeof(BleedingInjury), typeof(NavMeshAgent), typeof(GenderComponent))]
    public class PatientAnimationController : MonoBehaviour
    {
        private BleedingInjury injuryScript;
        private Animator animator;
        
        // Cache
        private static readonly int InjuryType = Animator.StringToHash("InjuryType");
        private static readonly int CanStand = Animator.StringToHash("canStand");
        private static readonly int Sitting = Animator.StringToHash("sitting");

        private NavMeshAgent agent;
        private static readonly int Walking = Animator.StringToHash("walking");

        private Transform normalBreath;
        private Transform closedAirways;
        private Transform criticalBreath;
        
        private BleedingSockets skeletonManager;

        private float sideLeaseSlider = 0f;
        private static readonly int Dead = Animator.StringToHash("Dead");
        private static readonly int Concious = Animator.StringToHash("Concious");
        private bool sideLease = false;
        private static readonly int Lease = Animator.StringToHash("sideLease");

        // Start is called before the first frame update
        private void Awake()
        {
            injuryScript = GetComponent<BleedingInjury>();
            agent = GetComponent<NavMeshAgent>();
            
            

            normalBreath = transform.Find("NormalBreath");
            closedAirways = transform.Find("ClosedAirways");
            criticalBreath = transform.Find("LungInjury");

        }

        private void Start()
        {
            GameObject mesh = GetComponent<GenderComponent>().GetMesh();
            
            animator = mesh.GetComponent<Animator>();
            skeletonManager = mesh.GetComponent<BleedingSockets>();
            normalBreath.parent = skeletonManager.breathParent;
            normalBreath.localPosition = Vector3.zero;
            
            closedAirways.parent = skeletonManager.breathParent;
            closedAirways.localPosition = Vector3.zero;
            
            criticalBreath.parent = skeletonManager.breathParent;
            criticalBreath.localPosition = Vector3.zero;
        }


        private void Update()
        {
            animator.SetInteger(InjuryType, injuryScript.GetBleedingArea());
            animator.SetBool(CanStand, injuryScript.CanWalk());
            animator.SetBool(Sitting, injuryScript.Sitting());
            animator.SetBool(Walking, agent.velocity.sqrMagnitude > 1f);
            animator.SetBool(Dead, injuryScript.Dead());
            animator.SetBool(Concious, injuryScript.Concious());
            animator.SetBool(Lease, injuryScript.RecievedSideLease());
            animator.SetFloat("sideLeaseSlider", sideLeaseSlider);
            
            switch (injuryScript.BreathStatus())
            {
                case BreathingStatus.None:
                    normalBreath.gameObject.SetActive(false);
                    closedAirways.gameObject.SetActive(false);
                    criticalBreath.gameObject.SetActive(false);
                    break;
                case BreathingStatus.ClosedAirway:
                    normalBreath.gameObject.SetActive(false);
                    closedAirways.gameObject.SetActive(true);
                    criticalBreath.gameObject.SetActive(false);
                    break;
                case BreathingStatus.LungInjury:
                    normalBreath.gameObject.SetActive(false);
                    closedAirways.gameObject.SetActive(false);
                    criticalBreath.gameObject.SetActive(true);
                    break;
                case BreathingStatus.Normal:
                    normalBreath.gameObject.SetActive(true);
                    closedAirways.gameObject.SetActive(false);
                    criticalBreath.gameObject.SetActive(false);
                    break;
            }
        }
        

        public BleedingSockets GetBleedingSockets()
        {
            return skeletonManager;
        }
        

        public void UpdateSideLeaseSlider(float number)
        {
            sideLeaseSlider = number;
        }
    }
    
}
