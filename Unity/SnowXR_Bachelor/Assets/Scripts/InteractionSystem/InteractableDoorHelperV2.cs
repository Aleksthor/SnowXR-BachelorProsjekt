using UnityEngine;

namespace BNG
{
    public class InteractableDoorHelperV2 : MonoBehaviour, IInteractableDoor
    {
        protected enum DoorType
        {
            Rotating,
            Sliding
        }

        protected enum DoorState
        {
            Default,
            AutoOpening,
            AutoClosing
        }

        private float DoorAngle { get { return Quaternion.Angle(transform.localRotation, initialDoorRotation); } }
        private float DoorDist { get { return Vector3.Distance(initialDoorPosition, transform.localPosition); } }
        private float AngularVelocity { get { return rigid.angularVelocity.magnitude; } }
        private float Velocity { get { return rigid.velocity.magnitude; } }

        [Header("Door Settings")]
        [Tooltip("If true the door will not respond to user input")]
        [SerializeField]
        protected byte DoorID = 0;
        [SerializeField]
        protected DoorType doorType = 0;
        [SerializeField]
        protected /*private*/ DoorState doorState = DoorState.Default;
        public bool DoorIsLocked = false;
        [Space(10)]
        /// <summary>
        /// Used in cohesion with [AngleToSnapDoor or DistToSnapDoor], where both conditions needs to be valid to snap the door closed.
        /// </summary>
        public float VelocityToSnapDoor = 0.2f;

        [Header("Door (Rotating)")]
        // Rotating Door Settings
        public int InitialAngle;
        Quaternion initialDoorRotation;
        /// <summary>
        /// How much the doors should rotate between
        /// </summary>
        public float TargetAngleWhenClosed = 0;
        public float TargetAngleWhenOpen = 90;
        public float AngleToSnapDoor = 1f;

        // Need to open door up a certain amount before considering playing a close sound afterwards
        bool readyToPlayCloseSound = false;
        bool readyToPlayOpenSound = true;
        [Min(0.01f)]
        public float DoorAngleToLockTreshold = 0.02f;

        [Header("Door (Sliding)")]
        // Sliding Door Settings
        public Vector3 TargetPosWhenClosed;
        public Vector3 TargetPosWhenOpen;
        public float DoorDistToLockTreshold = 0.02f;
        Vector3 initialDoorPosition;

        public float DistToSnapDoor = 0.1f;

        private Vector3 currentPositon { get { return transform.localPosition; } }

        [Header("Sound")]
        public AudioClip DoorOpenSound;
        public AudioClip DoorCloseSound;
        private float soundSpamPreventionTimer;
        private float soundSpamPreventionTimeLimit = 0.4f;

        /// <summary>
        /// Does the handle need to be turned in order to open the door from the closed position?
        /// </summary>
        [Header("Handle")]
        [Tooltip("Does the handle need to be turned in order to open the door from the closed position?")]
        public bool RequireHandleTurnToOpen = false;

        /// <summary>
        /// If RequireHandleTurnToOpen and the handle has not fully opened then the door will be kinematic / immovable
        /// </summary>
        bool handleLocked = false;

        /// <summary>
        /// This transform is used to determine how many degrees have been turned. Required if RequireHandleTurnToOpen is true
        /// </summary>
        public Transform HandleFollower;

        public float HandleDegreesTurned { get {
                if (HandleFollower)
                    return Quaternion.Angle(HandleFollower.localRotation, initialHandleRotation);
                else
                    return 0; } }

        /// <summary>
        /// How many degrees the handle must turn in order for the latch to be open
        /// </summary>
        public float HandleDegreesTurnToOpen = 5f;
        Quaternion initialHandleRotation;

        /// <summary>
        /// Rotate this transform with Handle Rotation
        /// </summary>
        [Header("Door Lock (Visual)")]
        [Tooltip("Used to move the lock's mesh back and forth.")]
        public Transform DoorLockTransform;
        float initialLockPosition;
        public float lockPos;

        HingeJoint hinge;
        Rigidbody rigid;

        [Header("Door Automation (AI interaction)")]
        [SerializeField]
        protected float autoMoveSpeed = 1f;

        DoorState previousState = DoorState.Default;
        float doorAngleOnStateChange;
        Vector3 doorPositionOnStateChange;

        // Cache for Garbage Collector
        float moveLockAmount, rotateAngles, ratio;

        void Start()
        {
            hinge = GetComponent<HingeJoint>();
            rigid = GetComponent<Rigidbody>();

            if (DoorLockTransform)
            {
                initialLockPosition = DoorLockTransform.transform.localPosition.x;
            }

            if (HandleFollower)
            {
                initialHandleRotation = HandleFollower.localRotation;
            }

            initialDoorRotation = transform.localRotation;
            initialDoorPosition = transform.localPosition;
            previousState = doorState;
        }

        [ContextMenu("Unlock Door")]
        public virtual void UnlockDoor()
        {
            DoorIsLocked = false;
        }
        
        [ContextMenu("Lock Door")]
        public virtual void LockDoor()
        {
            DoorIsLocked = true;
        }

        public bool IsOpen => DoorAngle > DoorAngleToLockTreshold;

        [ContextMenu("Open Door")]
        public virtual void OpenDoor()
        {
            if (DoorIsLocked)
                return;
            doorState = DoorState.AutoOpening;
        }
        
        [ContextMenu("Close Door")]
        public virtual void CloseDoor()
        {
            doorState = DoorState.AutoClosing;
        }

        public void UnlockSDoor(byte _doorID)
        {
            if (_doorID != DoorID)
                return;
            UnlockDoor();
        }
        public void LockSDoor(byte _doorID)
        {
            if (_doorID != DoorID)
                return;
            LockDoor();
        }
        public void OpenSDoor(byte _doorID)
        {
            if (_doorID != DoorID)
                return;
            OpenDoor();
        }
        public void CloseSDoor(byte _doorID)
        {
            if (_doorID != DoorID)
                return;
            CloseDoor();
        }


        void Update()
        {
            // Get the modified angle of of the lever. Use this to get percentage based on Min and Max angles.
            if(doorState == DoorState.Default)
            {
                DefaultState();
            }
            else if (doorState == DoorState.AutoClosing || doorState == DoorState.AutoOpening)
            {
                AutoDoorMovement();
            }

            // Play open door sound
            soundSpamPreventionTimer += Time.deltaTime;
            if (doorType == DoorType.Rotating)
            {
                if (DoorAngle > DoorAngleToLockTreshold)
                    PlayDoorSound();
                else
                    PlayCloseSound();
            }
            else if (doorType == DoorType.Sliding)
            {
                if (DoorDist > DoorDistToLockTreshold)
                    PlayDoorSound();
                else
                    PlayCloseSound();
            }

            // Update previous variables last
            previousState = doorState;
        }

        void DefaultState()
        {
            // TODO: Lock Transform (Visual) should be reworked.
            if (DoorLockTransform)
            {
                // 45 Degrees = Fully Open
                moveLockAmount = 0.025f;
                rotateAngles = 55;
                ratio = rotateAngles / (rotateAngles - Mathf.Clamp(HandleDegreesTurned, 0, rotateAngles));
                lockPos = initialLockPosition - (ratio * moveLockAmount) + moveLockAmount;
                lockPos = Mathf.Clamp(lockPos, initialLockPosition - moveLockAmount, initialLockPosition);

                DoorLockTransform.transform.localPosition = new Vector3(lockPos, DoorLockTransform.transform.localPosition.y, DoorLockTransform.transform.localPosition.z);
            }

            // Set Lock Status
            if (RequireHandleTurnToOpen)
            {
                handleLocked = HandleDegreesTurned < HandleDegreesTurnToOpen;
            }

            // Door Snapping and Closing
            if(doorType == DoorType.Rotating)
            {
                // Should we snap the door closed?
                if (DoorAngle < AngleToSnapDoor && AngularVelocity <= VelocityToSnapDoor)
                {
                    if (!rigid.isKinematic)
                        rigid.angularVelocity = Vector3.zero;
                }

                // Lock Door in place if closed and requires handle to be turned
                if (DoorAngle < DoorAngleToLockTreshold && (handleLocked || DoorIsLocked))
                {
                    // Check on detection mode
                    if (rigid.collisionDetectionMode == CollisionDetectionMode.Continuous || rigid.collisionDetectionMode == CollisionDetectionMode.ContinuousDynamic)
                    {
                        rigid.collisionDetectionMode = CollisionDetectionMode.ContinuousSpeculative;
                    }
                    transform.localRotation = initialDoorRotation;
                    rigid.isKinematic = true;
                }
                else
                {
                    // Check on detection mode
                    if (rigid.collisionDetectionMode == CollisionDetectionMode.ContinuousSpeculative)
                    {
                        rigid.collisionDetectionMode = CollisionDetectionMode.ContinuousDynamic;
                    }

                    rigid.isKinematic = false;
                }
            }
            else if (doorType == DoorType.Sliding)
            {
                // Should we snap the door closed?
                if (DoorDist < DistToSnapDoor && Velocity <= VelocityToSnapDoor)
                {
                    if (!rigid.isKinematic)
                    {
                        rigid.angularVelocity = Vector3.zero;
                        rigid.velocity = Vector3.zero;
                    }
                }

                // Lock Door in place if closed and requires handle to be turned
                if (DoorDist < DoorDistToLockTreshold && (handleLocked || DoorIsLocked))
                {
                    // Check on detection mode
                    if (rigid.collisionDetectionMode == CollisionDetectionMode.Continuous || rigid.collisionDetectionMode == CollisionDetectionMode.ContinuousDynamic)
                    {
                        rigid.collisionDetectionMode = CollisionDetectionMode.ContinuousSpeculative;
                    }

                    transform.localPosition = TargetPosWhenClosed;
                    rigid.isKinematic = true;
                }
                else
                {
                    // Check on detection mode
                    if (rigid.collisionDetectionMode == CollisionDetectionMode.ContinuousSpeculative)
                    {
                        rigid.collisionDetectionMode = CollisionDetectionMode.ContinuousDynamic;
                    }

                    rigid.isKinematic = false;
                }
            }
        }

        /// <summary>
        /// When OpenDoor or CloseDoor is called, the door will automatically rotate without player interaction.
        /// </summary>
        private void AutoDoorMovement()
        {
            if (doorState == DoorState.Default)
                return;

            // Update variables on state changed
            if (doorState != previousState)
                OnStateChanged();

            rigid.isKinematic = true;


            switch (doorType)
            {
                case DoorType.Rotating:
                    AutoRotateDoor();
                    break;
                case DoorType.Sliding:
                    AutoSlideDoor();
                    break;

                default:
                    break;
            }
        }

        private float autoMoveTimer = 0;
        private void AutoRotateDoor()
        {
            Vector3 axis = hinge.axis;
            float targetAngle = 0;

            float rotateFrom = doorAngleOnStateChange;
            float rotateTo;

            switch (doorState)
            {
                case DoorState.AutoOpening:
                    rotateTo = TargetAngleWhenOpen;
                    break;

                case DoorState.AutoClosing:
                    rotateTo = TargetAngleWhenClosed;
                    break;

                default:
                    rotateTo = doorAngleOnStateChange;
                    break;
            }

            // Find out if rotation direction is positive or negative
            if (TargetAngleWhenClosed - TargetAngleWhenOpen >= 0)
                rotateFrom = -rotateFrom;

            // Increase timer
            autoMoveTimer += Time.deltaTime * autoMoveSpeed;
            autoMoveTimer = Mathf.Clamp(autoMoveTimer, 0, 1);

            float newAngle = Mathf.SmoothStep(rotateFrom, rotateTo, autoMoveTimer);

            transform.localRotation = Quaternion.AngleAxis(newAngle, axis);

            // Return to correct state
            if (autoMoveTimer >= 1)
                AutoMovementEnd();
        }

        private void AutoSlideDoor()
        {
            Vector3 moveFrom = doorPositionOnStateChange;
            Vector3 moveTo;

            switch (doorState)
            {
                case DoorState.AutoOpening:
                    moveTo = TargetPosWhenOpen;
                    break;

                case DoorState.AutoClosing:
                    moveTo = TargetPosWhenClosed;
                    break;

                default:
                    moveTo = doorPositionOnStateChange;
                    break;
            }
            
            // Increase timer
            autoMoveTimer += Time.deltaTime * autoMoveSpeed;
            autoMoveTimer = Mathf.Clamp(autoMoveTimer, 0, 1);
            
            // Find and set new transform
            Vector3 newPos = Vector3.Slerp(moveFrom, moveTo, autoMoveTimer);
            transform.localPosition = newPos;

            // Return to correct state
            if (autoMoveTimer >= 1)
                AutoMovementEnd();
        }

        void OnStateChanged()
        {
            // Reset timers used in states
            autoMoveTimer = 0;
            doorAngleOnStateChange = DoorAngle;
            doorPositionOnStateChange = currentPositon;
        }

        private void AutoMovementEnd()
        {
            doorState = DoorState.Default;
            autoMoveTimer = 0;
        }

        // Note: Incorrectly functioning code form BNG. Moved the code to a seperate function just to have it more organized. 
        private void PlayDoorSound()
        {
            // Play Open Sound
            if (readyToPlayOpenSound && 
                soundSpamPreventionTimer >= soundSpamPreventionTimeLimit
                )
            {
                VRUtils.Instance.PlaySpatialClipAt(DoorOpenSound, transform.position, 1f, 1f);
                readyToPlayOpenSound = false;
                readyToPlayCloseSound = true;
                soundSpamPreventionTimer = 0;
            }
        }

        private void PlayCloseSound()
        {
            // Play Close Sound
            if (readyToPlayCloseSound && 
                soundSpamPreventionTimer >= soundSpamPreventionTimeLimit
                )
            {
                VRUtils.Instance.PlaySpatialClipAt(DoorCloseSound, transform.position, 1f, 1f);
                readyToPlayCloseSound = false;
                readyToPlayOpenSound = true;
                soundSpamPreventionTimer = 0;
            }
        }
    }
}