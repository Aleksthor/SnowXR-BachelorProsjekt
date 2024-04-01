using System;
using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.Serialization;

namespace SnowXR.MassInjury
{
    public class StepVisualizer : MonoBehaviour
    {
        [FormerlySerializedAs("Numbers")] [SerializeField] private List<TextMeshProUGUI> numbers = new List<TextMeshProUGUI>();
        [SerializeField] private List<GameObject> patients = new List<GameObject>();
        [SerializeField] private List<GameObject> explanations = new List<GameObject>();

        [SerializeField] private Color currentStep;
        [SerializeField] private Color finishedStep;
        [SerializeField] private Color nextStep;

        private int current = 0;
        
        
        // Start is called before the first frame update
        void Start()
        {
            numbers[0].color = currentStep;
            for (int i = 1; i < numbers.Count; i++)
            {
                numbers[i].color = nextStep;
            }

            patients[0].SetActive(true);
            
            for (int i = 1; i < patients.Count; i++)
            {
                patients[i].SetActive(false);
            }
            
            explanations[0].SetActive(true);
            
            for (int i = 1; i < explanations.Count; i++)
            {
                explanations[i].SetActive(false);
            }
        }

        public void NextStep()
        {
            numbers[current].color = finishedStep;
            current++;
            numbers[current].color = currentStep;

            patients[current].SetActive(true);
            explanations[current].SetActive(true);
        }
    }
}
