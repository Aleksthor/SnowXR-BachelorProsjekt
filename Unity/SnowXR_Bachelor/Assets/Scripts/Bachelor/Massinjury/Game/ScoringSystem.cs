using System.Collections;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;

namespace SnowXR.MassInjury
{
    public class ScoringSystem : MonoBehaviour
    {
        public static ScoringSystem instance;

        [Header("Zone Scores ( / num Patients)")]
        [SerializeField] private float correctZone = 80;
        [SerializeField] private float wrongZoneONE = -50;
        [SerializeField] private float wrongZoneTWO = -75;
        [SerializeField] private float wrongZoneTHREE = -140;
        [SerializeField] private float wrongZoneNONE = 0;
        [SerializeField] private float wrongZoneNTWO = -60;
        [SerializeField] private float wrongZoneNTHREE = -90;

        [Header("Treatment Done Scores ( / num Patients)")]
        [SerializeField] private float openAirwaysDone = 25;
        [SerializeField] private float sideLeaseDone = 40;
        [SerializeField] private float pressureDone = 30;
        [SerializeField] private float tourniquetDone = 60;
        [SerializeField] private float pressureReliefDone = 70;

        [Header("Treatment Not Done Scores ( / num Patients)")]
        [SerializeField] private float openAirwaysNotDone = -25;
        [SerializeField] private float sideLeaseNotDone = -40;
        [SerializeField] private float pressureNotDone = -40;
        [SerializeField] private float tourniquetNotDone = -50;
        [SerializeField] private float pressureReliefNotDone = -60;

        [Header("Treatment Base Scores ( / num Patients)")]
        [SerializeField] private float openAirwaysBase = 25;
        [SerializeField] private float sideLeaseBase = 25;
        [SerializeField] private float pressureBase = 25;
        [SerializeField] private float tourniquetBase = 25;
        [SerializeField] private float pressureReliefBase = 25;

        [Header("Order Too Early Scores ( / num Patients)")]
        [SerializeField] private float greenTooEarly = -20;
        [SerializeField] private float yellowTooEarly = -30;
        [SerializeField] private float redTooEarly = -40;

        [Header("Order Too Late Scores ( / num Patients)")]
        [SerializeField] private float yellowTooLate = -30;
        [SerializeField] private float redTooLate = -40;
        [SerializeField] private float blackTooLate = -40;

        [Header("Correct Order Scores ( / num Patients)")]
        [SerializeField] private float greenCorrectOrder = 80;
        [SerializeField] private float yellowCorrectOrder = 120;
        [SerializeField] private float redCorrectOrder = 160;
        [SerializeField] private float blackCorrectOrder = 140;

        private int order = 0;

        private void Awake()
        {
            if (instance == null)
            {
                instance = this;
            }
        }

        public int ZoneScore(List<GameObject> patients)
        {
            int score = 0;
            foreach (GameObject patient in patients)
            {
                if (patient == null) continue;
                BleedingInjury injury = patient.GetComponent<BleedingInjury>();

                switch ((int)injury.CorrectZone() - (int)injury.GuessedZone())
                {
                    case 0:
                        score += Mathf.FloorToInt(correctZone / patients.Count);
                        break;
                    case 1:
                        score += Mathf.FloorToInt(wrongZoneONE / patients.Count);
                        break;
                    case 2:
                        score += Mathf.FloorToInt(wrongZoneTWO / patients.Count);
                        break;
                    case 3:
                        score += Mathf.FloorToInt(wrongZoneTHREE / patients.Count);
                        break;
                    case -1:
                        score += Mathf.FloorToInt(wrongZoneNONE / patients.Count);
                        break;
                    case -2:
                        score += Mathf.FloorToInt(wrongZoneNTWO / patients.Count);
                        break;
                    case -3:
                        score += Mathf.FloorToInt(wrongZoneNTHREE / patients.Count);
                        break;
                }



                if (injury.GetInspectionTime() < 20f)
                {
                    score += 7;
                }
                else if (injury.GetInspectionTime() < 30f)
                {
                    score += 5;
                }

            }

            return Mathf.Clamp(score, 1, 230);
        }

        public int TreatmentScore(List<GameObject> patients)
        {
            int score = 0;

            foreach (GameObject patient in patients)
            {
                if (patient == null) continue;
                BleedingInjury injury = patient.GetComponent<BleedingInjury>();

                if (injury.NeedOpenAirways())
                {
                    if (injury.RecievedOpenAirways())
                    {
                        score += Mathf.FloorToInt(openAirwaysDone / patients.Count);
                    }
                    else
                    {
                        score += Mathf.FloorToInt(openAirwaysNotDone / patients.Count);
                    }
                }
                else
                {
                    score += Mathf.FloorToInt(openAirwaysBase / patients.Count);
                }

                if (injury.NeedSideLease())
                {
                    if (injury.RecievedSideLease())
                    {
                        score += Mathf.FloorToInt(sideLeaseDone / patients.Count);
                    }
                    else
                    {
                        score += Mathf.FloorToInt(sideLeaseNotDone / patients.Count);
                    }
                }
                else
                {
                    score += Mathf.FloorToInt(sideLeaseBase / patients.Count);
                }

                if (injury.NeedPressure())
                {
                    if (injury.RecievedPressure())
                    {
                        score += Mathf.FloorToInt(pressureDone / patients.Count);
                    }
                    else
                    {
                        score += Mathf.FloorToInt(pressureNotDone / patients.Count);
                    }
                }
                else
                {
                    score += Mathf.FloorToInt(pressureBase / patients.Count);
                }

                if (injury.NeedTourniquet())
                {
                    if (injury.RecievedTourniquet())
                    {
                        score += Mathf.FloorToInt(tourniquetDone / patients.Count);
                    }
                    else
                    {
                        score += Mathf.FloorToInt(tourniquetNotDone / patients.Count);
                    }
                }
                else
                {
                    score += Mathf.FloorToInt(tourniquetBase / patients.Count);
                }

                if (injury.NeedPressureRelief())
                {
                    if (injury.RecievedPressureRelief())
                    {
                        score += Mathf.FloorToInt(pressureReliefDone / patients.Count);
                    }
                    else
                    {
                        score += Mathf.FloorToInt(pressureReliefNotDone / patients.Count);
                    }
                }
                else
                {
                    score += Mathf.FloorToInt(pressureReliefBase / patients.Count);
                }

            }

            return Mathf.Clamp(score, 1, 230);
        }

        public int OrderScore(List<GameObject> patients)
        {
            int score = 0;
            int maxRoom = 0;
            Dictionary<int, List<BleedingInjury>> rooms = new Dictionary<int, List<BleedingInjury>>();

            foreach (GameObject patient in patients) 
            {
                BleedingInjury injury = patient.GetComponent<BleedingInjury>(); 

                if (rooms.ContainsKey(injury.GetRoom()))
                {
                    rooms[injury.GetRoom()].Add(injury);
                }
                else
                {
                    rooms.Add(patient.GetComponent<BleedingInjury>().GetRoom(), new List<BleedingInjury>());
                    rooms[injury.GetRoom()].Add(injury);
                }

                if (injury.GetRoom() > maxRoom)
                {
                    for (int i = 0; i < injury.GetRoom(); i++)
                    {
                        if (!rooms.ContainsKey(i))
                        {
                            rooms.Add(i, new List<BleedingInjury>());
                        }
                    }

                    maxRoom = injury.GetRoom();
                }
            }


            for (int i = 0; i <= maxRoom; i++)
            {
                rooms[i] = rooms[i].OrderBy(p => p.GetOrder()).ToList();
                bool check = false;
                for (int j = 0; j < rooms[i].Count; j++)
                {
                    Zone zone = rooms[i][j].CorrectZone();
                    switch (zone)
                    {
                        case Zone.Green:
                            // Check all the earlier patients
                            check = false;
                            for (int p = 0; p < j; p++)
                            {
                                if ((int)rooms[i][p].CorrectZone() > (int)zone)
                                {
                                    score += Mathf.FloorToInt(greenTooEarly / patients.Count);
                                    check = true;
                                    break;
                                }
                            }
                            if (check)
                                score += Mathf.FloorToInt(greenCorrectOrder / patients.Count);
                            break;
                        case Zone.Yellow:
                            // Check all the earlier patients
                            check = false;
                            for (int p = 0; p < j; p++)
                            {
                                if ((int)rooms[i][p].CorrectZone() > (int)zone)
                                {
                                    score += Mathf.FloorToInt(yellowTooEarly / patients.Count);
                                    check = true;
                                    break;
                                }
                            }                      
                            // Check all the later patients
                            for (int p = 0; p < j; p++)
                            {
                                if ((int)rooms[i][p].CorrectZone() < (int)zone && !check)
                                {
                                    score += Mathf.FloorToInt(yellowTooLate / patients.Count);
                                    check = true;
                                    break;
                                }
                            }
                            if (check)
                                score += Mathf.FloorToInt(yellowCorrectOrder / patients.Count);
                            break;
                        case Zone.Red:
                            // Check all the earlier patients
                            check = false;
                            for (int p = 0; p < j; p++)
                            {                             
                                if ((int)rooms[i][p].CorrectZone() > (int)zone)
                                {
                                    score += Mathf.FloorToInt(redTooEarly / patients.Count);
                                    check = true;
                                    break;
                                }
                            }
                            // Check all the later patients
                            for (int p = 0; p < j; p++)
                            {
                                if ((int)rooms[i][p].CorrectZone() < (int)zone && !check)
                                { 
                                    score += Mathf.FloorToInt(redTooLate / patients.Count);
                                    check = true;
                                    break;
                                }
                            }
                            if (!check)
                                score += Mathf.FloorToInt(redCorrectOrder / patients.Count);
                            break;
                        case Zone.Black:
                            // Check all the later patients
                            check = false;
                            for (int p = 0; p < j; p++)
                            {
                                if ((int)rooms[i][p].CorrectZone() < (int)zone)
                                {
                                    score += Mathf.FloorToInt(blackTooLate / patients.Count);
                                    check = true;
                                    break;
                                }
                            }
                            if (!check)
                                score += Mathf.FloorToInt(blackCorrectOrder / patients.Count);
                            break;

                    }


                }
            }
            return Mathf.Clamp(score + 40, 1, 230);
        }


        public List<int> RoomScores(List<GameObject> patients)
        {
            List<int> scores = new List<int>();

            int maxRoom = 0;
            Dictionary<int, List<BleedingInjury>> rooms = new Dictionary<int, List<BleedingInjury>>();

            foreach (GameObject patient in patients)
            {
                BleedingInjury injury = patient.GetComponent<BleedingInjury>();

                if (rooms.ContainsKey(injury.GetRoom()))
                {
                    rooms[injury.GetRoom()].Add(injury);
                }
                else
                {
                    rooms.Add(patient.GetComponent<BleedingInjury>().GetRoom(), new List<BleedingInjury>());
                    rooms[injury.GetRoom()].Add(injury);
                }

                if (injury.GetRoom() > maxRoom)
                {
                    for (int i = 0; i < injury.GetRoom(); i++)
                    {
                        if (!rooms.ContainsKey(i))
                        {
                            rooms.Add(i, new List<BleedingInjury>());
                        }
                    }
                    maxRoom = injury.GetRoom();
                }
            }


            for (int i = 0; i <= maxRoom; i++)
            {
                int score = 0;
                rooms[i] = rooms[i].OrderBy(p => p.GetOrder()).ToList();

                for (int j = 0; j < rooms[i].Count; j++)
                {
                    if (rooms[i][j] == null) continue;
                    BleedingInjury injury = rooms[i][j];


                    switch ((int)injury.CorrectZone() - (int)injury.GuessedZone())
                    {
                        case 0:
                            score += Mathf.FloorToInt(correctZone / rooms[i].Count);
                            break;
                        case 1:
                            score += Mathf.FloorToInt(wrongZoneONE / rooms[i].Count);
                            break;
                        case 2:
                            score += Mathf.FloorToInt(wrongZoneTWO / rooms[i].Count);
                            break;
                        case 3:
                            score += Mathf.FloorToInt(wrongZoneTHREE / rooms[i].Count);
                            break;
                        case -1:
                            score += Mathf.FloorToInt(wrongZoneNONE / rooms[i].Count);
                            break;
                        case -2:
                            score += Mathf.FloorToInt(wrongZoneNTWO / rooms[i].Count);
                            break;
                        case -3:
                            score += Mathf.FloorToInt(wrongZoneNTHREE / rooms[i].Count);
                            break;
                    }



                    if (injury.GetInspectionTime() < 20f)
                    {
                        score += 7;
                    }
                    else if (injury.GetInspectionTime() < 30f)
                    {
                        score += 5;
                    }


                
                }
                scores.Add(Mathf.Clamp(score, 0, 230));
            }



            return scores;
        }

        public int GetOrder()
        {
            order++;
            return order;
        }
    }
}
