using System.Collections;
using System.Collections.Generic;
using UnityEngine;

//[RequireComponent(typeof(Outline))]
namespace SnowXR
{

    public class Seat : MonoBehaviour
    {

        [SerializeField]
        protected Vector3 SeatLocalOffset;
        GameObject player;

        bool playerSeated = false;

        // Start is called before the first frame update
        void Start()
        {

        }

        // Update is called once per frame
        void Update()
        {

        }

        public void Sit()
        {
            player = GameObject.FindWithTag("Player");
            if (!player)
                return;

            PlayerSitting playerSitComp = player.GetComponentInChildren<PlayerSitting>();
            playerSitComp.Sit(transform.position + SeatLocalOffset);

        }

        public void StandUp()
        {

        }


        private void OnDrawGizmos()
        {
            // --- Seat Position visualisation ---
            Gizmos.color = Color.yellow;

            // Sphere
            Gizmos.DrawSphere(transform.position + SeatLocalOffset, 0.11f);

        }
        private void OnDrawGizmosSelected()
        {
            // --- Seat Position visualisation ---

            Vector3 gizmoPos = transform.position + SeatLocalOffset;
            float lineWidth = 0.3f;
            Vector3 upVector = transform.up;
            Vector3 forwardVector = transform.forward;

            // Forward Direction
            Debug.DrawLine(gizmoPos,
                transform.forward * lineWidth + gizmoPos,
                Color.blue);

            // Up Direction
            Debug.DrawLine(gizmoPos,
                transform.up * lineWidth + gizmoPos,
                Color.green);
        }
    }
}