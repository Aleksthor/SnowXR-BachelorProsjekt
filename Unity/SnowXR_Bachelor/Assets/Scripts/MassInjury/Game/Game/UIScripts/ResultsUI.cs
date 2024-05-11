using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using TMPro;
using UnityEngine;
using UnityEngine.UI;
using SnowXR.MassInjury.Person;

namespace SnowXR.MassInjury
{
    public class ResultsUI : MonoBehaviour
    {

        // * Colors *
        [Header("Colors")] 
        [SerializeField] private Color correct;
        [SerializeField] private Color inCorrect;

        [SerializeField] private Color green;
        [SerializeField] private Color yellow;
        [SerializeField] private Color red;
        [SerializeField] private Color black;
        
        [SerializeField] private Color correctGuess;
        [SerializeField] private Color wrongGuess;

        // * List view * 
        // Gameobject to spawn
        [SerializeField] private GameObject patientResultUI;

        // Reference to content parents
        [SerializeField] private RectTransform content;
        [SerializeField] private Transform zoneReasoningParent;
        [SerializeField] private Transform treatmentParent;
        
        [SerializeField] private Transform list;


        // * Map view *
        // Gameobject to spawn
        [SerializeField] private GameObject mapPatient;

        // Gender sprites
        [SerializeField] private Sprite male;
        [SerializeField] private Sprite female;

        // Parent of each room
        [SerializeField] private Transform roomA;
        [SerializeField] private Transform roomB;
        [SerializeField] private Transform roomC;
        [SerializeField] private Transform roomD;
        [SerializeField] private Transform roomE;

        // Background Reference to change colors
        [SerializeField] private Image mapBackground;

        // Parent of map
        [SerializeField] private Transform map;

        // * Details view *
        // Reference to score texts
        [SerializeField] private TextMeshProUGUI zoneScore;
        [SerializeField] private TextMeshProUGUI treatmentScore;
        [SerializeField] private TextMeshProUGUI orderScore;

        // * Button to swap between list and map
        [SerializeField] private TextMeshProUGUI buttonText;


        private void Start()
        {
            Material mapMaterial = mapBackground.material;
            mapMaterial.SetFloat("_SE", 0.75f);
            mapMaterial.SetFloat("_SW", 0.75f);
            mapMaterial.SetFloat("_NE", 0.75f);
            mapMaterial.SetFloat("_NW", 0.75f);
            mapMaterial.SetFloat("_Middle", 0.75f);
        }

        public void ShowResults()
        {
            List<GameObject> patients = SpawnManager.instance.GetPatients();
            patients = patients.OrderBy(p => (int)p.GetComponent<BleedingInjury>().CorrectZone()).ToList();

            Material mapMaterial = mapBackground.material;
            List<int> roomScores = ScoringSystem.instance.RoomScores(patients);
            if (roomScores[0] != 0) mapMaterial.SetFloat("_SE", roomScores[0]);
            if (roomScores[4] != 0) mapMaterial.SetFloat("_SW", roomScores[4]);
            if (roomScores[1] != 0) mapMaterial.SetFloat("_NE", roomScores[1]);
            if (roomScores[2] != 0) mapMaterial.SetFloat("_NW", roomScores[2]);
            if (roomScores[3] != 0) mapMaterial.SetFloat("_Middle", roomScores[3]);

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
                   


            SpawnPatientsOnMap();
        }

        public float remap(float val, float in1, float in2, float out1, float out2)
        {
            return out1 + (val - in1) * (out2 - out1) / (in2 - in1);
        }

        public void SwapView()
        {
            map.gameObject.SetActive(!map.gameObject.activeSelf);
            list.gameObject.SetActive(!list.gameObject.activeSelf);

            if (map.gameObject.activeSelf)
            {
                buttonText.text = "Se Liste";
            }
            else
            {
                buttonText.text = "Se Kart";
            }
        }


        private void SpawnPatientsOnMap()
        {
            List<GameObject> patients = SpawnManager.instance.GetPatients();

            foreach (var go in patients)
            {
                BleedingInjury injury = go.GetComponent<BleedingInjury>();
                if (injury == null ) { continue; }

                GameObject p = null;
                switch (injury.GetRoom())
                {
                    case 0:
                        p = Instantiate(mapPatient,roomA.Find(injury.GetSlot().ToString()));
                        break;
                    case 1:
                         p = Instantiate(mapPatient, roomB.Find(injury.GetSlot().ToString()));
                        break;
                    case 2:
                        p = Instantiate(mapPatient, roomC.Find(injury.GetSlot().ToString()));
                        break;
                    case 3:
                        p = Instantiate(mapPatient, roomD.Find(injury.GetSlot().ToString()));
                        break;
                    case 4:
                        p = Instantiate(mapPatient, roomE.Find(injury.GetSlot().ToString()));
                        break;
                }
                if (p == null) { continue; }
                p.transform.Find("Body").GetComponent<Image>().sprite = injury.GetGenderComponent().GetGender() == Gender.Male ? male : female;
                p.transform.Find("Body").GetComponent<Image>().color = injury.GuessedZone() == injury.CorrectZone() ? correctGuess : wrongGuess;
                p.transform.Find("Band").GetComponent<Image>().color = GetColor(injury.GuessedZone());
                p.GetComponent<MapPatientUI>().Setup(injury, zoneReasoningParent, treatmentParent);             

            }

        }

        private Color GetColor(Zone zone)
        {
            switch (zone)
            {
                case Zone.Green:
                    return green;
                case Zone.Yellow:
                    return yellow;
                case Zone.Red:
                    return red;
                case Zone.Black:
                    return black;
            }

            return green;
        }
    }
}
