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

        int severity = 0;

        private void Awake()
        {
            InitInjuries();
        }
        void InitInjuries()
        {
            InitBleeding();
            severity = 0;
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
            headBleeding = (PBleedingStatus)Evaluate(random, 90, 99);
            random = Random.Range(0, 101);
            neckBleeding = (PBleedingStatus)Evaluate(random, 80, 95);
            random = Random.Range(0, 101);
            rightArmBleeding = (PBleedingStatus)Evaluate(random, 80, 95);
            random = Random.Range(0, 101);
            leftArmBleeding = (PBleedingStatus)Evaluate(random, 80, 95);
            random = Random.Range(0, 101);
            torsoBleeding = (PBleedingStatus)Evaluate(random, 75, 85);
            random = Random.Range(0, 101);
            rightThighBleeding = (PBleedingStatus)Evaluate(random, 80, 95);
            random = Random.Range(0, 101);
            leftThighBleeding = (PBleedingStatus)Evaluate(random, 80, 95);
            random = Random.Range(0, 101);
            rightLegBleeding = (PBleedingStatus)Evaluate(random, 90, 99);
            random = Random.Range(0, 101);
            leftLegBleeding = (PBleedingStatus)Evaluate(random, 90, 99);
        }
        int InitBreathing()
        {
            int severity = 0;
            switch (headBleeding)
            {
                case PBleedingStatus.Major:
                    severity += 10;
                    break;
                case PBleedingStatus.Moderate:
                    severity += 3;
                    break;
            }
            switch (neckBleeding)
            {
                case PBleedingStatus.Major:
                    severity += 20;
                    break;
                case PBleedingStatus.Moderate:
                    severity += 10;
                    break;
            }
            switch (rightArmBleeding)
            {
                case PBleedingStatus.Major:
                    severity += 3;
                    break;
                case PBleedingStatus.Moderate:
                    severity += 1;
                    break;
            }
            switch (leftArmBleeding)
            {
                case PBleedingStatus.Major:
                    severity += 3;
                    break;
                case PBleedingStatus.Moderate:
                    severity += 1;
                    break;
            }
            switch (torsoBleeding)
            {
                case PBleedingStatus.Major:
                    severity += 30;
                    break;
                case PBleedingStatus.Moderate:
                    severity += 15;
                    break;
            }
            switch (rightThighBleeding)
            {
                case PBleedingStatus.Major:
                    severity += 15;
                    break;
                case PBleedingStatus.Moderate:
                    severity += 10;
                    break;
            }
            switch (leftThighBleeding)
            {
                case PBleedingStatus.Major:
                    severity += 15;
                    break;
                case PBleedingStatus.Moderate:
                    severity += 10;
                    break;
            }
            switch (rightLegBleeding)
            {
                case PBleedingStatus.Major:
                    severity += 3;
                    break;
                case PBleedingStatus.Moderate:
                    severity += 1;
                    break;
            }
            switch (leftLegBleeding)
            {
                case PBleedingStatus.Major:
                    severity += 3;
                    break;
                case PBleedingStatus.Moderate:
                    severity += 1;
                    break;
            }


            switch (severity)
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
            switch (headBleeding)
            {
                case PBleedingStatus.Major:
                    severity += 10;
                    break;
                case PBleedingStatus.Moderate:
                    severity += 3;
                    break;
            }
            switch (neckBleeding)
            {
                case PBleedingStatus.Major:
                    severity += 20;
                    break;
                case PBleedingStatus.Moderate:
                    severity += 10;
                    break;
            }
            switch (rightArmBleeding)
            {
                case PBleedingStatus.Major:
                    severity += 3;
                    break;
                case PBleedingStatus.Moderate:
                    severity += 1;
                    break;
            }
            switch (leftArmBleeding)
            {
                case PBleedingStatus.Major:
                    severity += 3;
                    break;
                case PBleedingStatus.Moderate:
                    severity += 1;
                    break;
            }
            switch (torsoBleeding)
            {
                case PBleedingStatus.Major:
                    severity += 30;
                    break;
                case PBleedingStatus.Moderate:
                    severity += 15;
                    break;
            }
            switch (rightThighBleeding)
            {
                case PBleedingStatus.Major:
                    severity += 15;
                    break;
                case PBleedingStatus.Moderate:
                    severity += 10;
                    break;
            }
            switch (leftThighBleeding)
            {
                case PBleedingStatus.Major:
                    severity += 15;
                    break;
                case PBleedingStatus.Moderate:
                    severity += 10;
                    break;
            }
            switch (rightLegBleeding)
            {
                case PBleedingStatus.Major:
                    severity += 3;
                    break;
                case PBleedingStatus.Moderate:
                    severity += 1;
                    break;
            }
            switch (leftLegBleeding)
            {
                case PBleedingStatus.Major:
                    severity += 3;
                    break;
                case PBleedingStatus.Moderate:
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


        public bool CanWalk()
        {
            if (correctZone == PZones.Black || correctZone == PZones.Red)
            {
                return false;
            }
            if ((int)leftThighBleeding > 0 || (int)rightThighBleeding > 0)
            {
                return false;
            }
            if ((int)leftLegBleeding > 0 || (int)rightLegBleeding > 0)
            {
                return false;
            }
            if ((int)breathingStatus > 0)
            {
                return false;
            }


            return true;
        }


        public int Severity()
        {
            return severity;
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
        None,
        Moderate,
        Major
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