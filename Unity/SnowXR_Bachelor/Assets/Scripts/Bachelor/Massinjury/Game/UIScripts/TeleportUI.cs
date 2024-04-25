using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace SnowXR.MassInjury
{
    public class TeleportUI : MonoBehaviour
    {
        [SerializeField] private Vector3 postion;
        [SerializeField] private Vector3 rotation;

        [SerializeField] private Transform playerController;

        [SerializeField] private Transform results;

        [SerializeField] private Transform parent;

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
                SlowUpdate();
            }
        }

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
