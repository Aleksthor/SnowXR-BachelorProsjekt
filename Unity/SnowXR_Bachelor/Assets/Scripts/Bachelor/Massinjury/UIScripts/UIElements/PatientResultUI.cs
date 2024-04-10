using System;
using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.UI;
using MassInjury.Person;

namespace SnowXR.MassInjury
{
    public class PatientResultUI : MonoBehaviour
    {
        [SerializeField] private Sprite male;
        [SerializeField] private Sprite female;
        
        [SerializeField] private Image genderIcon;
        [SerializeField] private TextMeshProUGUI injuryText;
        [SerializeField] private Image correctZone;
        [SerializeField] private Image guessedZone;
        
        [SerializeField] private Image background;
        
        [SerializeField] private Color greenZone;
        [SerializeField] private Color yellowZone;
        [SerializeField] private Color redZone;
        [SerializeField] private Color blackZone;

        private List<string> zoneReasonings = new List<string>();

        private TreatmentResult treatments;

        private Transform treatmentParent;
        private Transform zoneReasoningParent;

        [SerializeField] private GameObject reasonPrefab;
        [SerializeField] private GameObject treatmentPrefab;

        private Color normal;

        private void Start()
        {
            normal = background.color;
        }

        public void Setup(BleedingInjury injury, Transform zoneReason, Transform treatment)
        {
            genderIcon.sprite = injury.GetGenderComponent().GetGender() == Gender.Male ? male : female;

            injuryText.text = GetInjuryText(injury);

            correctZone.color = GetColor(injury.CorrectZone());
            guessedZone.color = GetColor(injury.GuessedZone());

            zoneReasonings = injury.GetZoneReasoning();
            treatments = new TreatmentResult(injury);

            treatmentParent = treatment;
            zoneReasoningParent = zoneReason;

            foreach (var check in treatments.results)
            {
                if (!check)
                {
                    transform.Find("Correct").gameObject.SetActive(false);
                }
            }
        }
        
        private Color GetColor(Zone zone)
        {
            switch (zone)
            {
                case Zone.Green:
                    return greenZone;
                case Zone.Red:
                    return redZone;
                case Zone.Yellow:
                    return yellowZone;
                case Zone.Black:
                    return blackZone;
                default:
                    return greenZone;
            }
        }

        private string GetInjuryText(BleedingInjury injury)
        {
            switch ((BleedingArea)injury.GetBleedingArea())
            {
                case BleedingArea.None:
                    return "Ingen skade";
                case BleedingArea.Head:
                    return "Hode skade";
                case BleedingArea.Neck:
                    return "Nakke skade";
                case BleedingArea.Arms:
                    return "Arm skade";
                case BleedingArea.Torso:
                    return "Mage skade";
                case BleedingArea.Thighs:
                    return "Lår skade";
                case BleedingArea.Legs:
                    return "Legg skade";
            }

            return "";
        }

        public void OnClickResultButton()
        {
            foreach (Transform sibling in transform.parent)
            {
                if (sibling.GetComponent<PatientResultUI>() != null)
                    sibling.GetComponent<PatientResultUI>().ResetBackground();
            }

            background.color = Color.gray;
            
            
            foreach (Transform t in zoneReasoningParent)
            {
                Destroy(t.gameObject);               
            }

            foreach (var s in zoneReasonings)
            {
                GameObject go = Instantiate(reasonPrefab, zoneReasoningParent);
                go.GetComponent<TextMeshProUGUI>().text = s;
            }
            
            
            foreach (Transform t in treatmentParent)
            {
                Destroy(t.gameObject);               
            }
            
            for (int i = 0; i < treatments.treatments.Count; i++)
            {
                
                GameObject go = Instantiate(treatmentPrefab, treatmentParent);
                go.GetComponentInChildren<TextMeshProUGUI>().text = treatments.treatments[i];
                if (!treatments.results[i])
                {
                    go.transform.Find("Correct").gameObject.SetActive(false);
                }
                
            }
        }

        public void ResetBackground()
        {
            background.color = normal;
        }
    }

    public struct TreatmentResult
    {
        public List<string> treatments;
        public List<bool> results;

        public TreatmentResult(BleedingInjury injury)
        {
            treatments = new List<string>();
            results = new List<bool>();

            if (injury.NeedTourniquet())
            {
                treatments.Add("Tourniquet");
                results.Add(injury.RecievedTourniquet());
            }
            if (injury.NeedOpenAirways())
            {
                treatments.Add("Åpne luftveier");
                results.Add(injury.RecievedOpenAirways());
            }
            if (injury.NeedSideLease())
            {
                treatments.Add("Legge i sideleie");
                results.Add(injury.RecievedSideLease());
            }
            if (injury.NeedPressureRelief())
            {
                treatments.Add("Sette trykk avlaster i lungen");
                results.Add(injury.RecievedPressureRelief());
            }
            if (injury.NeedPressure())
            {
                treatments.Add("Stoppe blødninger med trykk");
                results.Add(injury.RecievedPressure());
            }
        }
    }
}
