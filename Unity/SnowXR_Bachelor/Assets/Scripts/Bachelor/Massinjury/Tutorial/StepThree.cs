using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.UI;

namespace SnowXR.MassInjury
{
    public class StepThree : MonoBehaviour
    {
        [SerializeField] private GameObject patient;
        
        [SerializeField] private Slider progressBar;
        [SerializeField] private TextMeshProUGUI percentText;
        
        private BleedingInjury injury;
        
        [SerializeField] private UnityEvent onStepComplete;
        
        [SerializeField] private List<string> steps = new List<string>();
        [SerializeField] private List<string> hints = new List<string>();

        [SerializeField] private TextMeshProUGUI step;
        [SerializeField] private TextMeshProUGUI hint;
        
        // Start is called before the first frame update
        void Start()
        {
            injury = patient.GetComponent<BleedingInjury>();
            
            injury.onRecievePressure.AddListener(RecievePressure);

            progressBar.value = 0f;
            percentText.text = "0 %";
            step.text = steps[0];
            hint.text = hints[0];
        }

        public void RecievePressure()
        {
            progressBar.value = 0.25f;
            percentText.text = "25 %";
            step.text = steps[1];
            hint.text = hints[1];
            
            injury.onRecievePressure.RemoveAllListeners();
            injury.onRecieveOpenAirways.AddListener(OpenAirways);
        }

        private void OpenAirways()
        {
            progressBar.value = 0.5f;
            percentText.text = "50 %";
            step.text = steps[2];
            hint.text = hints[2];
            
            injury.onRecieveOpenAirways.RemoveAllListeners();
            injury.onRecieveSideLease.AddListener(SideLease);
        }
        
        private void SideLease()
        {
            progressBar.value = 0.75f;
            percentText.text = "75 %";
            step.text = steps[3];
            hint.text = hints[3];
            
            injury.onRecieveSideLease.RemoveAllListeners();
            injury.onPlaceBand.AddListener(PlaceBand);
        }

        private void PlaceBand()
        {
            if (injury.GuessedZone() != Zone.Red) return;
            
            progressBar.value = 1f;
            percentText.text = "100 %";
            step.text = steps[4];
            hint.text = hints[4];
            
            injury.onPlaceBand.RemoveAllListeners();
            
            GetComponent<StepVisualizer>().NextStep();
            onStepComplete.Invoke();
        }
    }
}
