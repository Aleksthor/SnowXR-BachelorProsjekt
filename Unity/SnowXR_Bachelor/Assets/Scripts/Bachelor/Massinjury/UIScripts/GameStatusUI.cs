using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

namespace SnowXR.MassInjury
{
    public class GameStatusUI : MonoBehaviour
    {
        [Header("Images of Active Patients")]
        [SerializeField] private List<Image> patientList = new List<Image>();

        private float timer = 0f;
        // Start is called before the first frame update
        void Start()
        {
        
        }

        // Update is called once per frame
        void Update()
        {
            if (patientList.Count == 0) return;

            if (patientList.Count != SpawnManager.instance.numberOfAgents) return;

            timer -= Time.deltaTime;
            if (timer < 0f)
            {
                timer = 5f;
                SlowUpdate();
            }

        }

        private void SlowUpdate()
        {
            List<GameObject> patients = SpawnManager.instance.GetAgents();

            int i = 0;
            foreach (var go in patients)
            {
                patientList[i].color = go.GetComponent<BleedingInjury>().IsInspectionDone() ? Color.green : Color.red;
                i++;
            }
        }
    }
}
