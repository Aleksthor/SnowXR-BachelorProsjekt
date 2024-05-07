using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using BNG;
using UnityEngine.Events;

namespace SnowXR.MassInjury
{
    public class TourniquetPinSlider : GrabbableEvents
    {
        [Tooltip("If True the SnapGraphics tranfsorm will have its local Y rotation snapped to the nearest degrees specified in SnapDegrees")]
        public bool SnapToDegrees = false;

        [Tooltip("Snap the Y rotation to the nearest")]
        public float SnapDegrees = 5f;

        [Tooltip("The Transform of the object to be rotated if SnapToDegrees is true")]
        public Transform SnapGraphics;

        [Tooltip("Play this sound on snap")]
        public AudioClip SnapSound;

        [Tooltip("Randomize pitch of SnapSound by this amount")]
        public float RandomizePitch = 0.001f;

        [Tooltip("Add haptics amount (0-1) to controller if SnapToDegrees is True. Set this to 0 for no Haptics.")]
        public float SnapHaptics = 0.5f;


        public FloatEvent onHingeChange;
        public FloatEvent onHingeSnapChange;

        Rigidbody rigid;

        private float _lastDegrees = 0;
        private float _lastSnapDegrees = 0;

        private int snaps = 0;
        [SerializeField] private GameObject placeholderPrefab;

        [HideInInspector] public UnityEvent onPinStrap = new UnityEvent();

        void Start()
        {
            rigid = GetComponent<Rigidbody>();
        }

        void Update()
        {
            //tempfix, prevent wrong rotation direction
            if (transform.rotation.y < 0) return;
            // Update degrees our transform is representing
            float degrees = getSmoothedValue(transform.localEulerAngles.y);

            // Call event if necessary
            if (degrees != _lastDegrees)
            {
                OnHingeChange(degrees);
            }

            _lastDegrees = degrees;

            // Check for snapping a graphics transform
            float nearestSnap = getSmoothedValue(Mathf.Round(degrees / SnapDegrees) * SnapDegrees);

            // If snapping update graphics and call events
            if (SnapToDegrees)
            {

                // Check for snap event
                if (nearestSnap != _lastSnapDegrees)
                {
                    snaps++;
                    if (snaps > 10)
                    {
                        var parent = transform.parent.parent;
                        Instantiate(placeholderPrefab, parent.parent);

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
                            closest.GetComponent<BleedingInjury>().SetRecievedTourniquet(true);
                        }
                        
                        onPinStrap?.Invoke();
                        
                        Destroy(parent.gameObject);
                    }
                    OnSnapChange(nearestSnap);
                }
                _lastSnapDegrees = nearestSnap;
            }

        }

        public void OnSnapChange(float yAngle)
        {

            if (SnapGraphics)
            {
                SnapGraphics.localEulerAngles = new Vector3(SnapGraphics.localEulerAngles.x, yAngle, SnapGraphics.localEulerAngles.z);
            }

            if (SnapSound)
            {
                VRUtils.Instance.PlaySpatialClipAt(SnapSound, transform.position, 1f, 1f, RandomizePitch);
            }

            if (grab.BeingHeld && SnapHaptics > 0)
            {
                InputBridge.Instance.VibrateController(0.5f, SnapHaptics, 0.01f, thisGrabber.HandSide);
            }

            // Call event
            if (onHingeSnapChange != null)
            {
                onHingeSnapChange.Invoke(yAngle);
            }
        }

        public override void OnRelease()
        {
            rigid.velocity = Vector3.zero;
            rigid.angularVelocity = Vector3.zero;

            base.OnRelease();
        }

        public void OnHingeChange(float hingeAmount)
        {
            // Call event
            if (onHingeChange != null)
            {
                onHingeChange.Invoke(hingeAmount);
            }
        }

        float getSmoothedValue(float val)
        {
            if (val < 0)
            {
                val = 360 - val;
            }
            if (val == 360)
            {
                val = 0;
            }

            return val;
        }
    }
}
