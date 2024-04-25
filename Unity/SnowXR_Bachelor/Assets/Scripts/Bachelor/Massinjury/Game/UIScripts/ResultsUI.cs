using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using TMPro;
using UnityEngine;
using UnityEngine.UI;
using MassInjury.Person;

namespace SnowXR.MassInjury
{
    public class ResultsUI : MonoBehaviour
    {
        
        [SerializeField] private RectTransform content;

        [SerializeField] private GameObject patientResultUI;
        
        [Header("Colors")] 
        [SerializeField] private Color correct;
        [SerializeField] private Color inCorrect;

        [SerializeField] private Color green;
        [SerializeField] private Color yellow;
        [SerializeField] private Color red;
        [SerializeField] private Color black;

        [SerializeField] private Transform zoneReasoningParent;
        [SerializeField] private Transform treatmentParent;

        [SerializeField] private TextMeshProUGUI zoneScore;
        [SerializeField] private TextMeshProUGUI treatmentScore;
        [SerializeField] private TextMeshProUGUI orderScore;

        [SerializeField] private TextMeshProUGUI A;
        [SerializeField] private TextMeshProUGUI B;
        [SerializeField] private TextMeshProUGUI C;
        [SerializeField] private TextMeshProUGUI D;
        [SerializeField] private TextMeshProUGUI E;

        [SerializeField] private Image mapBackground;

        [SerializeField] private Transform map;
        [SerializeField] private Transform list;
        [SerializeField] private TextMeshProUGUI buttonText;

        [SerializeField] private Color correctGuess;
        [SerializeField] private Color wrongGuess;

        [SerializeField] private Transform roomA;
        [SerializeField] private Transform roomB;
        [SerializeField] private Transform roomC;
        [SerializeField] private Transform roomD;
        [SerializeField] private Transform roomE;

        [SerializeField] private GameObject mapPatient;

        [SerializeField] private Sprite male;
        [SerializeField] private Sprite female;


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

            List<int> roomScores = ScoringSystem.instance.RoomScores(patients);

            Material mapMaterial = mapBackground.material;
            

            for(int i = 0; i < roomScores.Count; i++)
            {
                if (roomScores[i] == 0) continue;
                switch (i)
                {
                    case 0:                      
                        mapMaterial.SetFloat("_SE", remap(roomScores[i], 0, 150, 0f, 1f));
                        A.transform.parent.gameObject.SetActive(true);
                        A.text = roomScores[i].ToString();  
                        break;
                    case 1:
                        mapMaterial.SetFloat("_NE", remap(roomScores[i], 0, 150, 0f, 1f));
                        B.transform.parent.gameObject.SetActive(true);
                        B.text = roomScores[i].ToString();
                        break;               
                    case 2:
                        mapMaterial.SetFloat("_NW", remap(roomScores[i], 0, 150, 0f, 1f));
                        C.transform.parent.gameObject.SetActive(true);
                        C.text = roomScores[i].ToString();
                        break;                
                    case 3:
                        mapMaterial.SetFloat("_Middle", remap(roomScores[i], 0, 150, 0f, 1f));
                        D.transform.parent.gameObject.SetActive(true);
                        D.text = roomScores[i].ToString();
                        break;
                    case 4:
                        mapMaterial.SetFloat("_NE", remap(roomScores[i], 0, 150, 0f, 1f));
                        E.transform.parent.gameObject.SetActive(true);
                        E.text = roomScores[i].ToString();
                        break;
                }
            }


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
                bool checkmark = true;

                if (injury.NeedOpenAirways() && !injury.RecievedOpenAirways())
                {
                    checkmark = false;
                }
                if (injury.NeedPressure() && !injury.RecievedPressure())
                {
                    checkmark = false;
                }
                if (injury.NeedPressureRelief() && !injury.RecievedPressureRelief())
                {
                    checkmark = false;
                }
                if (injury.NeedSideLease() && !injury.RecievedSideLease())
                {
                    checkmark = false;
                }
                if (injury.NeedTourniquet() && !injury.RecievedTourniquet())
                {
                    checkmark = false;
                }

                if (!checkmark)
                {
                    p.transform.Find("Checkmark").gameObject.SetActive(false);
                }

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
