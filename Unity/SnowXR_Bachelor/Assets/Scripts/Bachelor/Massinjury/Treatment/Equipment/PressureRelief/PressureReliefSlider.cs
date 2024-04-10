using System.Collections;
using System.Collections.Generic;
using BNG;
using UnityEngine;
using UnityEngine.Events;

namespace SnowXR.MassInjury
{
    public class PressureReliefSlider : MonoBehaviour
    {
        [SerializeField] private UnityEvent OnCompletedStep1 = new UnityEvent();
        /// <summary>
        /// How far away slider has moved from inital RangeLow position
        /// </summary>
        public float SlidePercentage
        {
            get { return _slidePercentage; }
        }

        private float _slidePercentage;

        /// <summary>
        /// Event to call if slider's value changes
        /// </summary>
        public FloatEvent onSliderChange;

        float lastSliderPercentage;
        float slideRangeLow = -0.11f;
        float slideRangeHigh = -0.05f;
        float slideRange;

        void Start()
        {
            ConfigurableJoint cj = GetComponent<ConfigurableJoint>();
            if (cj)
            {
                slideRangeLow = 0.11f;
                slideRangeHigh =  0.11f * -1;
            }
            

            slideRange = slideRangeHigh - slideRangeLow;
        }

        void Update()
        {

            _slidePercentage = ((transform.localPosition.y + 0.08f) + slideRangeHigh) / slideRange;
            _slidePercentage = Mathf.Ceil(_slidePercentage * 100);

            if (_slidePercentage != lastSliderPercentage)
            {
                OnSliderChange(_slidePercentage);
                triggerStageComplete(_slidePercentage);
            }

            lastSliderPercentage = _slidePercentage;
        }

        private void triggerStageComplete(float percentage)
        {
            if (percentage < -20)
            {
                var grabber = this.GetComponent<Grabbable>().GetPrimaryGrabber();
                var parent = transform.parent;
                OnCompletedStep1?.Invoke();
                //release grab
                
                
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

                if (!ReferenceEquals(closest, null))
                {
                    closest.GetComponent<BleedingInjury>().SetRecievedPressureRelief(true);
                }
                        
                Destroy(parent.gameObject);
            }
        }

        // Callback for lever percentage change
        public virtual void OnSliderChange(float percentage)
        {

            if (onSliderChange != null)
            {
                onSliderChange.Invoke(percentage);
            }
        }
    }
}
