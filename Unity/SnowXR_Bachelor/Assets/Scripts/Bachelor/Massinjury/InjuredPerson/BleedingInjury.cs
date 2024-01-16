using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Serialization;
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
        [SerializeField] private  BleedingInjuryStatus headBleeding;
        [SerializeField] private  BleedingInjuryStatus neckBleeding;
        [SerializeField] private  BleedingInjuryStatus rightArmBleeding;
        [SerializeField] private  BleedingInjuryStatus leftArmBleeding;
        [SerializeField] private  BleedingInjuryStatus torsoBleeding;
        [SerializeField] private  BleedingInjuryStatus rightThighBleeding;
        [SerializeField] private  BleedingInjuryStatus leftThighBleeding;
        [SerializeField] private  BleedingInjuryStatus rightLegBleeding;
        [SerializeField] private  BleedingInjuryStatus leftLegBleeding;
        
        [Header("Correct Zone")]
        [SerializeField] private Zone correctZone;
        [SerializeField] private Zone initialZone;

        [Header("Chance Settings")] 
        [SerializeField, Range(0f, 1f)] private float firstInjury;
        [SerializeField, Range(0f, 1f)] private float secondInjury;
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

            headBleeding = 0;
            neckBleeding = 0;
            rightArmBleeding = 0;
            leftArmBleeding = 0;
            torsoBleeding = 0;
            rightThighBleeding = 0;
            leftThighBleeding = 0;
            rightLegBleeding = 0;
            leftLegBleeding = 0;
            // Chance to get first Injury
            if (!RandomBool(firstInjury))
            {
                return;
            }

            GiveSingleInjury();

            // Chance to get first Injury
            if (!RandomBool(secondInjury))
            {
                return;
            }

            GiveSingleInjury();
        }

        private void GiveSingleInjury()
        {
            int random = Random.Range(0, totalInjuryScore);
            BleedingArea injuryType = GetRandomInjuryType(random);

            switch (injuryType)
            {
                case BleedingArea.Head:
                    // return if we already have injury here
                    if (headBleeding != BleedingInjuryStatus.None)
                    {
                        return;
                    }

                    // Random Injury status from Minimal to Severe
                    headBleeding = (BleedingInjuryStatus)Random.Range(1, 4);
                    // Setup bloodLossSeverity based on Injury Status and area of the body
                    switch (headBleeding)
                    {
                        case BleedingInjuryStatus.Minimal:
                            return;
                        case BleedingInjuryStatus.Moderate:
                            if (bloodLossSeverity < BleedingInjuryStatus.Moderate)
                            {
                                bloodLossSeverity = BleedingInjuryStatus.Minimal;
                            }

                            return;
                        case BleedingInjuryStatus.Severe:
                            if (bloodLossSeverity < BleedingInjuryStatus.Moderate)
                            {
                                bloodLossSeverity = BleedingInjuryStatus.Minimal;
                            }

                            return;
                    }




                    break;
                case BleedingArea.Neck:
                    // return if we already have injury here
                    if (neckBleeding != BleedingInjuryStatus.None)
                    {
                        return;
                    }
                    
                    // Random Injury status from Minimal to Severe
                    neckBleeding = (BleedingInjuryStatus)Random.Range(1, 4);
                    // Setup bloodLossSeverity based on Injury Status and area of the body
                    switch (neckBleeding)
                    {
                        case BleedingInjuryStatus.Minimal:
                            if (bloodLossSeverity < BleedingInjuryStatus.Moderate)
                            {
                                bloodLossSeverity = BleedingInjuryStatus.Minimal;
                            }

                            return;
                        case BleedingInjuryStatus.Moderate:
                            if (bloodLossSeverity < BleedingInjuryStatus.Severe)
                            {
                                bloodLossSeverity = BleedingInjuryStatus.Moderate;
                            }

                            return;
                        case BleedingInjuryStatus.Severe:
                            bloodLossSeverity = BleedingInjuryStatus.Severe;
                            return;
                    }







                    break;
                case BleedingArea.Arms:
                    if (random % 2 == 0)
                    {
                        // return if we already have injury here
                        if (rightArmBleeding != BleedingInjuryStatus.None)
                        {
                            return;
                        }
                        
                        // Random Injury status from Minimal to Severe
                        rightArmBleeding = (BleedingInjuryStatus)Random.Range(1, 4);
                        // Setup bloodLossSeverity based on Injury Status and area of the body
                        switch (rightArmBleeding)
                        {
                            case BleedingInjuryStatus.Minimal:
                                return;
                            case BleedingInjuryStatus.Moderate:
                                if (bloodLossSeverity < BleedingInjuryStatus.Moderate)
                                {
                                    bloodLossSeverity = BleedingInjuryStatus.Minimal;
                                }

                                return;
                            case BleedingInjuryStatus.Severe:
                                if (bloodLossSeverity < BleedingInjuryStatus.Severe)
                                {
                                    bloodLossSeverity = BleedingInjuryStatus.Moderate;
                                }

                                return;
                        }
                    }
                    else
                    {
                        // return if we already have injury here
                        if (leftArmBleeding != BleedingInjuryStatus.None)
                        {
                            return;
                        }
                        
                        // Random Injury status from Minimal to Severe
                        leftArmBleeding = (BleedingInjuryStatus)Random.Range(1, 4);
                        // Setup bloodLossSeverity based on Injury Status and area of the body
                        switch (leftArmBleeding)
                        {
                            case BleedingInjuryStatus.Minimal:
                                return;
                            case BleedingInjuryStatus.Moderate:
                                if (bloodLossSeverity < BleedingInjuryStatus.Moderate)
                                {
                                    bloodLossSeverity = BleedingInjuryStatus.Minimal;
                                }

                                return;
                            case BleedingInjuryStatus.Severe:
                                if (bloodLossSeverity < BleedingInjuryStatus.Severe)
                                {
                                    bloodLossSeverity = BleedingInjuryStatus.Moderate;
                                }

                                return;
                        }
                    }







                    break;
                case BleedingArea.Torso:
                    // return if we already have injury here
                    if (torsoBleeding != BleedingInjuryStatus.None)
                    {
                        return;
                    }
                    
                    // Random Injury status from Minimal to Severe
                    torsoBleeding = (BleedingInjuryStatus)Random.Range(1, 4);
                    // Setup bloodLossSeverity based on Injury Status and area of the body
                    switch (torsoBleeding)
                    {
                        case BleedingInjuryStatus.Minimal:
                            if (bloodLossSeverity < BleedingInjuryStatus.Severe)
                            {
                                bloodLossSeverity = BleedingInjuryStatus.Moderate;
                            }

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
                    if (random % 2 == 0)
                    {
                        // return if we already have injury here
                        if (rightThighBleeding != BleedingInjuryStatus.None)
                        {
                            return;
                        }
                        
                        // Random Injury status from Minimal to Severe
                        rightThighBleeding = (BleedingInjuryStatus)Random.Range(1, 4);
                        // Setup bloodLossSeverity based on Injury Status and area of the body
                        switch (rightThighBleeding)
                        {
                            case BleedingInjuryStatus.Minimal:
                                if (bloodLossSeverity < BleedingInjuryStatus.Moderate)
                                {
                                    bloodLossSeverity = BleedingInjuryStatus.Minimal;
                                }

                                return;
                            case BleedingInjuryStatus.Moderate:
                                if (bloodLossSeverity < BleedingInjuryStatus.Severe)
                                {
                                    bloodLossSeverity = BleedingInjuryStatus.Moderate;
                                }

                                return;
                            case BleedingInjuryStatus.Severe:
                                bloodLossSeverity = BleedingInjuryStatus.Severe;
                                return;
                        }
                    }
                    else
                    {
                        // return if we already have injury here
                        if (leftThighBleeding != BleedingInjuryStatus.None)
                        {
                            return;
                        }

                        // Random Injury status from Minimal to Severe
                        leftThighBleeding = (BleedingInjuryStatus)Random.Range(1, 4);
                        // Setup bloodLossSeverity based on Injury Status and area of the body
                        switch (leftThighBleeding)
                        {
                            case BleedingInjuryStatus.Minimal:
                                if (bloodLossSeverity < BleedingInjuryStatus.Moderate)
                                {
                                    bloodLossSeverity = BleedingInjuryStatus.Minimal;
                                }

                                return;
                            case BleedingInjuryStatus.Moderate:
                                if (bloodLossSeverity < BleedingInjuryStatus.Severe)
                                {
                                    bloodLossSeverity = BleedingInjuryStatus.Moderate;
                                }

                                return;
                            case BleedingInjuryStatus.Severe:
                                bloodLossSeverity = BleedingInjuryStatus.Severe;
                                return;
                        }
                    }








                    break;
                case BleedingArea.Legs:

                    if (random % 2 == 0)
                    {
                        // return if we already have injury here
                        if (rightLegBleeding != BleedingInjuryStatus.None)
                        {
                            return;
                        }

                        // Random Injury status from Minimal to Severe
                        rightLegBleeding = (BleedingInjuryStatus)Random.Range(1, 4);
                        // Setup bloodLossSeverity based on Injury Status and area of the body
                        switch (rightLegBleeding)
                        {
                            case BleedingInjuryStatus.Minimal:
                                return;
                            case BleedingInjuryStatus.Moderate:
                                if (bloodLossSeverity < BleedingInjuryStatus.Moderate)
                                {
                                    bloodLossSeverity = BleedingInjuryStatus.Minimal;
                                }
                                return;
                            case BleedingInjuryStatus.Severe:
                                if (bloodLossSeverity < BleedingInjuryStatus.Severe)
                                {
                                    bloodLossSeverity = BleedingInjuryStatus.Moderate;
                                }

                                return;
                        }
                    }
                    else
                    {
                        // return if we already have injury here
                        if (leftLegBleeding != BleedingInjuryStatus.None)
                        {
                            return;
                        }

                        // Random Injury status from Minimal to Severe
                        leftLegBleeding = (BleedingInjuryStatus)Random.Range(1, 4);
                        // Setup bloodLossSeverity based on Injury Status and area of the body
                        switch (leftLegBleeding)
                        {
                            case BleedingInjuryStatus.Minimal:
                                return;
                            case BleedingInjuryStatus.Moderate:
                                if (bloodLossSeverity < BleedingInjuryStatus.Moderate)
                                {
                                    bloodLossSeverity = BleedingInjuryStatus.Minimal;
                                }
                                return;
                            case BleedingInjuryStatus.Severe:
                                if (bloodLossSeverity < BleedingInjuryStatus.Severe)
                                {
                                    bloodLossSeverity = BleedingInjuryStatus.Moderate;
                                }

                                return;
                        }
                    }







                    break;
            }





        }

        private void CalculateBreathing()
        {
            // Breathing is based on torso Injury and bloodLoss Severity
            switch (torsoBleeding)
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
                                breathingStatus = BreathingStatus.None;
                            }
                            else if (RandomBool(0.02f))
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
                    if (breathingStatus >= BreathingStatus.UnNormal || torsoBleeding > BleedingInjuryStatus.None)
                    {
                        correctZone = Zone.Yellow;
                    }
                    else
                    {
                        correctZone = Zone.Green;
                    }
                    return;
                case BleedingInjuryStatus.Moderate:
                    if (breathingStatus == BreathingStatus.Critical || torsoBleeding > BleedingInjuryStatus.Moderate)
                    {
                        correctZone = Zone.Red;
                    }
                    else if (breathingStatus == BreathingStatus.UnNormal)
                    {
                        correctZone = Zone.Yellow;
                    }
                    else
                    {
                        correctZone = Zone.Green;
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
            zoneReasoning.Add("Torso bleeding is " + torsoBleeding.ToString());
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
        Head,
        Neck,
        Arms,
        Torso,
        Thighs,
        Legs,
        None
    }
}
