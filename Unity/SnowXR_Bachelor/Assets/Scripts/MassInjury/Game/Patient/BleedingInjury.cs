using System;
using System.Collections;
using System.Collections.Generic;
using System.Threading;
using SnowXR.MassInjury.Goap;
using SnowXR.MassInjury.Person;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.Serialization;
using Random = UnityEngine.Random;


namespace SnowXR.MassInjury
{
    [RequireComponent(typeof(GoapAgent), typeof(PatientAnimationController))]
    public class BleedingInjury : MonoBehaviour
    {
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
        // Tourniquet
        [SerializeField] private bool needTourniquet = false;
        [SerializeField] private bool recievedTourniquet = false;
        // Pressure Relief
        [SerializeField] private bool needPressureRelief = false;
        [SerializeField] private bool recievedPressureRelief = false;
        // Recovery Pose
        [SerializeField] private bool needRecoveryPose = false;
        [SerializeField] private bool recievedRecoveryPose = false;
        // Open Airways
        [SerializeField] private bool needOpenAirways = false;
        [SerializeField] private bool recievedOpenAirways = false;
        // Pressure
        [SerializeField] private bool needPressure = false;
        [SerializeField] private bool recievedPressure = false;
        // Pharyngeal Tube
        [SerializeField] private bool needPharyngealTube = false;
        [SerializeField] private bool recievedPharyngealTube = false;
        
        [Header("Chance Settings, For Spawning")] 
        [SerializeField] private bool randomInjury = true;
        [FormerlySerializedAs("firstInjury")] [SerializeField, Range(0f, 1f)] private float injuryChance;
        [SerializeField] private int headInjuryWeight = 10;
        [SerializeField] private int neckInjuryWeight = 20;
        [SerializeField] private int armInjuryWeight = 30;
        [SerializeField] private int torsoInjuryWeight = 25;
        [SerializeField] private int thighInjuryWeight = 25;
        [SerializeField] private int legsInjuryWeight = 10;
        private int totalInjuryScore = 0;

        // * Unity Events *
        public UnityEvent onPlaceTourniquet;
        public UnityEvent onPlaceBand;
        public UnityEvent onRecievePressure;
        public UnityEvent onRecievePressureRelief;
        public UnityEvent onRecieveOpenAirways;
        public UnityEvent onRecieveSideLease;

        // Cache
        private GoapAgent agent;
        private PatientAnimationController patientAnimationController;
        private GenderComponent genderComponent;
        
        // * Logic *
        [SerializeField] private bool concious = true;
        [SerializeField] private bool dead = false;
        [SerializeField] private AnimState state = AnimState.Standing;

        // Choice of sitting and cached bools
        private bool sitting = false;
        private bool setupSitting = false;

        // Inspection time
        private bool inspectorClose = false;
        private float timer = 0f;
        private float inspectionTime = 0f;

        // Result and map variables
        private int order = 0;
        private int room = 0;
        private int slot = 0;
        
        // Cache our audio source
        private AudioSource audioSource;
        
        private void Awake()
        {
            // Cache components
            agent = GetComponent<MassInjuryAgent>();
            patientAnimationController = GetComponent<PatientAnimationController>();
            genderComponent = GetComponent<GenderComponent>();
            audioSource = GetComponent<AudioSource>();
            
            // using this variable to select a random injury
            totalInjuryScore = headInjuryWeight + 
                neckInjuryWeight + armInjuryWeight + 
                torsoInjuryWeight + thighInjuryWeight + 
                legsInjuryWeight;

            // Setup injury
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

        private void Update()
        {
            // Update timer when we are close to the patient
            if (inspectorClose)
            {
                timer += Time.deltaTime;
            }
        }

        #region Setup
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
            if (bloodLossML > 3600f)
            {
                Die();
                return;
            }

            // This means 1/3 chance to pass out with high bloodLoss, Around 1/10 chance with low bloodLoss
            if (RandomBool(bloodLossML / 6000f))
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
                    if (RandomBool(0.1f))
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
                if (RandomBool(0.3f))
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

            if (breathingStatus == BreathingStatus.LungInjury || recievedPharyngealTube)
            {
                correctZone = Zone.Red;
                return;
            }


            if (bloodLossML > 500)
            {
                correctZone = Zone.Yellow;
                return;
            }


            correctZone = bloodLossSeverity >= BloodLossSeverity.Moderate ? Zone.Yellow : Zone.Green;


        }
        private void CalculateNeededHelp()
        {
            if (dead) return;

            if (bloodLossSeverity > BloodLossSeverity.Minimal)
            {
                needTourniquet = bleedingArea is BleedingArea.Arms or BleedingArea.Thighs or BleedingArea.Legs;
            }

            needPressureRelief = breathingStatus == BreathingStatus.LungInjury;
            needRecoveryPose = bloodLossSeverity > BloodLossSeverity.Minimal || !concious;
            needPressure = bloodLossSeverity > BloodLossSeverity.Minimal;
            needOpenAirways = breathingStatus == BreathingStatus.ClosedAirway;
        }
        private void ZoneReasoning()
        {
            zoneReasoning.Clear();

            switch (correctZone)
            {
                case Zone.Green:
                    zoneReasoning.Add("Riktig sone for denne pasienten er grønn.");
                    zoneReasoning.Add("Grunnen til dette er:");
                    switch (bloodLossSeverity)
                    {
                        case BloodLossSeverity.Minimal:
                            zoneReasoning.Add("Pasienten har små blødninger");
                            break;
                        default:
                            break;

                    }
                    if (bloodLossML < 500)
                    {
                        zoneReasoning.Add("Pasienten har mistet mindre enn 0.5L blod");
                    }
                    if (pulse < 120)
                    {
                        zoneReasoning.Add("Pulsen til pasienten er under 120");
                    }


                    break;
                case Zone.Yellow:
                    zoneReasoning.Add("Riktig sone for denne pasienten er gul.");
                    zoneReasoning.Add("Grunnen til dette er:");
                    switch (bloodLossSeverity)
                    {
                        case BloodLossSeverity.Minimal:
                            zoneReasoning.Add("Pasienten har små blødninger");
                            break;
                        case BloodLossSeverity.Moderate:
                            zoneReasoning.Add("Pasienten har moderate blødninger");
                            break;
                        default:
                            break;
                    }
                    if (bloodLossML < 1000)
                    {
                        zoneReasoning.Add("Pasienten har mistet mindre enn 1L blod");
                    }
                    if (pulse < 120)
                    {
                        zoneReasoning.Add("Pulsen til pasienten er under 120");
                    }
                    break;
                case Zone.Red:
                    zoneReasoning.Add("Riktig sone for denne pasienten er rød.");
                    zoneReasoning.Add("Grunnen til dette er:");
                    switch (bloodLossSeverity)
                    {
                        case BloodLossSeverity.Moderate:
                            zoneReasoning.Add("Pasienten har moderate blødninger");
                            break;
                        case BloodLossSeverity.Severe:
                            zoneReasoning.Add("Pasienten har store blødninger");
                            break;
                        default:
                            break;

                    }
                    if (bloodLossML > 2000)
                    {
                        zoneReasoning.Add("Pasienten har mistet over 2L blod");
                    }
                    if (pulse > 120)
                    {
                        zoneReasoning.Add("Pulsen til pasienten er over 120");
                    }
                    if (breathingStatus == BreathingStatus.LungInjury || recievedPressureRelief)
                    {
                        zoneReasoning.Add("Pasienten har skader i lungen");
                    }

                    break;
                case Zone.Black:
                    zoneReasoning.Add("Riktig sone for denne pasienten er sort.");
                    zoneReasoning.Add("Grunnen til dette er:");
                    if (dead)
                    {
                        zoneReasoning.Add("Pasienten er død");
                    }
                    else if (pulse == 0)
                    {
                        zoneReasoning.Add("Pasienten har ingen puls");
                    }
                    break;
            }
        }

        #endregion


        #region Conciousness

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
            needRecoveryPose = false;
        }
        private void LooseConciousness()
        {
            concious = false;
            if (breathingStatus == BreathingStatus.Normal)
            {
                if (RandomBool(0.1f))
                {
                    breathingStatus = BreathingStatus.ClosedAirway;
                    needRecoveryPose = true;
                    needOpenAirways = true;
                }
            }
        }

        #endregion

        #region Getters

        public GenderComponent GetGenderComponent()
        {
            return genderComponent;
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
        public BreathingStatus BreathStatus()
        {
            return breathingStatus;
        }
        public Comparative Side()
        {
            return bleedingSide;
        }
        public bool IsInspectionDone()
        {
            return inspectionDone;
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
        public Zone CorrectZone()
        {
            return correctZone;
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
                    return bloodLossSeverity <= BloodLossSeverity.Minimal;
                case BleedingArea.Thighs:
                    return bloodLossSeverity <= BloodLossSeverity.None;
                case BleedingArea.Torso:
                    return bloodLossSeverity <= BloodLossSeverity.None;
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
            if (breathingStatus == BreathingStatus.LungInjury) return false;

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
        public PatientAnimationController GetPatient()
        {
            return patientAnimationController;
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
        public bool NeedRecoveryPose()
        {
            return needRecoveryPose;
        }
        public bool NeedPressure()
        {
            return needPressure;
        }
        public bool NeedOpenAirways()
        {
            return needOpenAirways;
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
        public bool RecievedRecoveryPose()
        {
            return recievedRecoveryPose;
        }
        public bool RecievedPressure()
        {
            return recievedPressure;
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
        public float GetInspectionTime()
        {
            return inspectionTime;
        }
        public int GetRoom()
        {
            return room;
        }
        public int GetSlot()
        {
            return slot;
        }
        public int GetOrder()
        {
            return order;
        }
        #endregion

        #region Logic
        private bool RandomBool(float chance)
        {
            int random = Random.Range(0, 100);
            return random < chance * 100f;
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
        public void OpenedAirways()
        {
            if (breathingStatus == BreathingStatus.ClosedAirway)
            {
                breathingStatus = BreathingStatus.Normal;
            }
            
            recievedOpenAirways = true;
            onRecieveOpenAirways.Invoke();
        }

        #endregion

        #region Setters
        public void Inspect(Zone guess)
        {
            if (ScoringSystem.instance)
            {
                order = ScoringSystem.instance.GetOrder();
            }
            guessedZone = guess;
            inspectionDone = true;
            agent.beliefes.SetState("cleared", 1);
            ZoneReasoning();
            inspectionTime = timer;
            onPlaceBand.Invoke();
        }

        public void SetRecievedTourniquet(bool input)
        {
            recievedTourniquet = input;
            if (recievedTourniquet)
            {
                genderComponent.GetMesh().GetComponent<BleedingSockets>().RemoveBloodParticles();
                recievedPressure = true;
                onPlaceTourniquet.Invoke();
            }
            
        }

        public void SetRecievedPharyngealTube(bool input)
        {
            recievedPharyngealTube = input;
            
        }
        
        public void SetRecievedRecoveryPose(bool input)
        {
            recievedRecoveryPose = input;
            if (recievedRecoveryPose)
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
        public void SetRoom(int r, int s)
        {
            room = r;
            slot = s;
        }

        #endregion

        #region Trigger functions

        private void OnTriggerEnter(Collider other)
        {
            if (other.CompareTag("Culling"))
            {
                inspectorClose = true;
            }
        }
        private void OnTriggerExit(Collider other)
        {
            if (other.CompareTag("Culling"))
            {
                inspectorClose = false;
            }
        }

        #endregion

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
