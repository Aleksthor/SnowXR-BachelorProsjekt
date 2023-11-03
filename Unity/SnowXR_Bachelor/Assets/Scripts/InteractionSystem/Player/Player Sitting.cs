using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace SnowXR
{
    public class PlayerSitting : MonoBehaviour
    {
        public bool IsSittingPosible = true;
        [SerializeField]
        protected float heightOffset = 1;
        

        // Start is called before the first frame update
        void Start()
        {

        }

        // Update is called once per frame
        void Update()
        {

        }

        public void Sit(Vector3 seatLocation)
        {
            if (!IsSittingPosible)
                return;

            // Disable movement
            this.GetComponent<CharacterController>().enabled = false;

            // Teleport to seat
            Vector3 cameraHeightOffset = new Vector3(0, -this.GetComponent<BNG.BNGPlayerController>().ElevateCameraHeight + heightOffset, 0);
            transform.position = seatLocation + cameraHeightOffset;
        }
    }
}
