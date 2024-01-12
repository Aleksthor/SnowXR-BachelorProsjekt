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
    public class InjuredPerson : MonoBehaviour
    {
        [Header("Reasoning")] 
        [SerializeField] private List<string> zoneReasoning = new List<string>();
        
        [Header("Breath Status")]
        [SerializeField] private  BreathingStatus breathingStatus;
        
        [Header("Pulse Status")]
        [SerializeField] private int pulse;
        private float pulseIncreaseRate;
        
        [Header("Bleeding Status")]
        [SerializeField] private  InjuryStatus headBleeding;
        [SerializeField] private  InjuryStatus neckBleeding;
        [SerializeField] private  InjuryStatus rightArmBleeding;
        [SerializeField] private  InjuryStatus leftArmBleeding;
        [SerializeField] private  InjuryStatus torsoBleeding;
        [SerializeField] private  InjuryStatus rightThighBleeding;
        [SerializeField] private  InjuryStatus leftThighBleeding;
        [SerializeField] private  InjuryStatus rightLegBleeding;
        [SerializeField] private  InjuryStatus leftLegBleeding;
        
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
        private int totalInjuryScore = 0;
        
        
        [Header("Bleeding")] 
        [SerializeField] private InjuryStatus bloodLossSeverity;
        [SerializeField] public float bloodLossML = 0f;
        
        // Logic
        private float timer = 0f;
        private float criticalPulseTimer = 0f;
        private float breathingTimer = 0f;
        private const float minBreathingModerate = 90f;
        private const float minBreathingSevere = 30f;
        private const float maxBreathingModerate = 2500f;
        private const float maxBreathingSevere = 1000f;
        
        
        // debugging
        [Header("Debugging")]
        [SerializeField] float timeLived = 0f;
        
        private void Awake()
        {
            totalInjuryScore = headInjuryWeight + neckInjuryWeight + armInjuryWeight + torsoInjuryWeight + thighInjuryWeight + legsInjuryWeight;
            bloodLossML = 0f;
            bloodLossSeverity = InjuryStatus.None;
            InitInjuries();
            CalculateBreathing();
            CalculatePulse();
            CalculateCorrectZone();
            ZoneReasoning();
            initialZone = correctZone;
        }
        private void Update()
        {
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
                case InjuryStatus.None:
                    break;
                case InjuryStatus.Minimal:
                    bloodLossML += 3f * Time.deltaTime;
                    break;
                case InjuryStatus.Moderate:
                    bloodLossML += 9f * Time.deltaTime;
                    break;
                case InjuryStatus.Severe:
                    bloodLossML += 13f * Time.deltaTime;
                    break;
            }
            
            // Increase Pulse
            if (pulseIncreaseRate != 0f)
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
            InjuryType injuryType = GetRandomInjuryType(random);

            switch (injuryType)
            {
                case InjuryType.Head:
                    // return if we already have injury here
                    if (headBleeding != InjuryStatus.None)
                    {
                        return;
                    }

                    // Random Injury status from Minimal to Severe
                    headBleeding = (InjuryStatus)Random.Range(1, 4);
                    // Setup bloodLossSeverity based on Injury Status and area of the body
                    switch (headBleeding)
                    {
                        case InjuryStatus.Minimal:
                            return;
                        case InjuryStatus.Moderate:
                            if (bloodLossSeverity < InjuryStatus.Moderate)
                            {
                                bloodLossSeverity = InjuryStatus.Minimal;
                            }

                            return;
                        case InjuryStatus.Severe:
                            if (bloodLossSeverity < InjuryStatus.Moderate)
                            {
                                bloodLossSeverity = InjuryStatus.Minimal;
                            }

                            return;
                    }




                    break;
                case InjuryType.Neck:
                    // return if we already have injury here
                    if (neckBleeding != InjuryStatus.None)
                    {
                        return;
                    }
                    
                    // Random Injury status from Minimal to Severe
                    neckBleeding = (InjuryStatus)Random.Range(1, 4);
                    // Setup bloodLossSeverity based on Injury Status and area of the body
                    switch (neckBleeding)
                    {
                        case InjuryStatus.Minimal:
                            if (bloodLossSeverity < InjuryStatus.Moderate)
                            {
                                bloodLossSeverity = InjuryStatus.Minimal;
                            }

                            return;
                        case InjuryStatus.Moderate:
                            if (bloodLossSeverity < InjuryStatus.Severe)
                            {
                                bloodLossSeverity = InjuryStatus.Moderate;
                            }

                            return;
                        case InjuryStatus.Severe:
                            bloodLossSeverity = InjuryStatus.Severe;
                            return;
                    }







                    break;
                case InjuryType.Arms:
                    if (random % 2 == 0)
                    {
                        // return if we already have injury here
                        if (rightArmBleeding != InjuryStatus.None)
                        {
                            return;
                        }
                        
                        // Random Injury status from Minimal to Severe
                        rightArmBleeding = (InjuryStatus)Random.Range(1, 4);
                        // Setup bloodLossSeverity based on Injury Status and area of the body
                        switch (rightArmBleeding)
                        {
                            case InjuryStatus.Minimal:
                                return;
                            case InjuryStatus.Moderate:
                                if (bloodLossSeverity < InjuryStatus.Moderate)
                                {
                                    bloodLossSeverity = InjuryStatus.Minimal;
                                }

                                return;
                            case InjuryStatus.Severe:
                                if (bloodLossSeverity < InjuryStatus.Severe)
                                {
                                    bloodLossSeverity = InjuryStatus.Moderate;
                                }

                                return;
                        }
                    }
                    else
                    {
                        // return if we already have injury here
                        if (leftArmBleeding != InjuryStatus.None)
                        {
                            return;
                        }
                        
                        // Random Injury status from Minimal to Severe
                        leftArmBleeding = (InjuryStatus)Random.Range(1, 4);
                        // Setup bloodLossSeverity based on Injury Status and area of the body
                        switch (leftArmBleeding)
                        {
                            case InjuryStatus.Minimal:
                                return;
                            case InjuryStatus.Moderate:
                                if (bloodLossSeverity < InjuryStatus.Moderate)
                                {
                                    bloodLossSeverity = InjuryStatus.Minimal;
                                }

                                return;
                            case InjuryStatus.Severe:
                                if (bloodLossSeverity < InjuryStatus.Severe)
                                {
                                    bloodLossSeverity = InjuryStatus.Moderate;
                                }

                                return;
                        }
                    }







                    break;
                case InjuryType.Torso:
                    // return if we already have injury here
                    if (torsoBleeding != InjuryStatus.None)
                    {
                        return;
                    }
                    
                    // Random Injury status from Minimal to Severe
                    torsoBleeding = (InjuryStatus)Random.Range(1, 4);
                    // Setup bloodLossSeverity based on Injury Status and area of the body
                    switch (torsoBleeding)
                    {
                        case InjuryStatus.Minimal:
                            if (bloodLossSeverity < InjuryStatus.Severe)
                            {
                                bloodLossSeverity = InjuryStatus.Moderate;
                            }

                            return;
                        case InjuryStatus.Moderate:
                            bloodLossSeverity = InjuryStatus.Severe;
                            return;
                        case InjuryStatus.Severe:
                            bloodLossSeverity = InjuryStatus.Severe;
                            return;
                    }








                    break;
                case InjuryType.Thighs:
                    if (random % 2 == 0)
                    {
                        // return if we already have injury here
                        if (rightThighBleeding != InjuryStatus.None)
                        {
                            return;
                        }
                        
                        // Random Injury status from Minimal to Severe
                        rightThighBleeding = (InjuryStatus)Random.Range(1, 4);
                        // Setup bloodLossSeverity based on Injury Status and area of the body
                        switch (rightThighBleeding)
                        {
                            case InjuryStatus.Minimal:
                                if (bloodLossSeverity < InjuryStatus.Moderate)
                                {
                                    bloodLossSeverity = InjuryStatus.Minimal;
                                }

                                return;
                            case InjuryStatus.Moderate:
                                if (bloodLossSeverity < InjuryStatus.Severe)
                                {
                                    bloodLossSeverity = InjuryStatus.Moderate;
                                }

                                return;
                            case InjuryStatus.Severe:
                                bloodLossSeverity = InjuryStatus.Severe;
                                return;
                        }
                    }
                    else
                    {
                        // return if we already have injury here
                        if (leftThighBleeding != InjuryStatus.None)
                        {
                            return;
                        }

                        // Random Injury status from Minimal to Severe
                        leftThighBleeding = (InjuryStatus)Random.Range(1, 4);
                        // Setup bloodLossSeverity based on Injury Status and area of the body
                        switch (leftThighBleeding)
                        {
                            case InjuryStatus.Minimal:
                                if (bloodLossSeverity < InjuryStatus.Moderate)
                                {
                                    bloodLossSeverity = InjuryStatus.Minimal;
                                }

                                return;
                            case InjuryStatus.Moderate:
                                if (bloodLossSeverity < InjuryStatus.Severe)
                                {
                                    bloodLossSeverity = InjuryStatus.Moderate;
                                }

                                return;
                            case InjuryStatus.Severe:
                                bloodLossSeverity = InjuryStatus.Severe;
                                return;
                        }
                    }








                    break;
                case InjuryType.Legs:

                    if (random % 2 == 0)
                    {
                        // return if we already have injury here
                        if (rightLegBleeding != InjuryStatus.None)
                        {
                            return;
                        }

                        // Random Injury status from Minimal to Severe
                        rightLegBleeding = (InjuryStatus)Random.Range(1, 4);
                        // Setup bloodLossSeverity based on Injury Status and area of the body
                        switch (rightLegBleeding)
                        {
                            case InjuryStatus.Minimal:
                                return;
                            case InjuryStatus.Moderate:
                                if (bloodLossSeverity < InjuryStatus.Moderate)
                                {
                                    bloodLossSeverity = InjuryStatus.Minimal;
                                }
                                return;
                            case InjuryStatus.Severe:
                                if (bloodLossSeverity < InjuryStatus.Severe)
                                {
                                    bloodLossSeverity = InjuryStatus.Moderate;
                                }

                                return;
                        }
                    }
                    else
                    {
                        // return if we already have injury here
                        if (leftLegBleeding != InjuryStatus.None)
                        {
                            return;
                        }

                        // Random Injury status from Minimal to Severe
                        leftLegBleeding = (InjuryStatus)Random.Range(1, 4);
                        // Setup bloodLossSeverity based on Injury Status and area of the body
                        switch (leftLegBleeding)
                        {
                            case InjuryStatus.Minimal:
                                return;
                            case InjuryStatus.Moderate:
                                if (bloodLossSeverity < InjuryStatus.Moderate)
                                {
                                    bloodLossSeverity = InjuryStatus.Minimal;
                                }
                                return;
                            case InjuryStatus.Severe:
                                if (bloodLossSeverity < InjuryStatus.Severe)
                                {
                                    bloodLossSeverity = InjuryStatus.Moderate;
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
                
                case InjuryStatus.None:
                    switch (bloodLossSeverity)
                    {
                        case InjuryStatus.Minimal:
                            breathingStatus = BreathingStatus.UnNormal;
                            breathingTimer = Random.Range(minBreathingModerate, maxBreathingModerate);
                            
                            
                            
                            return;
                        case InjuryStatus.Moderate:
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
                        case InjuryStatus.Severe:
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
                case InjuryStatus.Moderate:
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
                case InjuryStatus.Severe:
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
                case InjuryStatus.None:
                    pulse = Random.Range(80,100);
                    return;
                case InjuryStatus.Minimal:
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
                case InjuryStatus.Moderate:
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
                case InjuryStatus.Severe:
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
                case InjuryStatus.None:
                    correctZone = Zone.Green;
                    return;
                case InjuryStatus.Minimal:
                    if (breathingStatus >= BreathingStatus.UnNormal || torsoBleeding > InjuryStatus.None)
                    {
                        correctZone = Zone.Yellow;
                    }
                    else
                    {
                        correctZone = Zone.Green;
                    }
                    return;
                case InjuryStatus.Moderate:
                    if (breathingStatus == BreathingStatus.Critical || torsoBleeding > InjuryStatus.Moderate)
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
                case InjuryStatus.Severe:
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

        private InjuryType GetRandomInjuryType(int random)
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
                    return (InjuryType)i;
                }
            }
            
            return InjuryType.None;
        }

        private bool RandomBool(float chance)
        {
            int random = Random.Range(0, 100);
            return random < chance * 100f;
        }
        
    }


    [System.Serializable]
    public enum InjuryStatus 
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
    
    public enum InjuryType 
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
