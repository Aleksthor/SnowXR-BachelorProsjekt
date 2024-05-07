using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;

namespace SnowXR.MassInjury
{
    public class MapPatientUI : MonoBehaviour
    {

        // Gameobjects used for spawning
        [SerializeField] private GameObject reasonUI;
        [SerializeField] private GameObject treatmentUI;

        // A structure with all the results calculated
        private TreatmentResult treatmentResults;

        // Cache
        private BleedingInjury injury;
        private Transform zoneReasonings;
        private Transform treatments;


        public void Setup(BleedingInjury injury, Transform zoneReasonings, Transform treatments)
        {
            this.injury = injury;
            this.zoneReasonings = zoneReasonings;
            this.treatments = treatments;

            // Get all the treamentResults
            // This is for the result UI
            treatmentResults = new TreatmentResult(injury);
        }

        // Click on the patient to show details in result UI
        public void ClickButton()
        {
            List<string> reasons = injury.GetZoneReasoning();

            // * Triage reasoning *
            // Remove the current text
            foreach(Transform child in zoneReasonings) 
            {
                Destroy(child.gameObject);
            }
            // Spawn the reasons for the triage of this patient
            foreach (string reason in reasons)
            {
                GameObject go = Instantiate(reasonUI, zoneReasonings);
                go.GetComponent<TextMeshProUGUI>().text = reason;
            }


            // * Treament details *
            // Remove the current UI elements
            foreach (Transform t in treatments)
            {
                Destroy(t.gameObject);
            }
            // Spawn this patients treament UI elements
            for (int i = 0; i < treatmentResults.treatments.Count; i++)
            {
                GameObject go = Instantiate(treatmentUI, treatments);
                go.GetComponentInChildren<TextMeshProUGUI>().text = treatmentResults.treatments[i];
                if (!treatmentResults.results[i])
                {
                    go.transform.Find("Correct").gameObject.SetActive(false);
                }

            }
        }


    }
}
