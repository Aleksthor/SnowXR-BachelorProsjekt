using System;
using System.Collections;
using System.Collections.Generic;
using MassInjury.Person;
using UnityEngine;
using UnityEngine.Events;


namespace SnowXR.MassInjury
{
    public class OpenAirways : MonoBehaviour
    {
        [SerializeField] private UnityEvent OnCompletedStep2 = new UnityEvent();
        [HideInInspector] public UnityEvent onGrabHead = new UnityEvent();
        [HideInInspector] public UnityEvent onGrabChin = new UnityEvent();

        [SerializeField] private BNG.Lever lever;

        [SerializeField] private BNG.Grabbable HeadGrabbable;
        [SerializeField] private BNG.Grabbable JawGrabbable;

        [SerializeField] private Transform superParent;

        private bool startCheck = false;
        private float value;
        private bool triggerOnce1 = false;
        private bool triggerOnce2 = false;

        private Transform patient;
        private PatientAnimationController animController;
        
        
        void Start()
        {
            lever.onLeverChange.AddListener(OnLevelChangedUpdate);
            startCheck = false;
            
            
            Collider[] colliders =
                Physics.OverlapSphere(transform.position, 4f, 1<<9);

            Transform closest = null;
            float best = float.MaxValue;
            foreach (var col in colliders)
            {
                if (col.CompareTag("Patient"))
                {
                    float compare = Vector3.Distance(transform.position, col.transform.position);
                    if (best > compare)
                    {
                        best = compare;
                        closest = col.transform;
                    }
                }
            }

            patient = closest;
            animController = patient.GetComponent<PatientAnimationController>();
        }

        private void OnDestroy()
        {
            lever.onLeverChange.RemoveListener(OnLevelChangedUpdate);
        }

        /// <summary>
        /// Gets cakked when the refrenced levers value is changed
        /// </summary>
        /// <param name="0 -> closed, 100 -> fully open "></param>
        private void OnLevelChangedUpdate(float value)
        {
            if (JawGrabbable.BeingHeld)
            {
                
                this.value = value;
                
                //if we are holdding jaw, but NOT the head, make jaw grabber TryRelease()
                if (JawGrabbable.BeingHeld && !HeadGrabbable.BeingHeld)
                {
                    JawGrabbable.GetPrimaryGrabber().TryRelease();
                }

                CheckForCompletion();
            }
        }

        private void FixedUpdate()
        {
            if (HeadGrabbable.BeingHeld && !triggerOnce1)
            {
                onGrabHead.Invoke();
                triggerOnce1 = true;
            }
            else
            {
                triggerOnce1 = false;
            }
        }

        private void CheckForCompletion()
        {

            if (!triggerOnce2)
            {
                triggerOnce2 = true;
                onGrabChin.Invoke();
            }
            float mouthOpeness = 0;
            mouthOpeness = value;
            animController.SetOpenMouthSlider(mouthOpeness / 130f);
            if (mouthOpeness > 0f)
            {
                startCheck = true;
            }

            if (!startCheck) return;
            
            if (mouthOpeness < 10)
            {
                superParent.gameObject.SetActive(false);
                OnCompletedStep2?.Invoke();
                

                if (!ReferenceEquals(patient, null))
                {          
                    patient.GetComponent<BleedingInjury>().OpenedAirways();
                }
            }
        }
    }
}
