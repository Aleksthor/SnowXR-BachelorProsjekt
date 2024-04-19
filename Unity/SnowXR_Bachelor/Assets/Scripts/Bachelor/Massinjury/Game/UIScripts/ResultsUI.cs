using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using TMPro;
using UnityEngine;
using UnityEngine.UI;

namespace SnowXR.MassInjury
{
    public class ResultsUI : MonoBehaviour
    {
        
        [SerializeField] private RectTransform content;

        [SerializeField] private GameObject patientResultUI;
        
        [Header("Colors")] 
        [SerializeField] private Color correct;
        [SerializeField] private Color inCorrect;

        [SerializeField] private Transform zoneReasoningParent;
        [SerializeField] private Transform treatmentParent;

        [SerializeField] private TextMeshProUGUI zoneScore;
        [SerializeField] private TextMeshProUGUI treatmentScore;
        [SerializeField] private TextMeshProUGUI orderScore;

        public void ShowResults()
        {
            List<GameObject> patients = SpawnManager.instance.GetPatients();
            
            foreach (var go in patients)
            {
                bool next = false;
                BleedingInjury injury = go.GetComponent<BleedingInjury>();
                GameObject patientResult = Instantiate(patientResultUI, content);
                patientResult.GetComponent<PatientResultUI>().Setup(injury, zoneReasoningParent, treatmentParent);
                
                foreach (Transform child in content)
                {
                    if (child.GetComponent<TextMeshProUGUI>() != null)
                    {
                        if (injury.GuessedZone() == injury.CorrectZone() &&
                            child.GetComponent<TextMeshProUGUI>().text == "Riktig Sone")
                        {
                            patientResult.transform.SetSiblingIndex(child.GetSiblingIndex() + 1);
                            
                            patientResult.transform.Find("Border (Color)").GetComponent<Image>().color = correct;
                            break;
                        }
                    }

                    if (child.GetComponent<TextMeshProUGUI>() != null)
                    {
                        if (injury.GuessedZone() != injury.CorrectZone() &&
                            child.GetComponent<TextMeshProUGUI>().text == "Feil Sone")
                        {
                            patientResult.transform.SetSiblingIndex(child.GetSiblingIndex() + 1);

                            patientResult.transform.Find("Border (Color)").GetComponent<Image>().color = inCorrect;
                            break;
                        }
                    }
                    
                }
            }

            zoneScore.text = ScoringSystem.instance.ZoneScore(patients).ToString();
            treatmentScore.text = ScoringSystem.instance.TreatmentScore(patients).ToString();
            orderScore.text = ScoringSystem.instance.OrderScore(patients).ToString();

        }
        
        
    }
}
