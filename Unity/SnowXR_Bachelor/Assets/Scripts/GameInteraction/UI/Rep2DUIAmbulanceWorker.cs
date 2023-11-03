using System.Security.Cryptography;
using Descriptor.UnitType;
using HalfLifeUI;
using Snow.Utility.ExtensionMethods;
using SnowXR;
using SnowXR.Goals;
using SnowXR.Represent2D;
using UnityEngine;
using UnityEngine.AI;

namespace GameInteraction.UI {
    public class Rep2DUIAmbulanceWorker : Rep2DUIWorkerBase {
        protected override void SetupUI(SubWindowManager manager) {
            base.SetupUI(manager);
            SetupBasicWorkerUI(manager);
            
            
            manager.StartSubWindow.SetTitle("Ambulance Worker");
            
            // Adding buttons
            AddOnNext2DRepClickButton(manager, "Patient to Stretcher", OnCivilianWorker_ToStretcher, UnitType.CivilWorker.ToString());
            AddOnNextClickButton(manager, "Place Stretcher", OnClick_PlaceStretcher);
        }

        private bool OnClick_PlaceStretcher(Vector3 arg) {
            // Get Component (s)
            var healthWorkerBrain = GetComponent<HealthWorkerBrain>();
            
            // Set Goal
            Stop(healthWorkerBrain.Agent);
            healthWorkerBrain.Agent.SetGoal<PlaceStretcherGoal>(true);

            // Save clicked position in moveToPosition in health worker. Will be used by StretcherWorker.
            healthWorkerBrain.moveToPostion = healthWorkerBrain.moveToPostion = NavMeshExtensionMethods.SamplePosition(arg);
            return true;
        }

        private bool OnCivilianWorker_ToStretcher(Represent2D rep2D) {
            // Need to have a close by stretcher
            var healthWorkerBrain = GetComponent<HealthWorkerBrain>();
            Stop(healthWorkerBrain.Agent);
            healthWorkerBrain.Agent.SetGoal<LoadPatientToStretcherGoal>(true);
            
            return true;
        }
    }

}