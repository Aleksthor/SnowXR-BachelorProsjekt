using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace SnowXR.MassInjury
{
    public class TeleportUI : MonoBehaviour
    {
        // Position and rotation to teleport too
        [SerializeField] private Vector3 postion;
        [SerializeField] private Vector3 rotation;

        // Reference to player
        [SerializeField] private Transform playerController;

        // Reference to teleport UI Parent
        [SerializeField] private Transform parent;

        // Reference to result UI
        [SerializeField] private Transform results;


        private float timer = 0f;
        private bool finished = false;

        private void Start()
        {
            results.gameObject.SetActive(false);
        }

        private void Update()
        {
            if (finished) return;
            timer += Time.deltaTime;
            if (timer > 1f)
            {
                timer = 0f;
                // Check if we are done with the game
                SlowUpdate();
            }
        }
        // Check if we are done with the game
        private void SlowUpdate()
        {
            if (parent.gameObject.activeSelf) return;
            
            
            List<GameObject> patients = SpawnManager.instance.GetPatients();

            bool done = true;
            foreach (var go in patients)
            {
                if (!go.GetComponent<BleedingInjury>().IsInspectionDone())
                {
                    done = false;
                }
            }

            if (done)
            {
                parent.gameObject.SetActive(true);
                finished = true;
            }
        }

        public void Teleport()
        {
            var transform1 = playerController.transform;
            transform1.position = postion;
            transform1.eulerAngles = rotation;
            
            results.gameObject.SetActive(true);
            
            results.transform.Find("Results").GetComponent<ResultsUI>().ShowResults();
            
            parent.gameObject.SetActive(false);
        }
    }
}
