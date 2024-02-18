using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace SnowXR.MassInjury
{
    public class ResultsUI : MonoBehaviour
    {
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


            List<GameObject> patients = SpawnManager.instance.GetPatients();
            int i = 0;
            foreach (var go in patients)
            {
                BleedingInjury injury = go.GetComponent<BleedingInjury>();
                ValueTuple<Zone, Zone> guess = injury.GuessedZone();

                if (guess.Item1 == guess.Item2)
                {
                    GameObject zoneVis = Instantiate(patientZoneVisualizer, correctContent);
                    zoneVis.GetComponent<PatientZoneVisualizer>().SetValues("Patient " + i, GetColor(guess.Item2), GetColor(guess.Item1), correct);
                }
                else
                {
                    GameObject zoneVis = Instantiate(patientZoneVisualizer, incorrectContent);
                    zoneVis.GetComponent<PatientZoneVisualizer>().SetValues("Patient " + i, GetColor(guess.Item2), GetColor(guess.Item1), inCorrect);
                }

                i++;
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
    }
}
