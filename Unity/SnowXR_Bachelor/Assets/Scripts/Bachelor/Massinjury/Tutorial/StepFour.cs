using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.UI;

namespace SnowXR.MassInjury
{
    public class StepFour : MonoBehaviour
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
            progressBar.value = 0.25f;
            percentText.text = "25 %";
            
            injury.onRecieveSideLease.RemoveAllListeners();
            
            rightHand.onListen.AddListener(CheckHands);
            leftHand.onListen.AddListener(CheckHands);
            
        }

        private void CheckHands()
        {
            if (rightHand.Active())
            {
                if (rightHand.Area() == PulseArea.Wrist)
                {
                    progressBar.value = 0.5f;
                    percentText.text = "50 %";
            
                    rightHand.onListen.RemoveAllListeners();
                    leftHand.onListen.RemoveAllListeners();
                    
                    rightHand.onListen.AddListener(CheckNeck);
                    leftHand.onListen.AddListener(CheckNeck);
                }
            }
            
            if (leftHand.Active())
            {
                if (leftHand.Area() == PulseArea.Wrist)
                {
                    progressBar.value = 0.5f;
                    percentText.text = "50 %";
            
                    rightHand.onListen.RemoveAllListeners();
                    leftHand.onListen.RemoveAllListeners();
                    
                    rightHand.onListen.AddListener(CheckNeck);
                    leftHand.onListen.AddListener(CheckNeck);
                }
            }
        }

        private void CheckNeck()
        {
            if (rightHand.Active())
            {
                if (rightHand.Area() == PulseArea.Neck)
                {
                    progressBar.value = 0.75f;
                    percentText.text = "75 %";
            
                    rightHand.onListen.RemoveAllListeners();
                    leftHand.onListen.RemoveAllListeners();
                    
                    injury.onPlaceBand.AddListener(PlaceBand);
                }
            }
            
            if (leftHand.Active())
            {
                if (leftHand.Area() == PulseArea.Neck)
                {
                    progressBar.value = 0.75f;
                    percentText.text = "75 %";
            
                    rightHand.onListen.RemoveAllListeners();
                    leftHand.onListen.RemoveAllListeners();
                    
                    injury.onPlaceBand.AddListener(PlaceBand);
                }
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
