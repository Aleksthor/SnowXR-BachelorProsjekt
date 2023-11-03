using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace SnowXR
{
    public class JointHelper_V2 : MonoBehaviour
    {
        [Header("Position")]
        public bool LockXPosition = false;
        public bool LockYPosition = false;
        public bool LockZPosition = false;

        [Header("Scale")]
        public bool LockXScale = true;
        public bool LockYScale = true;
        public bool LockZScale = true;

        [Header("Rotation")]
        public Transform LookAt;
        [Tooltip("Whether the euler angles should be updated locally or not")]
        public bool SetRotationLocally = true;
        [Tooltip("Whether it should base itself of its initial rotation or current. WARNING: Will only function while disabled if LookAt is assigned")]
        public bool UseInitialRotation = true;
        public bool LockXRotation = false;
        public bool LockYRotation = false;
        public bool LockZRotation = false;

        Vector3 initialPosition;
        Vector3 initialRotation;
        Vector3 initialScale;

        Vector3 currentPosition;
        Vector3 currentScale;
        Vector3 currentRotation;
        //Rigidbody rigid;

        void Start()
        {
            initialPosition = transform.localPosition;
            initialRotation = transform.localEulerAngles;
            initialScale = transform.localScale;

            if(LookAt)
                initialRotation = LookAt.eulerAngles;

            //rigid = GetComponent<Rigidbody>();
        }

        void lockTransform()
        {
            // Position
            if (LockXPosition || LockYPosition || LockZPosition)
            {
                currentPosition = transform.localPosition;
                transform.localPosition = new Vector3(LockXPosition ? initialPosition.x : currentPosition.x,
                    LockYPosition ? initialPosition.y : currentPosition.y,
                    LockZPosition ? initialPosition.z : currentPosition.z);
            }

            // Scale
            if (LockXScale || LockYScale || LockZScale)
            {
                currentScale = transform.localScale;
                transform.localScale = new Vector3(LockXScale ? initialScale.x : currentScale.x,
                    LockYScale ? initialScale.y : currentScale.y, LockZScale ? initialScale.z : currentScale.z);
            }
            
            // Rotation
            if (LockXRotation || LockYRotation || LockZRotation)
            {
                if (!UseInitialRotation && LookAt)
                {
                    if (SetRotationLocally)
                    {
                        currentRotation = transform.localEulerAngles;
                        Vector3 newEulerAngles = new Vector3(
                            LockXRotation ? LookAt.localEulerAngles.x : currentRotation.x,
                            LockYRotation ? LookAt.localEulerAngles.y : currentRotation.y,
                            LockZRotation ? LookAt.localEulerAngles.z : currentRotation.z);
                        transform.localEulerAngles = newEulerAngles;
                        
                    }
                    else
                    {
                        currentRotation = transform.eulerAngles;
                        Vector3 newEulerAngles = new Vector3(
                            LockXRotation ? LookAt.eulerAngles.x : currentRotation.x,
                            LockYRotation ? LookAt.eulerAngles.y : currentRotation.y,
                            LockZRotation ? LookAt.eulerAngles.z : currentRotation.z);
                        transform.eulerAngles = newEulerAngles;
                    }
                }
                else
                {
                    currentRotation = transform.localEulerAngles;
                    Vector3 newRotation = new Vector3(LockXRotation ? initialRotation.x : currentRotation.x,
                        LockYRotation ? initialRotation.y : currentRotation.y,
                        LockZRotation ? initialRotation.z : currentRotation.z);

                    if (SetRotationLocally)
                        transform.localEulerAngles = newRotation;
                    else
                        transform.eulerAngles = newRotation;
                }
            }
        }

        void LateUpdate()
        {
            //lockTransform();
        }

        void FixedUpdate()
        {
            lockTransform();
        }
    }
}