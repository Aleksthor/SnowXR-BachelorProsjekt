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
        [SerializeField] private bool worsenInjury = false;
        [SerializeField] private BleedingArea bleedingArea;
        [SerializeField] private Comparative bleedingSide = Comparative.None;
        
        [Header("Blood Loss")] 
        [SerializeField] private BloodLossSeverity bloodLossSeverity;
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
        [SerializeField] private bool needSideLease = false;
        [SerializeField] private bool recievedSideLease = false;
        [SerializeField] private bool needOpenAirways = false;
        [SerializeField] private bool recievedOpenAirways = false;
        [SerializeField] private bool needPressure = false;
        [SerializeField] private bool recievedPressure = false;
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
        private bool sitting = false;
        private bool setupSitting = false;
        
        private void Awake()
        {
            agent = GetComponent<MassInjuryAgent>();
            patient = GetComponent<MassInjuryPatient>();
            
            totalInjuryScore = headInjuryWeight + neckInjuryWeight + armInjuryWeight + torsoInjuryWeight + thighInjuryWeight + legsInjuryWeight;
            bloodLossML = 0f;
            bloodLossSeverity = BloodLossSeverity.None;
            concious = true;
            if (randomInjury)
            { 
                InitInjuries();
                CalculateBreathing();
                CalculatePulse();
            }
            CalculateCorrectZone();
            CalculateNeededHelp();
            initialZone = correctZone;
        }
        private void Update()
        {
            DebugAnimationState();
            if (!worsenInjury) return;
            if (inspectionDone || dead) return;
            // If we bled out already
            if (bloodLossML > 4000f)
            {
                Die();
                return;
            }
            // Dead / Black Zone
            if (pulse == 0)
            {
                Die();
                return;
            }
            
            
            // Going into cardiac arrest
            if (pulse > 140)
            {
                pulse = Random.Range(180, 190);
                criticalPulseTimer += Time.deltaTime;
                if (criticalPulseTimer > 20f)
                {
                    Die();
                }

            }
            

            timeLived += Time.deltaTime;
            
            // calculate bloodLoss based on injury
            if (!needTourniquet || !recievedTourniquet)
            {
                switch (bloodLossSeverity)
                {
                    case BloodLossSeverity.None:
                        break;
                    case BloodLossSeverity.Minimal:
                        bloodLossML += 3f * Time.deltaTime;
                        break;
                    case BloodLossSeverity.Severe:
                        bloodLossML += 13f * Time.deltaTime;
                        break;
                }
            }
            else
            {
                patient.GetBleedingSockets().RemoveBloodParticles();
            }
            
            
            // calculate consciousness based on bloodLoss
            if (bloodLossML > 2000)
            {
                LooseConciousness();
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
                case BreathingStatus.ClosedAirway:
                    breathingTimer -= Time.deltaTime;
                    if (breathingTimer < 0f)
                    {
                        breathingStatus = BreathingStatus.None;
                        LooseConciousness();
                    }
                    break;
                case BreathingStatus.LungInjury:
                    breathingTimer -= Time.deltaTime;
                    if (breathingTimer < 0f)
                    {
                        breathingStatus = BreathingStatus.None;
                        LooseConciousness();
                    }
                    break;
                case BreathingStatus.None:
                    timeWithoutAir += Time.deltaTime;
                    if (timeWithoutAir > 60f)
                    {
                       Die();
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

            // Chance to get first Injury
            if (!RandomBool(injuryChance))
            {
                return;
            }

            GiveSingleInjury();
            
            if (!worsenInjury)
            {
                switch (bloodLossSeverity)
                {
                    case BloodLossSeverity.None:
                        bloodLossML = 0f;
                        break;
                    case BloodLossSeverity.Minimal:
                        bloodLossML = Random.Range(250f, 750f);
                        break;
                    case BloodLossSeverity.Moderate:
                        bloodLossML = Random.Range(500f, 2200f);
                        break;
                    case BloodLossSeverity.Severe:
                        bloodLossML = Random.Range(1000f, 4000f);
                        break;
                    
                }
                
            }
        }

        private void GiveSingleInjury()
        {
            int random = Random.Range(0, totalInjuryScore);
            bleedingArea = GetRandomInjuryType(random);
            BleedingInjuryStatus bleedingSeverity = BleedingInjuryStatus.None;
            switch (bleedingArea)
            {
                case BleedingArea.Head:
                    // Random Injury status from Minimal to Severe
                    bleedingSeverity = (BleedingInjuryStatus)Random.Range(1, 3);
                    // Setup bloodLossSeverity based on Injury Status and area of the body
                    switch (bleedingSeverity)
                    {
                        case BleedingInjuryStatus.Minimal:
                            bloodLossSeverity = BloodLossSeverity.Minimal;
                            return;
                        case BleedingInjuryStatus.Severe:
                            bloodLossSeverity = BloodLossSeverity.Moderate;
                            return;
                    }
                    break;
                case BleedingArea.Neck:
                    // Random Injury status from Minimal to Severe
                    bleedingSeverity = (BleedingInjuryStatus)Random.Range(1, 3);
                    // Setup bloodLossSeverity based on Injury Status and area of the body
                    switch (bleedingSeverity)
                    {
                        case BleedingInjuryStatus.Minimal:
                            bloodLossSeverity = BloodLossSeverity.Moderate;
                            return;
                        case BleedingInjuryStatus.Severe:
                            bloodLossSeverity = BloodLossSeverity.Severe;
                            return;
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
                            bloodLossSeverity = BloodLossSeverity.Minimal;
                            return;
                        case BleedingInjuryStatus.Severe:
                            bloodLossSeverity = BloodLossSeverity.Severe;
                            return;
                    }
                    break;
                case BleedingArea.Torso:
                    // Random Injury status from Minimal to Severe
                    bleedingSeverity = (BleedingInjuryStatus)Random.Range(1, 3);
                    // Setup bloodLossSeverity based on Injury Status and area of the body
                    switch (bleedingSeverity)
                    {
                        case BleedingInjuryStatus.Minimal:
                            bloodLossSeverity = BloodLossSeverity.Moderate;
                            return;
                        case BleedingInjuryStatus.Severe:
                            bloodLossSeverity = BloodLossSeverity.Severe;
                            return;
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
                            bloodLossSeverity = BloodLossSeverity.Moderate;
                            return;
                        case BleedingInjuryStatus.Severe:
                            bloodLossSeverity = BloodLossSeverity.Severe;
                            return;
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
                            bloodLossSeverity = BloodLossSeverity.Minimal;
                            return;
                        case BleedingInjuryStatus.Severe:
                            bloodLossSeverity = BloodLossSeverity.Moderate;
                            return;
                    }
                    break;
            }
            

        }

        private void CalculateBreathing()
        {
            if (worsenInjury)
            {
                if (bleedingArea == BleedingArea.Torso || bleedingArea == BleedingArea.Neck)
                {
                    // Breathing is based on torso Injury and bloodLoss Severity
                    switch (bloodLossSeverity)
                    {
                        case BloodLossSeverity.None:
                            switch (bloodLossSeverity)
                            {
                                case BloodLossSeverity.Minimal:
                                    breathingStatus = BreathingStatus.Normal;
                                    breathingTimer = Random.Range(minBreathingModerate, maxBreathingModerate);
                                    return;
                                case BloodLossSeverity.Moderate:
                                    if (RandomBool(0.2f))
                                    {
                                        breathingStatus = BreathingStatus.LungInjury;
                                        breathingTimer = Random.Range(minBreathingSevere, maxBreathingSevere);
                                    }
                                    else
                                    {
                                        breathingStatus = BreathingStatus.Normal;
                                    }

                                    return;
                                case BloodLossSeverity.Severe:
                                    if (RandomBool(0.75f))
                                    {
                                        breathingStatus = BreathingStatus.LungInjury;
                                        breathingTimer = Random.Range(minBreathingSevere, maxBreathingSevere);
                                    }
                                    else
                                    {
                                        breathingStatus = BreathingStatus.Normal;
                                    }

                                    return;
                            }

                            return;
                        case BloodLossSeverity.Moderate:
                            if (RandomBool(0.1f))
                            {
                                breathingStatus = BreathingStatus.None;
                            }
                            else if (RandomBool(0.1f))
                            {
                                breathingStatus = BreathingStatus.LungInjury;
                                breathingTimer = Random.Range(minBreathingSevere, maxBreathingSevere);
                            }
                            else
                            {
                                breathingStatus = BreathingStatus.Normal;
                            }

                            return;
                        case BloodLossSeverity.Severe:
                            if (RandomBool(0.3f))
                            {
                                breathingStatus = BreathingStatus.None;
                            }
                            else if (RandomBool(0.3f))
                            {
                                breathingStatus = BreathingStatus.LungInjury;
                                breathingTimer = Random.Range(minBreathingSevere, maxBreathingSevere);
                            }
                            else
                            {
                                breathingStatus = BreathingStatus.Normal;
                            }

                            return;
                    }

                }
            }
            else
            {
                switch (bloodLossSeverity)
                {
                    case BloodLossSeverity.None:
                        breathingStatus = BreathingStatus.Normal;
                        break;
                    case BloodLossSeverity.Minimal:
                        if (bloodLossML > 3500)
                        {
                            Die();
                        }
                        else if (RandomBool(bloodLossML / 6000f))
                        {
                            LooseConciousness();
                        }
                        else
                        {
                            breathingStatus = BreathingStatus.Normal;
                        }
                        break;
                    case BloodLossSeverity.Moderate:
                        if (bloodLossML > 3500)
                        {
                            Die();
                        }
                        else if (RandomBool(bloodLossML / 6000f))
                        {
                            if (RandomBool(0.05f))
                            {
                                Die();
                            }
                            else
                            {
                                LooseConciousness();
                            }
                        }
                        else
                        {
                            breathingStatus = BreathingStatus.Normal;
                        }
                        break;
                    case BloodLossSeverity.Severe:
                        if (bloodLossML > 3500)
                        {
                            Die();
                        }
                        else if (bloodLossML > 3000)
                        {
                            if (RandomBool(0.3f))
                            {
                                Die();
                            }
                            else
                            {
                                LooseConciousness();
                            }
                        }
                        else
                        {
                            if (RandomBool(bloodLossML / 6000f))
                            {
                                if (RandomBool(0.05f))
                                {
                                    Die();
                                }
                                else
                                {
                                    LooseConciousness();
                                }
                            }
                            else
                            {
                                breathingStatus = BreathingStatus.Normal;
                            }
                        }
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
            
            
        }

        private void CalculatePulse()
        {
            
            float pulseUntilShock = Random.Range(10, 20);
            switch (bloodLossSeverity)
            {
                case BloodLossSeverity.None:
                    pulse = Random.Range(80,100);
                    return;
                case BloodLossSeverity.Minimal:
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
                case BloodLossSeverity.Moderate:
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
                case BloodLossSeverity.Severe:
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
                Die();
                return;
            }

            if (pulse == 0)
            {
                correctZone = Zone.Red;
                LooseConciousness();
                
                return;
            }
            
            
            switch (bloodLossSeverity)
            {
                case BloodLossSeverity.None:
                    correctZone = Zone.Green;
                    return;
                case BloodLossSeverity.Minimal:
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

                    correctZone = Zone.Yellow;
                    return;
                case BloodLossSeverity.Moderate:
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

                    correctZone = Zone.Yellow;
                    return;
                case BloodLossSeverity.Severe:
                    correctZone = Zone.Red;
                    return;
            }
            
            
        }

        private void Die()
        {
            pulse = 0;
            breathingStatus = BreathingStatus.None;
            correctZone = Zone.Black;
            dead = true;
            LooseConciousness();
            needTourniquet = false;
            needPharyngealTube = false;
            needPressureRelief = false;
            patient.GetBleedingSockets().RemoveBloodParticles();
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
                breathingTimer = Random.Range(minBreathingModerate, maxBreathingModerate);
                needSideLease = true;
                needOpenAirways = true;
            }
        }

        private void ZoneReasoning()
        {
            if (recievedTourniquet)
            {
                zoneReasoning.Add("Har fått en tourniquet, så pasienten har fått noe behandling.");
            }

            if (bloodLossML > 1000)
            {
                zoneReasoning.Add("Pasienten har mistet " + (bloodLossML / 1000).ToString("F1") + " liter blod");
            }
            
            zoneReasoning.Add("Pasienten har " + bloodLossSeverity.ToString() + " blødninger");
            zoneReasoning.Add("Pulsen er: " + pulse.ToString());
            zoneReasoning.Add("Puste status er: " + breathingStatus.ToString());
            if (bleedingArea == BleedingArea.Torso)
            {
                zoneReasoning.Add("Pasienten blør i magen");
            }
            else
            {
                zoneReasoning.Add("Pasienten blør ikke i magen");
            }
        }

        public List<string> GetZoneReasoning()
        {
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

        public bool Dead()
        {
            return dead;
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
                    return (int)bloodLossSeverity > 0;
                case BleedingArea.Thighs:
                    return (int)bloodLossSeverity > 0;
                case BleedingArea.Torso:
                    return (int)bloodLossSeverity > 0;
                default:
                    break;
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

        public void SetRecievedPharyngealTube(bool input)
        {
            recievedPharyngealTube = input;
        }
        
        public void SetRecievedSideLease(bool input)
        {
            recievedSideLease = input;
        }
        public void SetRecievedPressure(bool input)
        {
            recievedPressure = input;
        }
        public void SetRecievedPressureRelief(bool input)
        {
            recievedPressureRelief = input;
        }

        public void OpenedAirways()
        {
            if (breathingStatus == BreathingStatus.ClosedAirway)
            {
                breathingStatus = BreathingStatus.Normal;
                recievedOpenAirways = true;
            }
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
