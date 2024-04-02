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

        [SerializeField] private PulsePlayer rightHand;
        [SerializeField] private PulsePlayer leftHand;
        
        private BleedingInjury injury;
        
        [SerializeField] private UnityEvent onStepComplete;
        
        // Start is called before the first frame update
        void Start()
        {
            injury = patient.GetComponent<BleedingInjury>();
            
            injury.onRecieveSideLease.AddListener(SideLease);
            
            progressBar.value = 0f;
            percentText.text = "0 %";
        }

        private void SideLease()
        {
            progressBar.value = 0.2f;
            percentText.text = "20 %";
            
            injury.onRecieveSideLease.RemoveAllListeners();
            
            rightHand.onListen.AddListener(CheckPulse);
            leftHand.onListen.AddListener(CheckPulse);
            
        }

        private void CheckPulse()
        {
            if (rightHand.Active())
            {
                progressBar.value = 0.80f;
                percentText.text = "80 %";
            
                rightHand.onListen.RemoveAllListeners();
                leftHand.onListen.RemoveAllListeners();
                    
                injury.onPlaceBand.AddListener(PlaceBand);
            }
            
            if (leftHand.Active())
            {
                progressBar.value = 0.80f;
                percentText.text = "80 %";
            
                rightHand.onListen.RemoveAllListeners();
                leftHand.onListen.RemoveAllListeners();
                    
                injury.onPlaceBand.AddListener(PlaceBand);
            }
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
