using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.UI;

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

            bool wrong = false;
            for (int i = 0; i < treatmentResults.treatments.Count; i++)
            {
                switch (treatmentResults.results[i])
                {
                    case 0: // Correct                      
                        break;
                    case 1: // Wrong
                        transform.Find("Correct").gameObject.SetActive(false);
                        transform.Find("Wrong").GetComponent<Image>().color = Color.red;
                        wrong = true;
                        break;
                    case 2: // Unessacary
                        if (!wrong)
                        {
                            transform.Find("Correct").gameObject.SetActive(false);
                            transform.Find("Wrong").GetComponent<Image>().color = Color.yellow;
                        }
                        break;
                }

            }
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
            bool wrong = false;
            for (int i = 0; i < treatmentResults.treatments.Count; i++)
            {
                GameObject go = Instantiate(treatmentUI, treatments);
                go.GetComponentInChildren<TextMeshProUGUI>().text = treatmentResults.treatments[i];             
                switch (treatmentResults.results[i])
                {
                    case 0: // Correct                      
                        break;
                    case 1: // Wrong
                        go.transform.Find("Correct").gameObject.SetActive(false);
                        go.transform.Find("Wrong").GetComponent<Image>().color = Color.red;
                        wrong = true;
                        break;
                    case 2: // Unessacary
                        if (!wrong)
                        {
                            go.transform.Find("Correct").gameObject.SetActive(false);
                            go.transform.Find("Wrong").GetComponent<Image>().color = Color.yellow;
                        }
                        break;
                    case 3:
                        Destroy(go);
                        break;

                }

            }
        }


    }
}
