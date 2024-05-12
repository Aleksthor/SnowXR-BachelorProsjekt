using System;
using System.Collections;
using System.Collections.Generic;
using SnowXR.MassInjury.Person;
using UnityEngine;
using UnityEngine.AI;

namespace SnowXR.MassInjury
{
    [RequireComponent(typeof(BleedingInjury), typeof(NavMeshAgent), typeof(GenderComponent))]
    public class PatientAnimationController : MonoBehaviour
    {
        
        // Cache compoennts
        private BleedingInjury injuryScript;
        private Animator animator;
        private NavMeshAgent agent;
        private BleedingSockets bleedingSockets;

        // Reference to breath parents
        private Transform normalBreath;
        private Transform closedAirways;
        private Transform criticalBreath;
        

        private float recoveryPoseSlider = 0f;
        private float openMouthSlider = 0f;
        // Cache
        private static readonly int InjuryType = Animator.StringToHash("InjuryType");
        private static readonly int CanStand = Animator.StringToHash("canStand");
        private static readonly int Sitting = Animator.StringToHash("sitting");
        private static readonly int Walking = Animator.StringToHash("walking");
        private static readonly int Dead = Animator.StringToHash("Dead");
        private static readonly int Concious = Animator.StringToHash("Concious");
        private static readonly int RecoverySlider = Animator.StringToHash("sideLease");
        private static readonly int RecoveryPoseSlider = Animator.StringToHash("sideLeaseSlider");
        private static readonly int OpenMouthSlider = Animator.StringToHash("openMouthSlider");

        private bool recoveryPose = false;

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
            bleedingSockets = mesh.GetComponent<BleedingSockets>();
            normalBreath.parent = bleedingSockets.breathParent;
            normalBreath.localPosition = Vector3.zero;
            
            closedAirways.parent = bleedingSockets.breathParent;
            closedAirways.localPosition = Vector3.zero;
            
            criticalBreath.parent = bleedingSockets.breathParent;
            criticalBreath.localPosition = Vector3.zero;
        }


        private void Update()
        {
            animator.SetInteger(InjuryType, injuryScript.GetBleedingArea());
            animator.SetBool(CanStand, injuryScript.CanWalk());
            animator.SetBool(Sitting, injuryScript.Sitting());
            animator.SetBool(Walking, agent.velocity.sqrMagnitude > 0.1f);
            animator.SetBool(Dead, injuryScript.Dead());
            animator.SetBool(Concious, injuryScript.Concious());
            animator.SetBool(RecoverySlider, injuryScript.RecievedRecoveryPose());
            animator.SetFloat(RecoveryPoseSlider, recoveryPoseSlider);
            animator.SetFloat(OpenMouthSlider, openMouthSlider);
            
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

            if (injuryScript.Dead())
            {
                normalBreath.gameObject.SetActive(false);
                closedAirways.gameObject.SetActive(false);
                criticalBreath.gameObject.SetActive(false);
            }
        }

        public void SetOpenMouthSlider(float set)
        {
            openMouthSlider = set;
        }
        
        public void UpdateRecoveryPoseSlider(float number)
        {
            recoveryPoseSlider = number;
        }
    }
    
}
