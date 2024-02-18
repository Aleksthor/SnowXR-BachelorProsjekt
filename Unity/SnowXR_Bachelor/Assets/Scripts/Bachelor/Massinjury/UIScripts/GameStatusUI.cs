using System;
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

        [SerializeField] private Text clockUI;
        [SerializeField] private Button resultButton;
        [SerializeField] private GameObject resultsUI;
        private float timer = 0f;

        [Header("Colors")] 
        [SerializeField] private Color done;
        [SerializeField] private Color notDone;
        
        private void Awake()
        {
            resultButton.onClick.AddListener(ShowResults);
            resultButton.gameObject.SetActive(false);
        }


        // Update is called once per frame
        void Update()
        {
            float time = MassInjuryGameController.instance.GetGameTimer();

            clockUI.text = ToTimeString(time);
            
            
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
            List<GameObject> patients = SpawnManager.instance.GetPatients();

            int i = 0;
            foreach (var go in patients)
            {
                patientList[i].color = go.GetComponent<BleedingInjury>().IsInspectionDone() ? done : notDone;
                i++;
            }

            if (MassInjuryGameController.instance.GameOver())
            {
                resultButton.gameObject.SetActive(true);
            }
        }

        public void ShowResults()
        {
            gameObject.SetActive(false);
            resultsUI.SetActive(true);
            resultsUI.GetComponent<ResultsUI>().ShowResults();
        }

        string ToTimeString(float time)
        {
            string result = "";

            if (time < 60f)
            {
                result += "00:";
                result += time.ToString("F2");
                return result;
            }


            int mins = Mathf.FloorToInt(time / 60f);
            time -= 60f * mins;
            if (mins < 10)
            {
                result += "0" + mins + ":";
                result += time.ToString("F2");
                return result;
            }
            

            result += mins + ":";
            result += time.ToString("F2");
            return result;
        }
    }
}
