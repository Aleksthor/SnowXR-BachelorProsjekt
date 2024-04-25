using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;

namespace SnowXR.MassInjury
{
    public class MapPatientUI : MonoBehaviour
    {
        private BleedingInjury injury;
        private Transform zoneReasonings;
        private Transform treatments;

        private TreatmentResult treatmentResults;

        [SerializeField] private GameObject reasonUI;
        [SerializeField] private GameObject treatmentUI;

        public void Setup(BleedingInjury injury, Transform zoneReasonings, Transform treatments)
        {
            this.injury = injury;
            this.zoneReasonings = zoneReasonings;
            this.treatments = treatments;

            treatmentResults = new TreatmentResult(injury);
        }

        public void ClickButton()
        {
            List<string> reasons = injury.GetZoneReasoning();

            foreach(Transform child in zoneReasonings) 
            {
                Destroy(child.gameObject);
            }

            foreach (string reason in reasons)
            {
                GameObject go = Instantiate(reasonUI, zoneReasonings);
                go.GetComponent<TextMeshProUGUI>().text = reason;
            }



            foreach (Transform t in treatments)
            {
                Destroy(t.gameObject);
            }

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
