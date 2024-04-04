using System.Collections;
using System.Collections.Generic;
using Bachelor.Dialogue;
using TMPro;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.UI;

namespace SnowXR.MassInjury
{
    public class StepSix : MonoBehaviour
    {
        [SerializeField] private GameObject patient;
        
        [SerializeField] private Slider progressBar;
        [SerializeField] private TextMeshProUGUI percentText;
        
        private BleedingInjury injury;
        private List<Dialogue> dialogues = new List<Dialogue>();
        
        [SerializeField] private UnityEvent onStepComplete;
        
        [SerializeField] private List<string> steps = new List<string>();
        [SerializeField] private List<string> hints = new List<string>();

        [SerializeField] private TextMeshProUGUI step;
        [SerializeField] private TextMeshProUGUI hint;
        
        // Start is called before the first frame update
        void Start()
        {
            injury = patient.GetComponent<BleedingInjury>();
            
            dialogues = patient.GetComponent<DialogueResponder>().GetPlayerOptions();
            
            dialogues[0].onLineExit.AddListener(AskIfAwake);
            
            progressBar.value = 0f;
            percentText.text = "0 %";
            step.text = steps[0];
            hint.text = hints[0];
        }

        private void AskIfAwake()
        {
            if (dialogues.Count > 0)
            {
                dialogues[0].onLineExit.RemoveListener(AskIfAwake);
            }

            if (injury.GetComponent<DialogueResponder>().AskIfAwake())
            {
                progressBar.value = 1f;
                percentText.text = "100 %";
                step.text = steps[3];
                hint.text = hints[3];
                
                onStepComplete.Invoke();
            }
            else
            {
                progressBar.value = 0.5f;
                percentText.text = "50 %";
                step.text = steps[2];
                hint.text = hints[2];
                
                injury.onPlaceBand.AddListener(PlaceBand);
            }
        }

        private void PlaceBand()
        {
            progressBar.value = 1f;
            percentText.text = "100 %";
            step.text = steps[3];
            hint.text = hints[3];
            
            injury.onPlaceBand.RemoveAllListeners();
            
            GetComponent<StepVisualizer>().NextStep();
            onStepComplete.Invoke();
        }
    }
}
