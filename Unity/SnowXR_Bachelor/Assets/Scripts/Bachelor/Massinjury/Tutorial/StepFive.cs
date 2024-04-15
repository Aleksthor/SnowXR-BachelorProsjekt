using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.UI;

namespace SnowXR.MassInjury
{
    public class StepFive : MonoBehaviour
    {
        [SerializeField] private GameObject patient;
        
        [SerializeField] private Slider progressBar;
        [SerializeField] private TextMeshProUGUI percentText;

        [SerializeField] private PulseAudioPlayer rightHand;
        [SerializeField] private PulseAudioPlayer leftHand;
        
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
            
            injury.onRecieveSideLease.AddListener(SideLease);
            
            progressBar.value = 0f;
            percentText.text = "0 %";
            step.text = steps[0];
            hint.text = hints[0];
        }

        private void SideLease()
        {
            progressBar.value = 0.2f;
            percentText.text = "20 %";
            step.text = steps[1];
            hint.text = hints[1];
            
            injury.onRecieveSideLease.RemoveAllListeners();
            
            rightHand.onListenWrist.AddListener(CheckPulse);
            leftHand.onListenWrist.AddListener(CheckPulse);
            
        }

        private void CheckPulse()
        {
            if (rightHand.Active())
            {
                progressBar.value = 0.80f;
                percentText.text = "80 %";
                step.text = steps[4];
                hint.text = hints[4];
            
                rightHand.onListenNeck.RemoveAllListeners();
                leftHand.onListenNeck.RemoveAllListeners();
                    
                injury.onPlaceBand.AddListener(PlaceBand);
            }
            
            if (leftHand.Active())
            {
                progressBar.value = 0.80f;
                percentText.text = "80 %";
                step.text = steps[4];
                hint.text = hints[4];
            
                rightHand.onListenNeck.RemoveAllListeners();
                leftHand.onListenNeck.RemoveAllListeners();
                    
                injury.onPlaceBand.AddListener(PlaceBand);
            }
        }
        

        private void PlaceBand()
        {
            if (injury.GuessedZone() != Zone.Red) return;
            
            progressBar.value = 1f;
            percentText.text = "100 %";
            step.text = steps[5];
            hint.text = hints[5];
            
            injury.onPlaceBand.RemoveAllListeners();
            
            GetComponent<StepVisualizer>().NextStep();
            onStepComplete.Invoke();
        }
    }
}
