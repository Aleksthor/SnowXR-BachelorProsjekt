using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using System.Linq;
using MassInjury.Person;

namespace SnowXR.MassInjury
{
    public class GameStatusUI : MonoBehaviour
    {
        [Header("Images of Active Patients")]
        [SerializeField] private List<Image> patientList = new List<Image>();

        [SerializeField] private Text clockUI;
        [SerializeField] private Button resultButton;
        [SerializeField] private GameObject resultsUI;
        [SerializeField] private GameObject dialogueUI;
        private float timer = 0f;

        [Header("Colors")] 
        [SerializeField] private Color done;
        [SerializeField] private Color notDone;

        [SerializeField] private Sprite maleSprite;
        [SerializeField] private Sprite femaleSprite;

        [SerializeField] private Transform UI;

        private float time;
        private bool gameOver = false;
        
        private void Awake()
        {
            resultButton.onClick.AddListener(GoToResults);
            resultButton.gameObject.SetActive(false);
            time = 0f;
        }


        // Update is called once per frame
        void Update()
        {
            if (gameOver) return;
            time += Time.deltaTime;

            clockUI.text = ToTimeString(time);
            
            
            if (patientList.Count == 0) return;

            if (patientList.Count != SpawnManager.instance.examSize) return;

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
                patientList[i].sprite = go.GetComponent<GenderComponent>().GetGender() == Gender.Male
                    ? maleSprite
                    : femaleSprite;
                patientList[i].color = go.GetComponent<BleedingInjury>().IsInspectionDone() ? done : notDone;
                i++;
            }

            
            bool isDone = true;

            // Check if all agents have been inspected
            foreach (var injuredPerson in patients.Where(injuredPerson => !injuredPerson.GetComponent<BleedingInjury>().IsInspectionDone()))
            {
                isDone = false;
            }
            
            if (!isDone) return;
            
            // Finish the Game
            gameOver = true;
            resultButton.gameObject.SetActive(true);
            
            
        }

        public void GoToResults()
        {
            UI.gameObject.SetActive(false);
            resultsUI.SetActive(true);
            resultsUI.GetComponent<ResultsUI>().ShowResults();
        }

        public void GoToDialogue()
        {
            UI.gameObject.SetActive(false);
            dialogueUI.SetActive(true);
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
