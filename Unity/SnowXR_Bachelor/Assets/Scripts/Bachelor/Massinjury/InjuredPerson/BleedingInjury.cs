using System;
using System.Collections;
using System.Collections.Generic;
using BA.GOAP;
using UnityEngine;
using UnityEngine.Serialization;
using Random = UnityEngine.Random;


namespace SnowXR.MassInjury
{
    [RequireComponent(typeof(GoapAgent), typeof(MassInjuryPatient))]
    public class BleedingInjury : MonoBehaviour
    {
        [Header("Chance Settings, For Spawning")] 
        [FormerlySerializedAs("firstInjury")] [SerializeField, Range(0f, 1f)] private float injuryChance;
        [SerializeField] private int headInjuryWeight = 10;
        [SerializeField] private int neckInjuryWeight = 20;
        [SerializeField] private int armInjuryWeight = 30;
        [SerializeField] private int torsoInjuryWeight = 25;
        [SerializeField] private int thighInjuryWeight = 25;
        [SerializeField] private int legsInjuryWeight = 10;
        
        [FormerlySerializedAs("bleedingStatus")]
        [Header("Bleeding Status")] 
        [SerializeField] private BleedingInjuryStatus bleedingSeverity;
        [SerializeField] private BleedingArea bleedingArea;
        [SerializeField] private Comparative bleedingSide = Comparative.None;
        
        [Header("Blood Loss")] 
        [SerializeField] private BleedingInjuryStatus bloodLossSeverity;
        [SerializeField] public float bloodLossML = 0f;
        
        [Header("Breath Status")]
        [SerializeField] private BreathingStatus breathingStatus;
        
        [Header("Pulse Status")]
        [SerializeField] private int pulse;
        private float pulseIncreaseRate;
        
        [Header("Reasoning")] 
        [SerializeField] private List<string> zoneReasoning = new List<string>();
        private bool inspectionDone = false;
        
        [Header("Results")]
        [SerializeField] private Zone guessedZone;
        [SerializeField] private Zone initialZone;
        [SerializeField] private Zone correctZone;
        [SerializeField] private bool needTourniquet = false;
        [SerializeField] private bool recievedTourniquet = false;
        [SerializeField] private bool needPressureRelief = false;
        [SerializeField] private bool recievedPressureRelief = false;
        [SerializeField] private bool needPharyngealTube = false;
        [SerializeField] private bool recievedPharyngealTube = false;
        
        
        
        
        // debugging
        [Header("Debugging")]
        [SerializeField] private float timeLived = 0f;

        
        //Cache
        private GoapAgent agent;
        private MassInjuryPatient patient;
        
        // Logic
        private float timer = 0f;
        private float criticalPulseTimer = 0f;
        private float breathingTimer = 0f;
        private const float minBreathingModerate = 90f;
        private const float minBreathingSevere = 30f;
        private const float maxBreathingModerate = 600f;
        private const float maxBreathingSevere = 45f;
        private int totalInjuryScore = 0;
        private float timeWithoutAir = 0f;
        private bool dead = false;
        [SerializeField] private bool concious = true;
        [SerializeField] private AnimState state = AnimState.Standing;
        
        private void Awake()
        {
            agent = GetComponent<MassInjuryAgent>();
            patient = GetComponent<MassInjuryPatient>();
            
            totalInjuryScore = headInjuryWeight + neckInjuryWeight + armInjuryWeight + torsoInjuryWeight + thighInjuryWeight + legsInjuryWeight;
            bloodLossML = 0f;
            bloodLossSeverity = BleedingInjuryStatus.None;
            concious = true;
            InitInjuries();
            CalculateBreathing();
            CalculatePulse();
            CalculateCorrectZone();
            CalculateNeededHelp();
            initialZone = correctZone;
        }
        private void Update()
        {
            DebugAnimationState();
            if (inspectionDone || dead) return;
            // If we bled out already
            if (bloodLossML > 4000f)
            {
                pulse = 0;
                breathingStatus = BreathingStatus.None;
                correctZone = Zone.Black;
                dead = true;
                return;
            }
            // Dead / Black Zone
            if (pulse == 0)
            {
                breathingStatus = BreathingStatus.None;
                correctZone = Zone.Black;
                dead = true;
                return;
            }
            
            
            // Going into cardiac arrest
            if (pulse > 140)
            {
                pulse = Random.Range(180, 190);
                criticalPulseTimer += Time.deltaTime;
                if (criticalPulseTimer > 20f)
                {
                    concious = false;
                    pulse = 0;
                    breathingStatus = BreathingStatus.None;
                    dead = true;
                }

            }
            

            timeLived += Time.deltaTime;
            
            // calculate bloodLoss based on injury
            switch (bloodLossSeverity)
            {
                case BleedingInjuryStatus.None:
                    break;
                case BleedingInjuryStatus.Minimal:
                    bloodLossML += 3f * Time.deltaTime;
                    break;
                case BleedingInjuryStatus.Moderate:
                    bloodLossML += 9f * Time.deltaTime;
                    break;
                case BleedingInjuryStatus.Severe:
                    bloodLossML += 13f * Time.deltaTime;
                    break;
            }

            if (needTourniquet && recievedTourniquet)
            {
                bloodLossSeverity = BleedingInjuryStatus.None;
                patient.GetSkeletonSocketManager().RemoveBloodParticles();
            }
            
            // calculate consciousness based on bloodLoss
            if (bloodLossML > 600)
            {
                concious = false;
            }
            
            // Increase Pulse
            if (pulseIncreaseRate != 0f && bloodLossSeverity > 0)
            {
                timer += Time.deltaTime;

                if (timer > pulseIncreaseRate)
                {
                    pulse++;
                    timer -= pulseIncreaseRate;
                }
            }
            
            // Update Breathing
            switch (breathingStatus)
            {
                case BreathingStatus.Normal:
                    break;
                case BreathingStatus.MinimalProblem:
                    breathingTimer -= Time.deltaTime;
                    if (breathingTimer < 0f)
                    {
                        breathingStatus = BreathingStatus.None;
                        concious = false;
                    }
                    break;
                case BreathingStatus.CriticalProblem:
                    breathingTimer -= Time.deltaTime;
                    if (breathingTimer < 0f)
                    {
                        breathingStatus = BreathingStatus.None;
                        concious = false;
                    }
                    break;
                case BreathingStatus.None:
                    timeWithoutAir += Time.deltaTime;
                    if (timeWithoutAir > 60f)
                    {
                        pulse = 0;
                        dead = false;
                    }
                    break;
            }
            
            // Find out what zone we are now
            CalculateCorrectZone();
            CalculateNeededHelp();


        }



        private void InitInjuries()
        {

            breathingStatus = 0;

            pulse = 0;
            pulseIncreaseRate = 0;

            bleedingSeverity = 0;

            // Chance to get first Injury
            if (!RandomBool(injuryChance))
            {
                return;
            }

            GiveSingleInjury();
        }

        private void GiveSingleInjury()
        {
            int random = Random.Range(0, totalInjuryScore);
            bleedingArea = GetRandomInjuryType(random);

            switch (bleedingArea)
            {
                case BleedingArea.Head:
                    // return if we already have injury here
                    if (bleedingSeverity != BleedingInjuryStatus.None)
                    {
                        return;
                    }
                    // Random Injury status from Minimal to Severe
                    bleedingSeverity = (BleedingInjuryStatus)Random.Range(1, 4);
                    // Setup bloodLossSeverity based on Injury Status and area of the body
                    switch (bleedingSeverity)
                    {
                        case BleedingInjuryStatus.Minimal:
                            bloodLossSeverity = BleedingInjuryStatus.Minimal;
                            return;
                        case BleedingInjuryStatus.Moderate:
                            bloodLossSeverity = BleedingInjuryStatus.Minimal;
                            return;
                        case BleedingInjuryStatus.Severe:
                            bloodLossSeverity = BleedingInjuryStatus.Moderate;
                            return;
                    }
                    break;
                case BleedingArea.Neck:
                    // return if we already have injury here
                    if (bleedingSeverity != BleedingInjuryStatus.None)
                    {
                        return;
                    }
                    // Random Injury status from Minimal to Severe
                    bleedingSeverity = (BleedingInjuryStatus)Random.Range(1, 4);
                    // Setup bloodLossSeverity based on Injury Status and area of the body
                    switch (bleedingSeverity)
                    {
                        case BleedingInjuryStatus.Minimal:
                            bloodLossSeverity = BleedingInjuryStatus.Minimal;
                            return;
                        case BleedingInjuryStatus.Moderate:
                            bloodLossSeverity = BleedingInjuryStatus.Minimal;
                            return;
                        case BleedingInjuryStatus.Severe:
                            bloodLossSeverity = BleedingInjuryStatus.Moderate;
                            return;
                    }
                    break;
                case BleedingArea.Arms:
                    // return if we already have injury here
                    if (bleedingSeverity != BleedingInjuryStatus.None)
                    {
                        return;
                    }
                    // Random Injury status from Minimal to Severe
                    bleedingSeverity = (BleedingInjuryStatus)Random.Range(1, 4);
                    bleedingSide = (Comparative)Random.Range(1, 3);
                    // Setup bloodLossSeverity based on Injury Status and area of the body
                    switch (bleedingSeverity)
                    {
                        case BleedingInjuryStatus.Minimal:
                            bloodLossSeverity = BleedingInjuryStatus.Minimal;
                            return;
                        case BleedingInjuryStatus.Moderate:
                            bloodLossSeverity = BleedingInjuryStatus.Minimal;
                            return;
                        case BleedingInjuryStatus.Severe:
                            bloodLossSeverity = BleedingInjuryStatus.Moderate;
                            return;
                    }
                    break;
                case BleedingArea.Torso:
                    // return if we already have injury here
                    if (bleedingSeverity != BleedingInjuryStatus.None)
                    {
                        return;
                    }
                    // Random Injury status from Minimal to Severe
                    bleedingSeverity = (BleedingInjuryStatus)Random.Range(1, 4);
                    // Setup bloodLossSeverity based on Injury Status and area of the body
                    switch (bleedingSeverity)
                    {
                        case BleedingInjuryStatus.Minimal:
                            bloodLossSeverity = BleedingInjuryStatus.Moderate;
                            return;
                        case BleedingInjuryStatus.Moderate:
                            bloodLossSeverity = BleedingInjuryStatus.Severe;
                            return;
                        case BleedingInjuryStatus.Severe:
                            bloodLossSeverity = BleedingInjuryStatus.Severe;
                            return;
                    }
                    break;
                case BleedingArea.Thighs:
                    // return if we already have injury here
                    if (bleedingSeverity != BleedingInjuryStatus.None)
                    {
                        return;
                    }
                    // Random Injury status from Minimal to Severe
                    bleedingSeverity = (BleedingInjuryStatus)Random.Range(1, 4);
                    bleedingSide = (Comparative)Random.Range(1, 3);
                    // Setup bloodLossSeverity based on Injury Status and area of the body
                    switch (bleedingSeverity)
                    {
                        case BleedingInjuryStatus.Minimal:
                            bloodLossSeverity = BleedingInjuryStatus.Moderate;
                            return;
                        case BleedingInjuryStatus.Moderate:
                            bloodLossSeverity = BleedingInjuryStatus.Severe;
                            return;
                        case BleedingInjuryStatus.Severe:
                            bloodLossSeverity = BleedingInjuryStatus.Severe;
                            return;
                    }
                    break;
                case BleedingArea.Legs:
                    // return if we already have injury here
                    if (bleedingSeverity != BleedingInjuryStatus.None)
                    {
                        return;
                    }
                    // Random Injury status from Minimal to Severe
                    bleedingSeverity = (BleedingInjuryStatus)Random.Range(1, 4);
                    bleedingSide = (Comparative)Random.Range(1, 3);
                    // Setup bloodLossSeverity based on Injury Status and area of the body
                    switch (bleedingSeverity)
                    {
                        case BleedingInjuryStatus.Minimal:
                            bloodLossSeverity = BleedingInjuryStatus.Minimal;
                            return;
                        case BleedingInjuryStatus.Moderate:
                            bloodLossSeverity = BleedingInjuryStatus.Minimal;
                            return;
                        case BleedingInjuryStatus.Severe:
                            bloodLossSeverity = BleedingInjuryStatus.Moderate;
                            return;
                    }
                    break;
            }





        }

        private void CalculateBreathing()
        {
            if (bleedingArea == BleedingArea.Torso || bleedingArea == BleedingArea.Neck)
            {
                // Breathing is based on torso Injury and bloodLoss Severity
                switch (bleedingSeverity)
                {

                    case BleedingInjuryStatus.None:
                        switch (bloodLossSeverity)
                        {
                            case BleedingInjuryStatus.Minimal:
                                breathingStatus = BreathingStatus.MinimalProblem;
                                breathingTimer = Random.Range(minBreathingModerate, maxBreathingModerate);
                                return;
                            case BleedingInjuryStatus.Moderate:
                                if (RandomBool(0.2f))
                                {
                                    breathingStatus = BreathingStatus.CriticalProblem;
                                    breathingTimer = Random.Range(minBreathingSevere, maxBreathingSevere);
                                }
                                else
                                {
                                    breathingStatus = BreathingStatus.MinimalProblem;
                                }
                                return;
                            case BleedingInjuryStatus.Severe:
                                if (RandomBool(0.75f))
                                {
                                    breathingStatus = BreathingStatus.CriticalProblem;
                                    breathingTimer = Random.Range(minBreathingSevere, maxBreathingSevere);
                                }
                                else
                                {
                                    breathingStatus = BreathingStatus.MinimalProblem;
                                    breathingTimer = Random.Range(minBreathingModerate, maxBreathingModerate);
                                }
                                return;
                        }









                        return;
                    case BleedingInjuryStatus.Moderate:
                        if (RandomBool(0.1f))
                        {
                            breathingStatus = BreathingStatus.None;
                        }
                        else if (RandomBool(0.1f))
                        {
                            breathingStatus = BreathingStatus.CriticalProblem;
                            breathingTimer = Random.Range(minBreathingSevere, maxBreathingSevere);
                        }
                        else
                        {
                            breathingStatus = BreathingStatus.MinimalProblem;
                            breathingTimer = Random.Range(minBreathingModerate, maxBreathingModerate);
                        }












                        return;
                    case BleedingInjuryStatus.Severe:
                        if (RandomBool(0.3f))
                        {
                            breathingStatus = BreathingStatus.None;
                        }
                        else if (RandomBool(0.3f))
                        {
                            breathingStatus = BreathingStatus.CriticalProblem;
                            breathingTimer = Random.Range(minBreathingSevere, maxBreathingSevere);
                        }
                        else
                        {
                            breathingStatus = BreathingStatus.MinimalProblem;
                            breathingTimer = Random.Range(minBreathingModerate, maxBreathingModerate);
                        }










                        return;
                }
            }


        }

        private void CalculatePulse()
        {
            float pulseUntilShock = Random.Range(10, 20);
            switch (bloodLossSeverity)
            {
                case BleedingInjuryStatus.None:
                    pulse = Random.Range(80,100);
                    return;
                case BleedingInjuryStatus.Minimal:
                    if (RandomBool(0.9f))
                    {
                        pulse = Random.Range(80,100);
                        int secUntilPulseFailure = Random.Range(500, 800);
                        pulseIncreaseRate = secUntilPulseFailure / pulseUntilShock;
                    }
                    else
                    {
                        pulse = Random.Range(90,110);
                        int secUntilPulseFailure = Random.Range(500, 800);
                        pulseIncreaseRate = secUntilPulseFailure / pulseUntilShock;
                    }
                    return;
                case BleedingInjuryStatus.Moderate:
                    if (RandomBool(0.5f))
                    {
                        pulse = Random.Range(90,110);
                        int secUntilPulseFailure = Random.Range(350, 650);
                        pulseIncreaseRate = secUntilPulseFailure / pulseUntilShock;
                    }
                    else
                    {
                        pulse = Random.Range(100,120);
                        int secUntilPulseFailure = Random.Range(350, 650);
                        pulseIncreaseRate = secUntilPulseFailure / pulseUntilShock;
                    }
                    return;
                case BleedingInjuryStatus.Severe:
                    if (RandomBool(0.1f))
                    {
                        pulse = 0;
                    }
                    else
                    {
                        pulse = Random.Range(110,130);
                        int secUntilPulseFailure = Random.Range(210, 390);
                        pulseIncreaseRate = secUntilPulseFailure / pulseUntilShock;
                    }
                    return;
            }
        }

        private void CalculateCorrectZone()
        {
            if (breathingStatus == BreathingStatus.None)
            {
                correctZone = Zone.Black;
                pulse = 0;
                concious = false;
                dead = true;
                return;
            }

            if (pulse == 0)
            {
                correctZone = Zone.Red;
                concious = false;
                return;
            }

            
            
            switch (bloodLossSeverity)
            {
                case BleedingInjuryStatus.None:
                    correctZone = Zone.Green;
                    return;
                case BleedingInjuryStatus.Minimal:
                    if (breathingStatus >= BreathingStatus.MinimalProblem)
                    {
                        correctZone = Zone.Yellow;
                    }
                    else
                    {
                        correctZone = Zone.Green;
                    }
                    return;
                case BleedingInjuryStatus.Moderate:
                    if (breathingStatus == BreathingStatus.MinimalProblem)
                    {
                        correctZone = Zone.Red;
                    }
                    else
                    {
                        correctZone = Zone.Yellow;
                    }
                    return;
                case BleedingInjuryStatus.Severe:
                    correctZone = Zone.Red;
                    return;
            }
            
            
        }

        private void CalculateNeededHelp()
        {
            needTourniquet = bleedingArea is BleedingArea.Arms or BleedingArea.Thighs or BleedingArea.Legs;
            needPressureRelief = (int)breathingStatus > 0;
            needPharyngealTube = !concious;
        }

        private void ZoneReasoning()
        {
            zoneReasoning.Add("Blood Loss Severity is " + bloodLossSeverity.ToString());
            zoneReasoning.Add("Pulse is " + pulse.ToString());
            zoneReasoning.Add("Breathing status is " + breathingStatus.ToString());
            if (bleedingArea == BleedingArea.Torso)
            {
                zoneReasoning.Add("Torso bleeding is " + bleedingSeverity.ToString());
            }
            else
            {
                zoneReasoning.Add("Torso bleeding is none");
            }
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
            for (int i = 1; i < injuryWeights.Count; i++)
            {
                counter += injuryWeights[i];

                if (counter > random)
                {
                    return (BleedingArea)i;
                }
            }
            
            return BleedingArea.None;
        }

        public Comparative Side()
        {
            return bleedingSide;
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

        public Zone Initial()
        {
            return initialZone;
        }

        public void Inspect(Zone guess)
        {
            guessedZone = guess;
            inspectionDone = true;
            agent.beliefes.SetState("cleared", 1);
            ZoneReasoning();
        }

        public bool Concious()
        {
            return concious;
        }

        public ValueTuple<Zone, Zone> GuessedZone()
        {
            return new ValueTuple<Zone, Zone>(correctZone, guessedZone);
        }

        public bool CanWalk()
        {
            if (pulse == 0) return false;
            if (concious == false) return false;
            if ((int)breathingStatus > 1) return false;
            if ((int)bloodLossSeverity > 1) return false;
            switch (bleedingArea)
            {
                case BleedingArea.Legs:
                    return (int)bleedingSeverity > 0;
                case BleedingArea.Thighs:
                    return (int)bleedingSeverity > 0;
                case BleedingArea.Torso:
                    return (int)bleedingSeverity > 0;
                default:
                    break;
            }
            
            
            return true;

        }

        public bool Sitting()
        {
            if (concious == false) return false;
            if (breathingStatus == BreathingStatus.MinimalProblem) return true;
            if (bloodLossSeverity == BleedingInjuryStatus.Minimal) return true;
            
            return false;
        }

        public int GetBleedingArea()
        {
            return (int)bleedingArea;
        }

        public int GetBleedingSeverity()
        {
            return (int)bleedingSeverity;
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
        Moderate,
        Severe
    }
    
    [System.Serializable]
    public enum BreathingStatus 
    {
        Normal,
        MinimalProblem,
        CriticalProblem,
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
