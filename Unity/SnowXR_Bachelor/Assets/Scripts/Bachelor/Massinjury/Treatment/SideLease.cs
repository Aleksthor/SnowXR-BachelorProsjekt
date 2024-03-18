using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using BNG;
using UnityEngine.Events;

namespace SnowXR.MassInjury
{
    public class SideLease : MonoBehaviour
    {
        // find a good place to call completion and invoke the event, assign score handler step 3 completion in edtior ( )
        //[SerializeField]
        //private UnityEvent OnCompletedStep3 = new UnityEvent();
        [SerializeField] private Lever leverShoulder;
        [SerializeField] private Lever leverKnee;

        [SerializeField] private float maxSpeed;

        [Space(20)] public FloatEvent OnLeverChanged;
        public UnityEvent EventStep3AProcedureCompleted;



        private float currentPercent = 100f;

        private void Start()
        {
            leverShoulder.onLeverChange.AddListener(OnSubleverChange);
            leverKnee.onLeverChange.AddListener(OnSubleverChange);
        }

        //this isnt optimal, haveing a dummypercent we are not using, but i could not find a way around this using lambdas
        private void OnSubleverChange(float dummyPercent)
        {
            //lower percentage / angle means closer to being finished or in "stabilt sideleie"
            float percent = leverShoulder.LeverPercentage + leverKnee.LeverPercentage;
            percent *= 0.5f;

            //lerps the percent for a smoother transition
            currentPercent = Mathf.Lerp(currentPercent, percent, Time.deltaTime * 10f);

            //events
            if (OnLeverChanged != null)
                OnLeverChanged.Invoke(currentPercent);
            if (EventStep3AProcedureCompleted != null && currentPercent < 7f) // if step completed, invoke the event
            {
                //sets the current percent to 0 to ensure the pose animation gets played unitl the end
                currentPercent = 0f;
                if (OnLeverChanged != null)
                    OnLeverChanged.Invoke(currentPercent);
                EventStep3AProcedureCompleted.Invoke();


                Complete();
                
                Destroy(gameObject);
            }

            //setup refrences to levers
            ref Lever highest = ref leverShoulder;
            ref Lever lowest = ref leverKnee;
            //assigns refrences
            if (leverShoulder.LeverPercentage > leverKnee.LeverPercentage)
            {
                highest = ref leverShoulder;
                lowest = ref leverKnee;
            }
            else
            {
                highest = ref leverKnee;
                lowest = ref leverShoulder;
            }


            if (Mathf.Abs(highest.LeverPercentage - lowest.LeverPercentage) > 10f)
            {
                //Debug.Log("Oh oh!" + Mathf.Abs(highest.LeverPercentage - lowest.LeverPercentage));
                percent = Mathf.Clamp(highest.LeverPercentage - 10f, 0f, 100f);
                percent *= 1f / 100f; // converts to decimal
                float length = 45f + 45f;
                float absAngle = length * percent;
                float offsetAngle = absAngle - 45f;
                lowest.SetLeverAngle(offsetAngle);
            }

        }

        private void Complete()
        {
            Collider[] colliders =
                Physics.OverlapSphere(transform.position, 4f, 1<<16);

            Transform closest = null;
            float best = float.MaxValue;
            foreach (var col in colliders)
            {
                if (col.CompareTag("Agent"))
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
                var parent = closest.parent;
                parent.GetComponent<BleedingInjury>().SetRecievedSideLease(true);
            }
        }
    }
}
