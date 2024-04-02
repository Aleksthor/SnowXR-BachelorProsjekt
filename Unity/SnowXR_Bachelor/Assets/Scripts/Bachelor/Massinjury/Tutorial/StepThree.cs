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
        
        // Start is called before the first frame update
        void Start()
        {
            injury = patient.GetComponent<BleedingInjury>();
            
            injury.onRecievePressure.AddListener(RecievePressure);

            progressBar.value = 0f;
            percentText.text = "0 %";
        }

        public void RecievePressure()
        {
            progressBar.value = 0.25f;
            percentText.text = "25 %";
            
            injury.onRecievePressure.RemoveAllListeners();
            injury.onRecieveOpenAirways.AddListener(OpenAirways);
        }

        private void OpenAirways()
        {
            progressBar.value = 0.5f;
            percentText.text = "50 %";
            
            injury.onRecieveOpenAirways.RemoveAllListeners();
            injury.onRecieveSideLease.AddListener(SideLease);
        }
        
        private void SideLease()
        {
            progressBar.value = 0.75f;
            percentText.text = "75 %";
            
            injury.onRecieveSideLease.RemoveAllListeners();
            injury.onPlaceBand.AddListener(PlaceBand);
        }

        private void PlaceBand()
        {
            if (injury.GuessedZone() != Zone.Red) return;
            
            progressBar.value = 1f;
            percentText.text = "100 %";
            
            injury.onPlaceBand.RemoveAllListeners();
            
            GetComponent<StepVisualizer>().NextStep();
            onStepComplete.Invoke();
        }
    }
}
