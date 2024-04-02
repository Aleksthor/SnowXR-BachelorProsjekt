using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.UI;

namespace SnowXR.MassInjury
{
    public class StepTwo : MonoBehaviour
    {
        [SerializeField] private GameObject patient;
        
        [SerializeField] private Transform tourniquet1Parent;
        [SerializeField] private Transform tourniquet2Parent;
        [SerializeField] private Transform bandParent;
        
        [SerializeField] private Slider progressBar;
        [SerializeField] private TextMeshProUGUI percentText;
        
        private List<GameObject> bands = new List<GameObject>();

        private GameObject tourniquet1;
        private GameObject tourniquet2;

        private BleedingInjury injury;

        [SerializeField] private UnityEvent onStepComplete;
        
        // Start is called before the first frame update
        void Start()
        {
            tourniquet1 = tourniquet1Parent.GetChild(0).gameObject;
            tourniquet2 = tourniquet2Parent.GetChild(0).gameObject;
            
            tourniquet1.GetComponent<TourniquetPlacement>().onPickup.AddListener(PickupTourniquet);
            tourniquet2.GetComponent<TourniquetPlacement>().onPickup.AddListener(PickupTourniquet);
            

            injury = patient.GetComponent<BleedingInjury>();
            
            progressBar.value = 0f;
            percentText.text = "0 %";
            
        }

        private void PickupTourniquet()
        {
            progressBar.value = 0.25f;
            percentText.text = "25 %";
            
            tourniquet1.GetComponent<TourniquetPlacement>().onPickup.RemoveAllListeners();
            tourniquet2.GetComponent<TourniquetPlacement>().onPickup.RemoveAllListeners();
            
            tourniquet1.GetComponent<TourniquetPlacement>().onPlacement.AddListener(PlaceTourniquet);
            tourniquet2.GetComponent<TourniquetPlacement>().onPlacement.AddListener(PlaceTourniquet);
            
        }

        private void PlaceTourniquet()
        {
            progressBar.value = 0.50f;
            percentText.text = "50 %";
            
            tourniquet1.GetComponent<TourniquetPlacement>().onPlacement.RemoveAllListeners();
            tourniquet2.GetComponent<TourniquetPlacement>().onPlacement.RemoveAllListeners();
            
            patient.GetComponent<BleedingInjury>().onPlaceTourniquet.AddListener(RecieveTourniquet);
            
        }

        private void RecieveTourniquet()
        {
            progressBar.value = 0.75f;
            percentText.text = "75 %";
            
            patient.GetComponent<BleedingInjury>().onPlaceTourniquet.RemoveListener(PlaceTourniquet);
            
            injury.onPlaceBand.AddListener(BandPlacement);
        }

        private void BandPlacement()
        {
            if (injury.GuessedZone() != Zone.Yellow) return;
            
            progressBar.value = 1f;
            percentText.text = "100 %";
            
            injury.onPlaceBand.RemoveAllListeners();
            
            GetComponent<StepVisualizer>().NextStep();
            onStepComplete.Invoke();
        }
    }
}
