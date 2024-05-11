using System;
using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.UI;
using SnowXR.MassInjury.Person;

namespace SnowXR.MassInjury
{
    public class PatientResultUI : MonoBehaviour
    {
        // Gameobjects for spawning
        [SerializeField] private GameObject reasonPrefab;
        [SerializeField] private GameObject treatmentPrefab;

        // Icons for gender and where they are injured
        [SerializeField] private List<Sprite> males;
        [SerializeField] private List<Sprite> females;
        
        // Image refrences
        [SerializeField] private Image genderIcon;
        [SerializeField] private Image correctZone;
        [SerializeField] private Image guessedZone;
        [SerializeField] private Image background;

        // Text refrences
        [SerializeField] private TextMeshProUGUI injuryText;
        [SerializeField] private TextMeshProUGUI time;

        // Color refrences for triage zone
        [SerializeField] private Color greenZone;
        [SerializeField] private Color yellowZone;
        [SerializeField] private Color redZone;
        [SerializeField] private Color blackZone;

        // Color refrences for the time per patient
        [SerializeField] private Color veryGood;
        [SerializeField] private Color good;
        [SerializeField] private Color bad;
        private Color normal;

        // Cache the details of this patients triage
        private List<string> zoneReasonings = new List<string>();
        private TreatmentResult treatments;

        // Cache Parents
        private Transform treatmentParent;
        private Transform zoneReasoningParent;


        private void Start()
        {
            normal = background.color;
        }

        public void Setup(BleedingInjury injury, Transform zoneReason, Transform treatment)
        {
            // Based on gender and injury, spawn appropriate icon
            switch (injury.GetGenderComponent().GetGender())
            {
                case Gender.Male:
                    switch ((BleedingArea)injury.GetBleedingArea())
                    {
                        case BleedingArea.None:
                            genderIcon.sprite = males[0];
                            break;
                        case BleedingArea.Head:
                            genderIcon.sprite = males[1];
                            break;
                        case BleedingArea.Neck:
                            genderIcon.sprite = males[2];
                            break;
                        case BleedingArea.Arms:
                            genderIcon.sprite = injury.Side() == Comparative.Right ?  males[3] : males[4];
                            break;
                        case BleedingArea.Torso:
                            genderIcon.sprite = males[5];
                            break;
                        case BleedingArea.Thighs:
                            genderIcon.sprite = injury.Side() == Comparative.Right ?  males[6] : males[7];
                            break;
                        case BleedingArea.Legs:
                            genderIcon.sprite = injury.Side() == Comparative.Right ?  males[6] : males[7];
                            break;
                    }
                    break;
                case Gender.Female:
                    switch ((BleedingArea)injury.GetBleedingArea())
                    {
                        case BleedingArea.None:
                            genderIcon.sprite = females[0];
                            break;
                        case BleedingArea.Head:
                            genderIcon.sprite = females[1];
                            break;
                        case BleedingArea.Neck:
                            genderIcon.sprite = females[2];
                            break;
                        case BleedingArea.Arms:
                            genderIcon.sprite = injury.Side() == Comparative.Right ?  females[3] : females[4];
                            break;
                        case BleedingArea.Torso:
                            genderIcon.sprite = females[5];
                            break;
                        case BleedingArea.Thighs:
                            genderIcon.sprite = injury.Side() == Comparative.Right ?  females[6] : females[7];
                            break;
                        case BleedingArea.Legs:
                            genderIcon.sprite = injury.Side() == Comparative.Right ?  females[6] : females[7];
                            break;
                    }
                    break;
            }

            // Set the text on the ui element
            injuryText.text = GetInjuryText(injury);

            // Set the time text on the UI element and color
            time.text = Mathf.FloorToInt(injury.GetInspectionTime()) + " sek";
            if (Mathf.FloorToInt(injury.GetInspectionTime()) < 20)
            {
                time.color = veryGood;
            }
            else if (Mathf.FloorToInt(injury.GetInspectionTime()) < 30)
            {
                time.color = good;
            }
            else
            {
                time.color = bad;
            }

            // Set the color on the ui element
            correctZone.color = GetColor(injury.CorrectZone());
            guessedZone.color = GetColor(injury.GuessedZone());

            // Set the details of the triage and treatment
            zoneReasonings = injury.GetZoneReasoning();
            treatments = new TreatmentResult(injury);

            // Cache the parents
            treatmentParent = treatment;
            zoneReasoningParent = zoneReason;

            // Remove the correct checkmark if we've missed a treatment
            bool wrong = false;
            foreach (var check in treatments.results)
            {
                switch(check)
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
                            transform.Find("Wrong").GetComponent<Image>().color = yellowZone;
                        }
                        break;
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

        // Click the button to show the details of this patient
        public void OnClickResultButton()
        {
            // Highlight this patient so we know who we pressed
            foreach (Transform sibling in transform.parent)
            {
                if (sibling.GetComponent<PatientResultUI>() != null)
                    sibling.GetComponent<PatientResultUI>().ResetBackground();
            }
            background.color = Color.gray;


            // * Triage reasoning *
            // Remove the current text
            foreach (Transform t in zoneReasoningParent)
            {
                Destroy(t.gameObject);               
            }
            // Set the new text
            foreach (var s in zoneReasonings)
            {
                GameObject go = Instantiate(reasonPrefab, zoneReasoningParent);
                go.GetComponent<TextMeshProUGUI>().text = s;
            }


            // * Treament details *
            // Remove the current UI elements
            foreach (Transform t in treatmentParent)
            {
                Destroy(t.gameObject);               
            }
            // Spawn this patients treament UI elements
            bool wrong = false;
            for (int i = 0; i < treatments.treatments.Count; i++)
            {   
                GameObject go = Instantiate(treatmentPrefab, treatmentParent);
                go.GetComponentInChildren<TextMeshProUGUI>().text = treatments.treatments[i];
                switch (treatments.results[i])
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
                    case 3:
                        Destroy(go);
                        break;
                }

            }
        }

        public void ResetBackground()
        {
            background.color = normal;
        }
    }
    // Structure that calculates and stores the details of treatment, given an injury
    public struct TreatmentResult
    {
        public List<string> treatments;
        public List<int> results;

        public TreatmentResult(BleedingInjury injury)
        {
            treatments = new List<string>();
            results = new List<int>();

            treatments.Add("Tourniquet");
            if (injury.NeedTourniquet())
            {
                if (injury.RecievedTourniquet())
                {
                    results.Add(0);
                }
                else
                {
                    results.Add(1);
                }
            }
            else
            {
                if (injury.RecievedTourniquet())
                {
                    results.Add(2);
                }
                else
                {
                    results.Add(3);
                }
            }
            treatments.Add("Åpne luftveier");
            if (injury.NeedOpenAirways())
            {
                if (injury.RecievedOpenAirways())
                {
                    results.Add(0);
                }
                else
                {
                    results.Add(1);
                }
            }
            else
            {
                if (injury.RecievedTourniquet())
                {
                    results.Add(2);
                }
                else
                {
                    results.Add(3);
                }
            }
            treatments.Add("Legge i sideleie");
            if (injury.NeedRecoveryPose())
            {
                if (injury.RecievedRecoveryPose())
                {
                    results.Add(0);
                }
                else
                {
                    results.Add(1);
                }
            }
            else
            {
                if (injury.RecievedRecoveryPose())
                {
                    results.Add(2);
                }
                else
                {
                    results.Add(3);
                }
            }
            


            treatments.Add("Sette trykk avlaster i lungen");
            if (injury.NeedPressureRelief())
            {
                if (injury.RecievedPressureRelief())
                {
                    results.Add(0);
                }
                else
                {
                    results.Add(1);
                }
            }
            else
            {
                if (injury.RecievedPressureRelief())
                {
                    results.Add(2);
                }
                else
                {
                    results.Add(3);
                }
            }
            
            treatments.Add("Stoppe blødninger med trykk");
            if (injury.NeedPressure())
            {
                if (injury.RecievedPressure())
                {
                    results.Add(0);
                }
                else
                {
                    results.Add(1);
                }
            }
            else
            {
                if (injury.RecievedPressure())
                {
                    results.Add(2);
                }
                else
                {
                    results.Add(3);
                }
            }
            treatments.Add("Bandage");
            if (injury.NeedBandage())
            {
                if (injury.RecievedBandage())
                {
                    results.Add(0);
                }
                else
                {
                    results.Add(1);
                }
            }
            else
            {
                if (injury.RecievedBandage())
                {
                    results.Add(2);
                }
                else
                {
                    results.Add(3);
                }
            }
        }
    }
}
