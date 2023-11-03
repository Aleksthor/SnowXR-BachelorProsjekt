using AI.NewGOAP.ActionInterfaces;
using CrashKonijn.Goap.Behaviours;
using CrashKonijn.Goap.Classes;
using CrashKonijn.Goap.Enums;
using CrashKonijn.Goap.Interfaces;
using SnowXR.Data;
using UnityEngine.AddressableAssets;

namespace SnowXR {
    public class PlaceBackBoardAction : ActionBase<PlaceBackBoardAction.Data>, IActionPlaysAnimation {
        public class Data : IActionTimerData {
            public ITarget Target { get; set; }
            public float timer { get; set; }
        }

        public override void Created() {
            
        }

        private HealthWorkerBrain _healthWorkerBrain;
        private bool bEnter = false;
        
        public override void Start(IMonoAgent agent, Data data) {
            _healthWorkerBrain = agent.GetComponent<HealthWorkerBrain>();
            bEnter = true;
            data.timer = 2f;
        }

        public override ActionRunState Perform(IMonoAgent agent, Data data, ActionContext context) {
            data.timer -= context.DeltaTime;
            if (bEnter) {
                bEnter = false;
            }

            // Update 
            
            if (data.timer <= 0f) {
                var backBoard = Addressables.InstantiateAsync("Workers/BackBoardWorker").WaitForCompletion();
                
                // Set transforms
                backBoard.transform.position = agent.transform.position + agent.transform.forward * 1.5f;
                backBoard.transform.rotation = agent.transform.rotation;
                
                // Save backboard to healthWorker brain
                _healthWorkerBrain.TargetBehaviour.backBoard = backBoard.GetComponent<BackBoardWorkerBrain>();
                
                return ActionRunState.Stop;
            }

            return ActionRunState.Continue;
        }

        public override void End(IMonoAgent agent, Data data) {
        }

        public string AnimationClipName => "Fumble";
    }
}