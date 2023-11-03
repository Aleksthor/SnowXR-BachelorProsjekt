using UnityEngine;

namespace SnowXR
{
    public class StretcherJointMover : MonoBehaviour //NetworkBehaviour
    {
        [Header("Spawning")]
        public GameObject StretcherNavAgentToSpawn;
        public Vector3 SpawnOffset;
        public Vector3 SpawnRotationOffset;

        private GameObject stretcherAgentRef = null;

        [Header("Core")]
        public Animator StretcherAnimator;


        /// <summary>
        /// The local position the stretcher should be at when in resting position.
        /// </summary>
        private float targetPositionRetracted = 0;
        /// <summary>
        /// The local position the stretcher should be at when dragged out.
        /// </summary>
        public float TargetLengthExtended;

        [Range(0.5f,1)]
        /// <summary>
        /// How far the stretcher needs to be dragged out before turning into a separate nav-agent.
        /// </summary>
        public float PercentageToDispatch = 0.97f;
        bool isStretcherAgentSpawned = false;

        private Vector3 initialPositon;
        private Vector3 currentPositon { get { return transform.localPosition; } }
        
        float spawnTimeStamp = 0;
        private bool initialized = false;

        private float currentRatio;
        
        void Start()
        {
            spawnTimeStamp = Time.time;
        }
        private void Update()
        {
            UpdateCurrentPosition();
        }

        void FixedUpdate()
        {
            UpdateCurrentPosition();
        }

        void UpdateCurrentPosition()
        {
            if (Time.time < spawnTimeStamp + 4f) {
                return;
            }

            if (!initialized) {
                initialized = true;
                initialPositon = transform.localPosition;
            }
            
            Vector3 moveDir = currentPositon - initialPositon;

            float currentLength = moveDir.magnitude;
            float fullLength = TargetLengthExtended - targetPositionRetracted;

            currentRatio = Mathf.Clamp(currentLength / fullLength, 0.0f, 0.999f);

            StretcherAnimator.SetFloat("StretcherMotionTime", currentRatio);

            // Spawn Stretcher Agent
            if(currentRatio >= PercentageToDispatch && !isStretcherAgentSpawned)
                SpawnStretcherAgent();
        }

        public GameObject SpawnStretcherAgent()
        {
            if (StretcherNavAgentToSpawn == null)
                return null;
            if (stretcherAgentRef != null)
                return null;
            
            

            Quaternion spawnRot = transform.rotation;
            Vector3 euler = spawnRot.eulerAngles;
            spawnRot = Quaternion.Euler(euler.x + SpawnRotationOffset.x, euler.y + SpawnRotationOffset.y, euler.z + SpawnRotationOffset.z);

            var stretcherGameObject = DoSpawn(transform.TransformPoint(SpawnOffset), spawnRot);
            isStretcherAgentSpawned = true;

            // TODO: Instead of disabling the stretcher visual object, make it possible to return the stretcher agent to the ambulance.
            transform.parent.gameObject.SetActive(false);
            return stretcherGameObject;
        }

        public void ResetState()
        {
            transform.localPosition = initialPositon;
            transform.parent.gameObject.SetActive(true);
            stretcherAgentRef = null;
        }
        
        GameObject DoSpawn(Vector3 position, Quaternion rotation)
        {
            var go = Instantiate(StretcherNavAgentToSpawn, position, rotation);
            
        
            return go;

        }
    }
}