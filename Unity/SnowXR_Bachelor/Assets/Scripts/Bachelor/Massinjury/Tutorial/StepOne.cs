using System.Collections;
using System.Collections.Generic;
using BNG;
using TMPro;
using UnityEngine;
using UnityEngine.Events;
using Slider = UnityEngine.UI.Slider;

namespace SnowXR.MassInjury
{
    public class StepOne : MonoBehaviour
    {
        [SerializeField] private GameObject patient;

        [SerializeField] private UnityEvent onStepComplete;

        [SerializeField] private Transform bandParent;
        [SerializeField] private Slider progressBar;
        [SerializeField] private TextMeshProUGUI percentText;

        private List<GameObject> bands = new List<GameObject>();

        [SerializeField] private List<string> steps = new List<string>();
        [SerializeField] private List<string> hints = new List<string>();

        [SerializeField] private TextMeshProUGUI step;
        [SerializeField] private TextMeshProUGUI hint;

        private BleedingInjury injury;
        // Start is called before the first frame update
        void Start()
        {
            injury = patient.GetComponent<BleedingInjury>();

            foreach (Transform child in bandParent)
            {
                bands.Add(child.gameObject);
                child.GetComponent<BandPlacement>().onPickup.AddListener(BandPickup);
            }

            progressBar.value = 0f;
            percentText.text = "0 %";

            step.text = steps[0];
            hint.text = hints[0];
        }

        private void StepComplete()
        {
            if (injury.GuessedZone() == Zone.Green)
            {
                onStepComplete.Invoke();
                GetComponent<StepVisualizer>().NextStep();
                progressBar.value = 1f;
                percentText.text = "100 %";
                
                step.text = steps[2];
                hint.text = hints[2];
            }
        }

        private void BandPickup()
        {
            foreach (var band in bands)
            {
                if (band.GetComponent<Grabbable>().BeingHeld || band.GetComponent<Grabbable>().RemoteGrabbing)
                {
                    if (band.GetComponent<BandPlacement>().Zone() == Zone.Green)
                    {
                        progressBar.value = 0.5f;
                        percentText.text = "50 %";
                        step.text = steps[1];
                        hint.text = hints[1];
                        band.GetComponent<BandPlacement>().onPickup.RemoveAllListeners();
                    }
                }
            }
            
            
            injury.onPlaceBand.AddListener(StepComplete);
        }
    }
}
