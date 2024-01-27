using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Random = UnityEngine.Random;


namespace SnowXR.MassInjury
{
    /// <summary>
    /// Injured Person
    ///
    /// Class contains InjuryStatuses for each main body part, and has Logic Functions that
    /// Initialize and maintain the statuses
    /// </summary>
    public class BleedingInjury : MonoBehaviour
    {
        [Header("Reasoning")] 
        [SerializeField] private List<string> zoneReasoning = new List<string>();
        
        [Header("Breath Status")]
        [SerializeField] private  BreathingStatus breathingStatus;
        
        [Header("Pulse Status")]
        [SerializeField] private int pulse;
        private float pulseIncreaseRate;

        [Header("Bleeding Status")] 
        [SerializeField] private BleedingInjuryStatus bleedingStatus;
        [SerializeField] private BleedingArea bleedingArea;
        
        [Header("Correct Zone")]
        [SerializeField] private Zone correctZone;
        [SerializeField] private Zone initialZone;

        [Header("Chance Settings")] 
        [SerializeField, Range(0f, 1f)] private float firstInjury;
        [SerializeField] private int headInjuryWeight = 10;
        [SerializeField] private int neckInjuryWeight = 20;
        [SerializeField] private int armInjuryWeight = 30;
        [SerializeField] private int torsoInjuryWeight = 25;
        [SerializeField] private int thighInjuryWeight = 25;
        [SerializeField] private int legsInjuryWeight = 10;
        
        
        [Header("Bleeding")] 
        [SerializeField] private BleedingInjuryStatus bloodLossSeverity;
        [SerializeField] public float bloodLossML = 0f;


        [Header("Inspection")] [SerializeField]
        private bool inspectionDone = false;
        
        
        // debugging
        [Header("Debugging")]
        [SerializeField] private float timeLived = 0f;
        [SerializeField] private Zone guessedZone;
        
        
        // Logic
        private float timer = 0f;
        private float criticalPulseTimer = 0f;
        private float breathingTimer = 0f;
        private const float minBreathingModerate = 90f;
        private const float minBreathingSevere = 30f;
        private const float maxBreathingModerate = 2500f;
        private const float maxBreathingSevere = 1000f;
        private int totalInjuryScore = 0;
        private float timeWithoutAir = 0f;
        
        private void Awake()
        {
            totalInjuryScore = headInjuryWeight + neckInjuryWeight + armInjuryWeight + torsoInjuryWeight + thighInjuryWeight + legsInjuryWeight;
            bloodLossML = 0f;
            bloodLossSeverity = BleedingInjuryStatus.None;
            InitInjuries();
            CalculateBreathing();
            CalculatePulse();
            CalculateCorrectZone();
            ZoneReasoning();
            initialZone = correctZone;
        }
        private void Update()
        {
            if (inspectionDone) return;
            // If we bled out already
            if (bloodLossML > 4000f)
            {
                pulse = 0;
                breathingStatus = BreathingStatus.None;
                correctZone = Zone.Black;
                return;
            }
            // Dead / Black Zone
            if (pulse == 0)
            {
                breathingStatus = BreathingStatus.None;
                correctZone = Zone.Black;
                return;
            }
            
            
            // Going into cardiac arrest
            if (pulse > 140)
            {
                pulse = Random.Range(180, 190);
                criticalPulseTimer += Time.deltaTime;
                if (criticalPulseTimer > 20f)
                {
                    pulse = 0;
                    breathingStatus = BreathingStatus.None;
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
                case BreathingStatus.UnNormal:
                    break;
                case BreathingStatus.Critical:
                    breathingTimer -= Time.deltaTime;
                    if (breathingTimer < 0f)
                    {
                        breathingStatus = BreathingStatus.None;
                    }
                    break;
                case BreathingStatus.None:
                    timeWithoutAir += Time.deltaTime;
                    if (timeWithoutAir > 60f)
                    {
                        pulse = 0;
                    }
                    break;
            }
            
            // Find out what zone we are now
            CalculateCorrectZone();
            
        }



        private void InitInjuries()
        {

            breathingStatus = 0;

            pulse = 0;
            pulseIncreaseRate = 0;

            bleedingStatus = 0;

            // Chance to get first Injury
            if (!RandomBool(firstInjury))
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
                    if (bleedingStatus != BleedingInjuryStatus.None)
                    {
                        return;
                    }
                    // Random Injury status from Minimal to Severe
                    bleedingStatus = (BleedingInjuryStatus)Random.Range(1, 4);
                    // Setup bloodLossSeverity based on Injury Status and area of the body
                    switch (bleedingStatus)
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
                    if (bleedingStatus != BleedingInjuryStatus.None)
                    {
                        return;
                    }
                    // Random Injury status from Minimal to Severe
                    bleedingStatus = (BleedingInjuryStatus)Random.Range(1, 4);
                    // Setup bloodLossSeverity based on Injury Status and area of the body
                    switch (bleedingStatus)
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
                    if (bleedingStatus != BleedingInjuryStatus.None)
                    {
                        return;
                    }
                    // Random Injury status from Minimal to Severe
                    bleedingStatus = (BleedingInjuryStatus)Random.Range(1, 4);
                    // Setup bloodLossSeverity based on Injury Status and area of the body
                    switch (bleedingStatus)
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
                    if (bleedingStatus != BleedingInjuryStatus.None)
                    {
                        return;
                    }
                    // Random Injury status from Minimal to Severe
                    bleedingStatus = (BleedingInjuryStatus)Random.Range(1, 4);
                    // Setup bloodLossSeverity based on Injury Status and area of the body
                    switch (bleedingStatus)
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
                    if (bleedingStatus != BleedingInjuryStatus.None)
                    {
                        return;
                    }
                    // Random Injury status from Minimal to Severe
                    bleedingStatus = (BleedingInjuryStatus)Random.Range(1, 4);
                    // Setup bloodLossSeverity based on Injury Status and area of the body
                    switch (bleedingStatus)
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
                    if (bleedingStatus != BleedingInjuryStatus.None)
                    {
                        return;
                    }
                    // Random Injury status from Minimal to Severe
                    bleedingStatus = (BleedingInjuryStatus)Random.Range(1, 4);
                    // Setup bloodLossSeverity based on Injury Status and area of the body
                    switch (bleedingStatus)
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
                switch (bleedingStatus)
                {

                    case BleedingInjuryStatus.None:
                        switch (bloodLossSeverity)
                        {
                            case BleedingInjuryStatus.Minimal:
                                breathingStatus = BreathingStatus.UnNormal;
                                breathingTimer = Random.Range(minBreathingModerate, maxBreathingModerate);
                                return;
                            case BleedingInjuryStatus.Moderate:
                                if (RandomBool(0.02f))
                                {
                                    breathingStatus = BreathingStatus.Critical;
                                    breathingTimer = Random.Range(minBreathingSevere, maxBreathingSevere);
                                }
                                else
                                {
                                    breathingStatus = BreathingStatus.UnNormal;
                                }
                                return;
                            case BleedingInjuryStatus.Severe:
                                if (RandomBool(0.1f))
                                {
                                    breathingStatus = BreathingStatus.Critical;
                                    breathingTimer = Random.Range(minBreathingSevere, maxBreathingSevere);
                                }
                                else
                                {
                                    breathingStatus = BreathingStatus.UnNormal;
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
                            breathingStatus = BreathingStatus.Critical;
                            breathingTimer = Random.Range(minBreathingSevere, maxBreathingSevere);
                        }
                        else
                        {
                            breathingStatus = BreathingStatus.UnNormal;
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
                            breathingStatus = BreathingStatus.Critical;
                            breathingTimer = Random.Range(minBreathingSevere, maxBreathingSevere);
                        }
                        else
                        {
                            breathingStatus = BreathingStatus.UnNormal;
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
                return;
            }

            if (pulse == 0)
            {
                correctZone = Zone.Red;
                return;
            }

            
            
            switch (bloodLossSeverity)
            {
                case BleedingInjuryStatus.None:
                    correctZone = Zone.Green;
                    return;
                case BleedingInjuryStatus.Minimal:
                    if (breathingStatus >= BreathingStatus.UnNormal)
                    {
                        correctZone = Zone.Yellow;
                    }
                    else
                    {
                        correctZone = Zone.Green;
                    }
                    return;
                case BleedingInjuryStatus.Moderate:
                    if (breathingStatus == BreathingStatus.UnNormal)
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

        private void ZoneReasoning()
        {
            zoneReasoning.Add("Blood Loss Severity is " + bloodLossSeverity.ToString());
            zoneReasoning.Add("Pulse is " + pulse.ToString());
            zoneReasoning.Add("Breathing status is " + breathingStatus.ToString());
            if (bleedingArea == BleedingArea.Torso)
            {
                zoneReasoning.Add("Torso bleeding is " + bleedingStatus.ToString());
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

        private bool RandomBool(float chance)
        {
            int random = Random.Range(0, 100);
            return random < chance * 100f;
        }

        public bool InspectionDone()
        {
            return inspectionDone;
        }

        public void Inspect(Zone guess)
        {
            guessedZone = guess;
            inspectionDone = true;
        }

        public ValueTuple<Zone, Zone> GuessedZone()
        {
            return new ValueTuple<Zone, Zone>(correctZone, guessedZone);
        }

        public bool CanWalk()
        {
            switch (bleedingArea)
            {
                case BleedingArea.Legs:
                    return (int)bleedingStatus > 0;
                case BleedingArea.Thighs:
                    return (int)bleedingStatus > 0;
                case BleedingArea.Torso:
                    return (int)bleedingStatus > 0;
                default:
                    break;
            }
            if (pulse == 0) return false;
            if ((int)breathingStatus > 1) return false;
            if ((int)bloodLossSeverity > 1) return false;
            
            return true;

        }

        public bool Sitting()
        {
            if (breathingStatus == BreathingStatus.UnNormal) return true;
            if (bloodLossSeverity == BleedingInjuryStatus.Minimal) return true;
            
            return false;
        }
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
        UnNormal,
        Critical,
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
}
