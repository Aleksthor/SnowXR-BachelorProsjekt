using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;


namespace SnowXR.MassInjury
{
    public class OpenAirways : MonoBehaviour
    {
        [SerializeField] private UnityEvent OnCompletedStep2 = new UnityEvent();

        [SerializeField] private BNG.Lever lever;

        [SerializeField] private BNG.Grabbable HeadGrabbable;
        [SerializeField] private BNG.Grabbable JawGrabbable;

        [SerializeField] private Transform superParent;

        private float value;
        void Start()
        {
            lever.onLeverChange.AddListener(OnLevelChangedUpdate);
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
            }

            //if we are holdding jaw, but NOT the head, make jaw grabber TryRelease()
            if (JawGrabbable.BeingHeld && !HeadGrabbable.BeingHeld)
            {
                JawGrabbable.GetPrimaryGrabber().TryRelease();
            }

            CheckForCompletion();
        }

        private void CheckForCompletion()
        {
            float mouthOpeness = 0;
            mouthOpeness = value;
            if (mouthOpeness > 90)
            {
                //Debug.Log("MouthOpen");
                //superParent.gameObject.SetActive(false);
                OnCompletedStep2?.Invoke();
                
                
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
                    parent.GetComponent<BleedingInjury>().OpenedAirways();
                    parent.GetComponent<MassInjuryPatient>().GetBleedingSockets().SetupSideLease();
                }
            }
        }
    }
}
