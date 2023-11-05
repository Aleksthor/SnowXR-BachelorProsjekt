using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace BA.Prototype
{
    public class PInjuredPerson : MonoBehaviour
    {
        [Header("Breath Status")]
        [SerializeField] public PBreathingStatus breathingStatus;
        [Header("Pulse Status")]
        [SerializeField] public PPulseStatus pulseStatus;
        [Header("Bleeding Status")]
        [SerializeField] public PBleedingStatus headBleeding;
        [SerializeField] public PBleedingStatus neckBleeding;
        [SerializeField] public PBleedingStatus rightArmBleeding;
        [SerializeField] public PBleedingStatus leftArmBleeding;
        [SerializeField] public PBleedingStatus torsoBleeding;
        [SerializeField] public PBleedingStatus rightThighBleeding;
        [SerializeField] public PBleedingStatus leftThighBleeding;
        [SerializeField] public PBleedingStatus rightLegBleeding;
        [SerializeField] public PBleedingStatus leftLegBleeding;

        [Header("Correct Zone")]
        [SerializeField] PZones correctZone;

        private void Awake()
        {
            InitInjuries();
        }
        void InitInjuries()
        {
            InitBleeding();
            int severity = 0;
            severity += InitBreathing();
            severity += InitPulse();

            if (breathingStatus == PBreathingStatus.None)
            {
                correctZone = PZones.Black;
                return;
            }
            if (pulseStatus == PPulseStatus.None)
            {
                correctZone = PZones.Red;
                return;
            }

            switch(severity)
            {
                case int r when (r < 30):
                    correctZone = PZones.Green;
                    break;
                case int r when (r >= 30) && (r < 50):
                    correctZone = PZones.Yellow;
                    break;
                case int r when (r >= 50):
                    correctZone = PZones.Red;
                    break;
            }
        }
        #region Initilize Functions
        void InitBleeding()
        {
            // Setup Injuries
            int random = Random.Range(0, 101);
            headBleeding = (PBleedingStatus)Evaluate(random, 25, 50);
            random = Random.Range(0, 101);
            neckBleeding = (PBleedingStatus)Evaluate(random, 25, 50);
            random = Random.Range(0, 101);
            rightArmBleeding = (PBleedingStatus)Evaluate(random, 25, 50);
            random = Random.Range(0, 101);
            leftArmBleeding = (PBleedingStatus)Evaluate(random, 25, 50);
            random = Random.Range(0, 101);
            torsoBleeding = (PBleedingStatus)Evaluate(random, 25, 50);
            random = Random.Range(0, 101);
            rightThighBleeding = (PBleedingStatus)Evaluate(random, 25, 50);
            random = Random.Range(0, 101);
            leftThighBleeding = (PBleedingStatus)Evaluate(random, 25, 50);
            random = Random.Range(0, 101);
            rightLegBleeding = (PBleedingStatus)Evaluate(random, 25, 50);
            random = Random.Range(0, 101);
            leftLegBleeding = (PBleedingStatus)Evaluate(random, 25, 50);
        }
        int InitBreathing()
        {
            int severity = 0;
            switch((int)headBleeding)
            {
                case 0:
                    severity += 10;
                    break;
                case 1:
                    severity += 3;
                    break;
            }
            switch ((int)neckBleeding)
            {
                case 0:
                    severity += 20;
                    break;
                case 1:
                    severity += 10;
                    break;
            }
            switch ((int)rightArmBleeding)
            {
                case 0:
                    severity += 3;
                    break;
                case 1:
                    severity += 1;
                    break;
            }
            switch ((int)leftArmBleeding)
            {
                case 0:
                    severity += 3;
                    break;
                case 1:
                    severity += 1;
                    break;
            }
            switch ((int)torsoBleeding)
            {
                case 0:
                    severity += 30;
                    break;
                case 1:
                    severity += 15;
                    break;
            }
            switch ((int)rightThighBleeding)
            {
                case 0:
                    severity += 15;
                    break;
                case 1:
                    severity += 10;
                    break;
            }
            switch ((int)leftThighBleeding)
            {
                case 0:
                    severity += 15;
                    break;
                case 1:
                    severity += 10;
                    break;
            }
            switch ((int)rightLegBleeding)
            {
                case 0:
                    severity += 3;
                    break;
                case 1:
                    severity += 1;
                    break;
            }
            switch ((int)leftLegBleeding)
            {
                case 0:
                    severity += 3;
                    break;
                case 1:
                    severity += 1;
                    break;
            }


            switch(severity)
            {
                case int r when (r < 25):
                    breathingStatus = PBreathingStatus.Normal;
                    break;
                case int r when (r >= 25) && (r < 55):
                    breathingStatus = PBreathingStatus.UnNormal;
                    break;
                default:
                    breathingStatus = PBreathingStatus.None;
                    break;
            }

            return severity;
        }
        int InitPulse()
        {
            int severity = 0;
            switch ((int)headBleeding)
            {
                case 0:
                    severity += 10;
                    break;
                case 1:
                    severity += 3;
                    break;
            }
            switch ((int)neckBleeding)
            {
                case 0:
                    severity += 20;
                    break;
                case 1:
                    severity += 10;
                    break;
            }
            switch ((int)rightArmBleeding)
            {
                case 0:
                    severity += 3;
                    break;
                case 1:
                    severity += 1;
                    break;
            }
            switch ((int)leftArmBleeding)
            {
                case 0:
                    severity += 3;
                    break;
                case 1:
                    severity += 1;
                    break;
            }
            switch ((int)torsoBleeding)
            {
                case 0:
                    severity += 30;
                    break;
                case 1:
                    severity += 15;
                    break;
            }
            switch ((int)rightThighBleeding)
            {
                case 0:
                    severity += 15;
                    break;
                case 1:
                    severity += 10;
                    break;
            }
            switch ((int)leftThighBleeding)
            {
                case 0:
                    severity += 15;
                    break;
                case 1:
                    severity += 10;
                    break;
            }
            switch ((int)rightLegBleeding)
            {
                case 0:
                    severity += 3;
                    break;
                case 1:
                    severity += 1;
                    break;
            }
            switch ((int)leftLegBleeding)
            {
                case 0:
                    severity += 3;
                    break;
                case 1:
                    severity += 1;
                    break;
            }


            switch (severity)
            {
                case int r when (r < 15):
                    pulseStatus = PPulseStatus.Normal;
                    break;
                case int r when (r >= 15) && (r < 30):
                    pulseStatus = PPulseStatus.Low;
                    break;
                default:
                    pulseStatus = PPulseStatus.None;
                    break;
            }
            return severity;
        }
        
        int Evaluate(int number, int range1, int range2)
        {
            switch (number)
            {
                case int r when (r < range1):
                    return 0;
                case int r when (r >= range1) && (r < range2):
                    return 1;
                default:
                    return 2;
            }
        }
        #endregion


        public PZones GetCorrectZone()
        {
            return correctZone;
        }
    }

    [System.Serializable]
    public enum PBreathingStatus
    {
        Normal,
        UnNormal,
        None
    }
    [System.Serializable]
    public enum PBleedingStatus
    {
        Major,
        Moderate,
        None
    }
    [System.Serializable]
    public enum PPulseStatus
    {
        Normal,
        Low,
        None
    }

    [System.Serializable]
    public enum PZones
    {
        Green,
        Yellow,
        Red, 
        Black
    }
}
