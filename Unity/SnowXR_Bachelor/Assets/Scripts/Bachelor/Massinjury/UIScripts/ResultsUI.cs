using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;
using UnityEngine.UI;

namespace SnowXR.MassInjury
{
    public class ResultsUI : MonoBehaviour
    {
        public static ResultsUI instance;
        
        [SerializeField] private RectTransform incorrectContent;
        [SerializeField] private RectTransform correctContent;

        [SerializeField] private GameObject patientZoneVisualizer;
        
        [Header("Colors")] 
        [SerializeField] private Color correct;
        [SerializeField] private Color inCorrect;
        
        [SerializeField] private Color greenZone;
        [SerializeField] private Color yellowZone;
        [SerializeField] private Color redZone;
        [SerializeField] private Color blackZone;

        [SerializeField] private Text zoneReasoning;
        
        
        [SerializeField] private Text correctGuessScoreText;
        [SerializeField] private Text wrongGuessScoreText;
        [SerializeField] private Text worseZoneScoreText;
        [SerializeField] private Text equipmentScoreText;
        [SerializeField] private Text noEquipmentScoreText;
        [SerializeField] private Text totalText;

        [SerializeField] private int correctGuessScore = 500;
        [SerializeField] private int wrongGuessScore = -250;
        [SerializeField] private int worseZoneScore = -250;
        [SerializeField] private int equipmentScore = 300;
        [SerializeField] private int noEquipmentScore = -400;
        private void Awake()
        {
            if (instance == null)
            {
                instance = this;
            }
        }

        public void ShowResults()
        {
            foreach (Transform child in correctContent)
            {
                Destroy(child.gameObject);
            }
            foreach (Transform child in incorrectContent)
            {
                Destroy(child.gameObject);
            }


            List<GameObject> patients = new List<GameObject>(SpawnManager.instance.GetPatients());
            patients = patients.OrderBy(x => (int)x.GetComponent<BleedingInjury>().ZoneTuple().Item2).ToList();

            int i = 0;
            int correctS = 0;
            int wrongS = 0;
            int worseS = 0;
            int equipS = 0;
            int noequipS = 0;
            int total = 0;
            foreach (var go in patients)
            {
                BleedingInjury injury = go.GetComponent<BleedingInjury>();
                ValueTuple<Zone, Zone> guess = injury.ZoneTuple();

                if (guess.Item1 == guess.Item2)
                {
                    GameObject zoneVis = Instantiate(patientZoneVisualizer, correctContent);
                    zoneVis.GetComponent<PatientZoneVisualizer>().SetValues("Pasient " + i, GetColor(guess.Item2), GetColor(guess.Item1), GetColor(guess.Item2), correct, 
                        GetColor(injury.NeedTourniquet()), GetColor(injury.RecievedTourniquet()), 
                        GetColor(injury.NeedPharyngealTube()), GetColor(injury.RecievedPharyngealTube()), 
                        GetColor(injury.NeedPressureRelief()), GetColor(injury.RecievedPressureRelief()));
                    zoneVis.GetComponent<PatientZoneVisualizer>().SetupZoneButton(injury);
                    correctS += correctGuessScore;
                }
                else
                {
                    GameObject zoneVis = Instantiate(patientZoneVisualizer, incorrectContent);
                    zoneVis.GetComponent<PatientZoneVisualizer>().SetValues("Pasient " + i, GetColor(guess.Item2), GetColor(guess.Item1),GetColor(guess.Item2), inCorrect,
                        GetColor(injury.NeedTourniquet()), GetColor(injury.RecievedTourniquet()), 
                        GetColor(injury.NeedPharyngealTube()), GetColor(injury.RecievedPharyngealTube()), 
                        GetColor(injury.NeedPressureRelief()), GetColor(injury.RecievedPressureRelief()));
                    zoneVis.GetComponent<PatientZoneVisualizer>().SetupZoneButton(injury);
                    wrongS += wrongGuessScore * Mathf.Abs(guess.Item1 - guess.Item2);
                }
                

                if (injury.NeedTourniquet())
                {
                    if (injury.RecievedTourniquet())
                    {
                        equipS += equipmentScore;
                    }
                    else
                    {
                        noequipS += noEquipmentScore;
                    }
                }
                if (injury.NeedPharyngealTube())
                {
                    if (injury.RecievedPharyngealTube())
                    {
                        equipS += equipmentScore;
                    }
                    else
                    {
                        noequipS += noEquipmentScore;
                    }
                }
                if (injury.NeedPressureRelief())
                {
                    if (injury.RecievedPressureRelief())
                    {
                        equipS += equipmentScore;
                    }
                    else
                    {
                        noequipS += noEquipmentScore;
                    }
                }
                
                
                i++;
            }

            correctGuessScoreText.text = correctS.ToString();
            wrongGuessScoreText.text = wrongS.ToString();
            worseZoneScoreText.text = worseS.ToString();
            equipmentScoreText.text = equipS.ToString();
            noEquipmentScoreText.text = noequipS.ToString();

            total = correctS + wrongS + worseS + equipS + noequipS;

            totalText.text = total.ToString();



        }

        public void SetZoneReasoning(string text)
        {
            zoneReasoning.text = text;
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
        
        private Color GetColor(bool check)
        {
            return check ? greenZone : redZone;
        }
    }
}
