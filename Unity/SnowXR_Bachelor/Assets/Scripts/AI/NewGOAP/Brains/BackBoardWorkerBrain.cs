using System;
using System.Collections.Generic;
using System.Linq;
using AI.NewGOAP;
using CrashKonijn.Goap.Enums;
using KBCore.Refs;
using Snow.Utility;
using UnityEngine;
using UnityEngine.Serialization;

namespace SnowXR
{
    [RequireComponent(typeof(TargetBehaviour), typeof(VirtualTransforms))]
    public class BackBoardWorkerBrain : WorkerBrain
    {
        [field: SerializeField, Self()] public TargetBehaviour TargetBehaviour { get; private set; }
        [SerializeField, Self()] public VirtualTransforms virtualTransforms;
        
        [SerializeField, Self()] public WorkerKeeper workerKeeper;
        // [SerializeField] private List<Transform> workerPositions = new();
    
        



        

        [ContextMenu("Set Goal Test")]
        private void SetGoal()
        {
            
            Agent.SetGoal<DeliverPatientToAmbulanceGoal>(true);
        }


#if UNITY_EDITOR
        private void OnValidate()
        {
            this.ValidateRefs();
        }
#endif
    }
}