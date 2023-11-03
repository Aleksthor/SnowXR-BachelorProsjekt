using System.Collections.Generic;
using Descriptor;
using Descriptor.UnitType;
using Snow.Utility;
using UnityEngine;

namespace SnowXR
{
    public class TargetBehaviour : MonoBehaviour {
        
        private Dictionary<System.Type, Transform> targets;
        
        public PatientWorkerBrain patient;
        public BackBoardWorkerBrain backBoard;
        public StretcherWorkerBrain strecher;
        public VirtualTransforms vts;
        public Transform ambulance;
        public int vtsIndex;

        public void SetPatient(PatientWorkerBrain brain)
        {
            patient = brain;
        }
        
        
        
        
    }
}