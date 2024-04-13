using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;
using BNG;

namespace SnowXR.MassInjury
{
    public class TourniquetStrapSlider : MonoBehaviour
    {
        [SerializeField] private UnityEvent OnCompletedStep1 = new UnityEvent();
        [HideInInspector] public UnityEvent onStrapTourniquet = new UnityEvent();

        [SerializeField] private GameObject tourniquetPinPrefab;
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
                slideRangeLow = cj.linearLimit.limit * -1;
                slideRangeHigh = cj.linearLimit.limit;
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
            if (percentage < 30)
            {
                var grabber = this.GetComponent<Grabbable>().GetPrimaryGrabber();
                var parent = transform.parent;
                Instantiate(tourniquetPinPrefab, parent.parent);
                OnCompletedStep1?.Invoke();
                onStrapTourniquet?.Invoke();
                
                Destroy(parent.gameObject);
                //release grab
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

