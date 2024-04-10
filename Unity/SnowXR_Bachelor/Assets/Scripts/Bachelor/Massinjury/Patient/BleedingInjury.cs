using System;
using System.Collections;
using System.Collections.Generic;
using BA.GOAP;
using MassInjury.Person;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.Serialization;
using Random = UnityEngine.Random;


namespace SnowXR.MassInjury
{
    [RequireComponent(typeof(GoapAgent), typeof(PatientAnimationController))]
    public class BleedingInjury : MonoBehaviour
    {
        [Header("Chance Settings, For Spawning")] 
        [SerializeField] private bool randomInjury = true;
        [FormerlySerializedAs("firstInjury")] [SerializeField, Range(0f, 1f)] private float injuryChance;
        [SerializeField] private int headInjuryWeight = 10;
        [SerializeField] private int neckInjuryWeight = 20;
        [SerializeField] private int armInjuryWeight = 30;
        [SerializeField] private int torsoInjuryWeight = 25;
        [SerializeField] private int thighInjuryWeight = 25;
        [SerializeField] private int legsInjuryWeight = 10;

        [FormerlySerializedAs("bleedingStatus")] 
        [Header("Bleeding Status")] 
        [SerializeField] private BleedingArea bleedingArea;
        [SerializeField] private Comparative bleedingSide = Comparative.None;
        
        [Header("Blood Loss")] 
        [SerializeField] private BloodLossSeverity bloodLossSeverity;
        [SerializeField] public float bloodLossML = 0f;
        
        [Header("Breath Status")]
        [SerializeField] private BreathingStatus breathingStatus;
        
        [Header("Pulse Status")]
        [SerializeField] private int pulse;
        
        [Header("Reasoning")] 
        [SerializeField] private List<string> zoneReasoning = new List<string>();
        private bool inspectionDone = false;
        
        [Header("Results")]
        [SerializeField] private Zone guessedZone;
        [SerializeField] private Zone correctZone;
        
        [Header("Equipment")]
        [SerializeField] private bool needTourniquet = false;
        [SerializeField] private bool recievedTourniquet = false;
        [SerializeField] private bool needPressureRelief = false;
        [SerializeField] private bool recievedPressureRelief = false;
        [SerializeField] private bool needSideLease = false;
        [SerializeField] private bool recievedSideLease = false;
        [SerializeField] private bool needOpenAirways = false;
        [SerializeField] private bool recievedOpenAirways = false;
        [SerializeField] private bool needPressure = false;
        [SerializeField] private bool recievedPressure = false;
        [SerializeField] private bool needPharyngealTube = false;
        [SerializeField] private bool recievedPharyngealTube = false;

        
        //Cache
        private GoapAgent agent;
        private PatientAnimationController patientAnimationController;
        private GenderComponent genderComponent;
        
        // Logic
        private float timer = 0f;
        private int totalInjuryScore = 0;
        [SerializeField] private bool concious = true;
        [SerializeField] private bool dead = false;
        [SerializeField] private AnimState state = AnimState.Standing;
        private bool sitting = false;
        private bool setupSitting = false;

        public UnityEvent onPlaceTourniquet;
        public UnityEvent onPlaceBand;
        public UnityEvent onRecievePressure;
        public UnityEvent onRecievePressureRelief;
        public UnityEvent onRecieveOpenAirways;
        public UnityEvent onRecieveSideLease;
        
        private void Awake()
        {
            agent = GetComponent<MassInjuryAgent>();
            patientAnimationController = GetComponent<PatientAnimationController>();
            genderComponent = GetComponent<GenderComponent>();
            
            totalInjuryScore = headInjuryWeight + neckInjuryWeight + armInjuryWeight + torsoInjuryWeight + thighInjuryWeight + legsInjuryWeight;
            if (randomInjury)
            { 
                bloodLossML = 0f;
                bloodLossSeverity = BloodLossSeverity.None;
                concious = true;
                InitInjuries();
                CalculateBreathing();
                CalculatePulse();
            }
            else
            {
                if (dead) Die();
            }
            CalculateCorrectZone();
            CalculateNeededHelp();
            DebugAnimationState();
        }

        private void InitInjuries()
        {

            breathingStatus = 0;
            pulse = 0;

            // Chance to get first Injury
            if (!RandomBool(injuryChance))
            {
                return;
            }

            GiveSingleInjury();


            switch (bloodLossSeverity)
            {
                case BloodLossSeverity.None:
                    bloodLossML = 0f;
                    break;
                case BloodLossSeverity.Minimal:
                    bloodLossML = Random.Range(250f, 1200f);
                    break;
                case BloodLossSeverity.Moderate:
                    bloodLossML = Random.Range(500f, 3000f);
                    break;
                case BloodLossSeverity.Severe:
                    bloodLossML = Random.Range(1000f, 4000f);
                    break;

            }
            
        }

        private void GiveSingleInjury()
        {
            int random = Random.Range(1, totalInjuryScore);
            bleedingArea = GetRandomInjuryType(random);
            bloodLossSeverity = CalculateBleedingSeverity();
        }


        private BloodLossSeverity CalculateBleedingSeverity()
        {
            BleedingInjuryStatus bleedingSeverity;
            switch (bleedingArea)
            {
                case BleedingArea.Head:
                    bleedingSeverity = (BleedingInjuryStatus)Random.Range(1, 3);
                    switch (bleedingSeverity)
                    {
                        case BleedingInjuryStatus.Minimal:
                            return BloodLossSeverity.Minimal;
                        case BleedingInjuryStatus.Severe:
                            return BloodLossSeverity.Moderate;
                    }
                    break;
                case BleedingArea.Neck:
                    // Random Injury status from Minimal to Severe
                    bleedingSeverity = (BleedingInjuryStatus)Random.Range(1, 3);
                    // Setup bloodLossSeverity based on Injury Status and area of the body
                    switch (bleedingSeverity)
                    {
                        case BleedingInjuryStatus.Minimal:
                            return BloodLossSeverity.Moderate;
                        case BleedingInjuryStatus.Severe:
                            return BloodLossSeverity.Severe;
                    }
                    break;
                case BleedingArea.Arms:
                    // Random Injury status from Minimal to Severe
                    bleedingSeverity = (BleedingInjuryStatus)Random.Range(1, 3);
                    bleedingSide = (Comparative)Random.Range(1, 3);
                    // Setup bloodLossSeverity based on Injury Status and area of the body
                    switch (bleedingSeverity)
                    {
                        case BleedingInjuryStatus.Minimal:
                            return BloodLossSeverity.Minimal;
                        case BleedingInjuryStatus.Severe:
                            return BloodLossSeverity.Severe;
                    }
                    break;
                case BleedingArea.Torso:
                    // Random Injury status from Minimal to Severe
                    bleedingSeverity = (BleedingInjuryStatus)Random.Range(1, 3);
                    // Setup bloodLossSeverity based on Injury Status and area of the body
                    switch (bleedingSeverity)
                    {
                        case BleedingInjuryStatus.Minimal:
                            return BloodLossSeverity.Moderate;
                        case BleedingInjuryStatus.Severe:
                            return BloodLossSeverity.Severe;
                    }
                    break;
                case BleedingArea.Thighs:
                    // Random Injury status from Minimal to Severe
                    bleedingSeverity = (BleedingInjuryStatus)Random.Range(1, 3);
                    bleedingSide = (Comparative)Random.Range(1, 3);
                    // Setup bloodLossSeverity based on Injury Status and area of the body
                    switch (bleedingSeverity)
                    {
                        case BleedingInjuryStatus.Minimal:
                            return BloodLossSeverity.Moderate;
                        case BleedingInjuryStatus.Severe:
                            return BloodLossSeverity.Severe;
                    }
                    break;
                case BleedingArea.Legs:
                    // Random Injury status from Minimal to Severe
                    bleedingSeverity = (BleedingInjuryStatus)Random.Range(1, 3);
                    bleedingSide = (Comparative)Random.Range(1, 3);
                    // Setup bloodLossSeverity based on Injury Status and area of the body
                    switch (bleedingSeverity)
                    {
                        case BleedingInjuryStatus.Minimal:
                            return BloodLossSeverity.Minimal;
                        case BleedingInjuryStatus.Severe:
                            return BloodLossSeverity.Moderate;
                    }
                    break;
                
                default:
                    return BloodLossSeverity.None;
            }

            return BloodLossSeverity.None;
        }

        private void CalculateBreathing()
        {
            if (bloodLossML > 3500f)
            {
                Die();
                return;
            }

            // This means 1/3 chance to pass out with high bloodLoss, Around 1/10 chance with low bloodLoss
            if (RandomBool(bloodLossML / 9000f))
            {
                LooseConciousness();
                return;
            }
            
            
            switch (bloodLossSeverity)
            {
                case BloodLossSeverity.Moderate:
                    if (RandomBool(0.05f))
                    {
                        Die();
                    }
                    break;
                case BloodLossSeverity.Severe:
                    if (RandomBool(0.3f))
                    {
                        Die();
                    }
                    break;
                    
                default:
                    breathingStatus = BreathingStatus.Normal;
                    break;
            }
            
            if (bleedingArea == BleedingArea.Torso)
            {
                if (RandomBool(0.5f))
                {
                    breathingStatus = BreathingStatus.LungInjury;
                }
            }


        }

        private void CalculatePulse()
        {
            if (dead) return;
            
            switch (bloodLossSeverity)
            {
                case BloodLossSeverity.None:
                    pulse = Random.Range(80, 105);
                    return;
                case BloodLossSeverity.Minimal:
                    pulse = (int)FitPolyPulseToBloodLoss(bloodLossML);
                    return;
                case BloodLossSeverity.Moderate:
                    pulse = (int)FitPolyPulseToBloodLoss(bloodLossML);
                    return;
                case BloodLossSeverity.Severe:
                    pulse = (int)FitPolyPulseToBloodLoss(bloodLossML);
                    return;
            }
            
           
        }

        private void CalculateCorrectZone()
        {
            if (dead) return;
            
            if (pulse == 0)
            {
                correctZone = Zone.Red;
                return;
            }

            if (pulse > 120)
            {
                correctZone = Zone.Red;
                return;
            }

            if (bleedingArea == BleedingArea.Torso && bloodLossSeverity > BloodLossSeverity.Minimal)
            {
                correctZone = Zone.Red;
                return;
            }

            if (bleedingArea == BleedingArea.Neck)
            {
                correctZone = Zone.Red;
            }
            
            if (bloodLossML > 2000)
            {
                correctZone = Zone.Red;
                return;
            }
            if (bloodLossML > 1000)
            {
                correctZone = Zone.Yellow;
                return;
            }
            
            if (breathingStatus == BreathingStatus.LungInjury)
            {
                correctZone = Zone.Red;
                return;
            }

            correctZone = bloodLossSeverity >= BloodLossSeverity.Moderate ? Zone.Yellow : Zone.Green;            
            
            
        }

        private void Die()
        {
            pulse = 0;
            breathingStatus = BreathingStatus.None;
            correctZone = Zone.Black;
            dead = true;
            concious = false;
            needTourniquet = false;
            needPharyngealTube = false;
            needPressureRelief = false;
            needPressure = false;
            needOpenAirways = false;
            needSideLease = false;
            if (!ReferenceEquals(patientAnimationController.GetBleedingSockets(), null))
            {
                patientAnimationController.GetBleedingSockets().RemoveBloodParticles();
            }
        }

        private void CalculateNeededHelp()
        {
            if (dead) return;
            needTourniquet = bleedingArea is BleedingArea.Arms or BleedingArea.Thighs or BleedingArea.Legs;
            needPressureRelief = breathingStatus == BreathingStatus.LungInjury;
            needSideLease = !concious;
            needPressure = bloodLossSeverity >= BloodLossSeverity.Moderate;
            needOpenAirways = !concious;
            
            needPharyngealTube = !concious && bloodLossML > 2000f;
        }

        private void LooseConciousness()
        {
            concious = false;
            if (breathingStatus == BreathingStatus.Normal)
            {
                breathingStatus = BreathingStatus.ClosedAirway;
                needSideLease = true;
                needOpenAirways = true;
            }
        }

        private void ZoneReasoning()
        {
            zoneReasoning.Clear();

            if (bloodLossML > 1000)
            {
                zoneReasoning.Add("Pasienten har mistet " + (bloodLossML / 1000).ToString("F1") + " liter blod");
            }
            
            zoneReasoning.Add("Pasienten har " + bloodLossSeverity.ToString() + " blødninger");
            zoneReasoning.Add(pulse > 120 ? " Pulsen er over 120" : "Pulsen er under 120");
            zoneReasoning.Add("Puste status er: " + breathingStatus.ToString());
            if (bleedingArea == BleedingArea.Torso)
            {
                zoneReasoning.Add("Pasienten blør i magen");
            }
            if (bleedingArea == BleedingArea.Neck)
            {
                zoneReasoning.Add("Pasienten blør i nakken");
            }
        }

        public List<string> GetZoneReasoning()
        {
            if (zoneReasoning.Count == 0)
            {
                ZoneReasoning();
            }
            
            return zoneReasoning;
        }

        private BleedingArea GetRandomInjuryType(int random)
        {
            List<int> injuryWeights = new List<int>();
            injuryWeights.Add(headInjuryWeight);
            injuryWeights.Add(neckInjuryWeight);
            injuryWeights.Add(armInjuryWeight);
            injuryWeights.Add(torsoInjuryWeight);
            injuryWeights.Add(thighInjuryWeight);
            injuryWeights.Add(legsInjuryWeight);

            int counter = 0;
            for (int i = 0; i < injuryWeights.Count; i++)
            {
                counter += injuryWeights[i];
                if (random < counter)
                {
                    return (BleedingArea)i + 1;
                }
            }
            
            return BleedingArea.None;
        }

        public Comparative Side()
        {
            return bleedingSide;
        }

        public GenderComponent GetGenderComponent()
        {
            return genderComponent;
        }

        private bool RandomBool(float chance)
        {
            int random = Random.Range(0, 100);
            return random < chance * 100f;
        }

        public bool IsInspectionDone()
        {
            return inspectionDone;
        }

        public BreathingStatus BreathStatus()
        {
            return breathingStatus;
        }
        

        public void Inspect(Zone guess)
        {
            guessedZone = guess;
            inspectionDone = true;
            agent.beliefes.SetState("cleared", 1);
            ZoneReasoning();
            
            onPlaceBand.Invoke();
        }

        public bool Dead()
        {
            return dead;
        }

        public bool Concious()
        {
            return concious;
        }

        public ValueTuple<Zone, Zone> ZoneTuple()
        {
            return new ValueTuple<Zone, Zone>(correctZone, guessedZone);
        }
        
        public Zone GuessedZone()
        {
            return guessedZone;
        }

        public bool CanWalk()
        {
            if (pulse == 0) return false;
            if (concious == false) return false;
            if (breathingStatus > BreathingStatus.Normal) return false;
            if (bloodLossSeverity > BloodLossSeverity.Minimal) return false;
            switch (bleedingArea)
            {
                case BleedingArea.Legs:
                    return bloodLossSeverity > BloodLossSeverity.None;
                case BleedingArea.Thighs:
                    return bloodLossSeverity > BloodLossSeverity.None;
                case BleedingArea.Torso:
                    return bloodLossSeverity > BloodLossSeverity.None;
                default:
                    break;
            }

            if (bloodLossML > 500)
            {
                return false;
            }
            
            return true;

        }

        public bool Sitting()
        {
            if (concious == false) return false;
            if (bloodLossSeverity == BloodLossSeverity.Minimal) return true;
            if (!setupSitting)
            {
                sitting = RandomBool(0.33f);
                setupSitting = true;
            }
            return sitting;
        }

        public int GetBleedingArea()
        {
            return (int)bleedingArea;
        }

        public int GetBleedingSeverity()
        {
            return (int)bloodLossSeverity;
        }

        public bool NeedPressure()
        {
            return needPressure;
        }


        private void DebugAnimationState()
        {
            if (!concious)
            {
                state = dead ? AnimState.Dead : AnimState.LayingDownUC;
                return;
            }

            if (CanWalk())
            {
                state = Sitting() ? AnimState.Sitting : AnimState.Standing;
                return;
            }

            state = Sitting() ? AnimState.Sitting : AnimState.LayingDownC;
        }


        public void SetRecievedTourniquet(bool input)
        {
            recievedTourniquet = input;
            if (recievedTourniquet)
            {
                onPlaceTourniquet.Invoke();
            }
        }

        public void SetRecievedPharyngealTube(bool input)
        {
            recievedPharyngealTube = input;
            
        }
        
        public void SetRecievedSideLease(bool input)
        {
            recievedSideLease = input;
            if (recievedSideLease)
            {
                onRecieveSideLease.Invoke();
            }
        }
        public void SetRecievedPressure(bool input)
        {
            recievedPressure = input;
            if (recievedPressure)
            {
                onRecievePressure.Invoke();
            }
        }
        public void SetRecievedPressureRelief(bool input)
        {
            recievedPressureRelief = input;
            if (recievedPressureRelief)
            {
                if (breathingStatus == BreathingStatus.LungInjury) 
                    breathingStatus = BreathingStatus.Normal;
                onRecievePressureRelief.Invoke();
            }
        }

        public void OpenedAirways()
        {
            if (breathingStatus == BreathingStatus.ClosedAirway)
            {
                breathingStatus = BreathingStatus.Normal;
            }
            
            recievedOpenAirways = true;
            onRecieveOpenAirways.Invoke();
        }

        public PatientAnimationController GetPatient()
        {
            return patientAnimationController;
        }

        public Zone CorrectZone()
        {
            return correctZone;
        }
        public int Pulse()
        {
            return pulse;
        }

        public bool NeedTourniquet()
        {
            return needTourniquet;
        }
        public bool NeedPressureRelief()
        {
            return needPressureRelief;
        }
        public bool NeedPharyngealTube()
        {
            return needPharyngealTube;
        }
        
        public bool RecievedTourniquet()
        {
            return recievedTourniquet;
        }
        public bool RecievedPressureRelief()
        {
            return recievedPressureRelief;
        }
        public bool RecievedPharyngealTube()
        {
            return recievedPharyngealTube;
        }
        
        public bool RecievedSideLease()
        {
            return recievedSideLease;
        }
        public bool RecievedPressure()
        {
            return recievedPressure;
        }

        public bool NeedSideLease()
        {
            return needSideLease;
        }
        public bool NeedOpenAirways()
        {
            return needOpenAirways;
        }
        public bool RecievedOpenAirways()
        {
            return recievedOpenAirways;
        }


        private double FitPolyPulseToBloodLoss(float bloodLoss)
        {
            return (0.000000007f * bloodLoss * bloodLoss * bloodLoss) - (0.00003f * bloodLoss * bloodLoss) +
                   (0.055 * bloodLoss) + 80f;
        }
    }

    [System.Serializable]
    public enum Comparative
    {
        None,
        Right,
        Left
    }

    [System.Serializable]
    public enum BleedingInjuryStatus 
    {
        None,
        Minimal,
        Severe
    }
    [System.Serializable]
    public enum BloodLossSeverity 
    {
        None,
        Minimal,
        Moderate,
        Severe
    }
    [System.Serializable]
    public enum BreathingStatus 
    {
        Normal,
        ClosedAirway,
        LungInjury,
        None
    }
    [System.Serializable]
    public enum Zone 
    {
        Green,
        Yellow,
        Red,
        Black
    }
    
    public enum BleedingArea 
    {
        None,
        Head,
        Neck,
        Arms,
        Torso,
        Thighs,
        Legs
    }
    public enum AnimState 
    {
        Standing,
        Sitting,
        LayingDownC,
        LayingDownUC,
        Dead
        
    }
}
