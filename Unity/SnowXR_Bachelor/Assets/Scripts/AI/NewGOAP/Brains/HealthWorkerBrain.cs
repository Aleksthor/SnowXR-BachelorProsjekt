using System;
using System.Collections.Generic;
using CrashKonijn.Goap.Behaviours;
using CrashKonijn.Goap.Classes;
using CrashKonijn.Goap.Configs.Interfaces;
using KBCore.Refs;
using UnityEngine;
using UnityEngine.Serialization;

namespace SnowXR
{
    [RequireComponent(typeof(TargetBehaviour))]
    public class HealthWorkerBrain : WorkerBrain
    {
        [SerializeField, Self()] private TargetBehaviour targetBehaviour;
        public TargetBehaviour TargetBehaviour => targetBehaviour;
        private void Awake()
        {
            Agent.Events.OnGoalCompleted += goal =>
            {
                // Debug.Log("Goal Completed!");
                Agent.SetGoal(null, true);
            };
            
            Agent.Events.OnActionStart += action =>
            {
                // Debug.Log("Action Started!");
            };
            
            Agent.Events.OnNoActionFound += (a) =>
            {
                // Debug.Log("No Action Found!");
            };
        }

        [ContextMenu("Investigate")]
        void Invest()
        {
            
             Agent.SetGoal<InvestigateGoal>(false);
        }

        public void Investigate(PatientWorkerBrain patientWorkerBrain)
        {
            SetPatientTarget(patientWorkerBrain);
            Agent.SetGoal<InvestigateGoal>(false);
        }

        public void SetPatientTarget(PatientWorkerBrain brain)
        {
            GetComponent<TargetBehaviour>().patient = brain;
        }
        

        [ContextMenu("Wander")]
        void Wander()
        {
            
             Agent.SetGoal<WanderGoal>(false);
        }
        [ContextMenu("WalkTo")]
        void WalkTo()
        {
             Agent.SetGoal<WanderGoal>(false);
        }

#if UNITY_EDITOR
        private void OnValidate()
        {
            this.ValidateRefs();
        }
#endif
    }
}