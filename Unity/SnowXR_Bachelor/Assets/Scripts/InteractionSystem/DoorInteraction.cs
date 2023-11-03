using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace SnowXR
{
    public class DoorInteraction : MonoBehaviour
    {
        /*enum State
        {
            closed,

        }*/

        public bool isLocked = false;

        Vector3 currentRotation;


        public void OpenDoor()
        {

        }

        public void CloseDoor()
        {

        }

        void Start()
        {

        }

        void Update()
        {

            currentRotation = transform.localEulerAngles;

            /*
            // Open door
            if (isOpening)
                ;
            // Close door
            else if(!isOpening)
                ;*/
        }
    }

}