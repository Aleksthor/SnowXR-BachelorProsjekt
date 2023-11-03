using AI.NewGOAP;
using AI.NewGOAP.ActionInterfaces;
using AI.NewGOAP.CustomITargets;
using CrashKonijn.Goap.Behaviours;
using CrashKonijn.Goap.Classes;
using CrashKonijn.Goap.Enums;
using CrashKonijn.Goap.Interfaces;
using SnowXR.Data;
using SnowXR.Goals;

namespace SnowXR {
    public class ExtractStretcherFromAmbulanceAction : ActionBase<ExtractStretcherFromAmbulanceAction.Data>, IActionPlaysAnimation {
        public class Data : IActionTimerData {
            public ITarget Target { get; set; }
            public float timer { get; set; }
        }
        
        public override void Created() {
            
        }

        private AmbulanceTransformTarget _ambulanceTransformTarget;
        private VehicleDoorSystem _vehicleDoorSystem;
        private HealthWorkerBrain _healthWorkerBrain;
        private bool bOnInRange = false;
        public override void Start(IMonoAgent agent, Data data) {
            data.timer = 4f;
            bOnInRange = true;
            
            // Get References
            _ambulanceTransformTarget = data.Target as AmbulanceTransformTarget;
            _vehicleDoorSystem = _ambulanceTransformTarget.Transform.GetComponent<VehicleDoorSystem>();
            _healthWorkerBrain = agent.GetComponent<HealthWorkerBrain>();
        }

        // todo, very prototype code, needs to be refined and made null safe with warnings
        public override ActionRunState Perform(IMonoAgent agent, Data data, ActionContext context) {
            data.timer -= context.DeltaTime;
            if (bOnInRange) {
                bOnInRange = false;
                _vehicleDoorSystem.OpenSpecificDoor(4, 5);
            }
            
            // AmbulanceTransformTarget ambulanceTransformTarget = data.Target as AmbulanceTransformTarget;
            // VehicleDoorSystem doorSystem = ambulanceTransformTarget.Transform.GetComponent<VehicleDoorSystem>();
            // HealthWorkerBrain healthWorkerBrain = agent.GetComponent<HealthWorkerBrain>();
            
            if (data.timer <= 0f) {
                // Set target
                StretcherJointMover stretcherJointMover = _vehicleDoorSystem.GetComponentInChildren<StretcherJointMover>();
                _healthWorkerBrain.TargetBehaviour.strecher = stretcherJointMover.SpawnStretcherAgent().GetComponent<StretcherWorkerBrain>();
                
                
                _vehicleDoorSystem.CloseSpecificDoor(4,5);


                StretcherWorkerBrain stretcherBrain = _healthWorkerBrain.TargetBehaviour.strecher;
                stretcherBrain.NavMeshAgent.Warp(_ambulanceTransformTarget.BackTarget.position);

                WorkerKeeper stretcherWorkerKeeper = stretcherBrain.GetComponent<WorkerKeeper>();
                stretcherWorkerKeeper.workerBrains.Add(_healthWorkerBrain);
                stretcherWorkerKeeper.GatherValidWorkers();
                stretcherWorkerKeeper.SetWorkerGoalHandleStretcher(stretcherBrain);
                stretcherBrain.Sensee(4f);
                
                // Make sure to release when we reach our target
                stretcherBrain.Agent.Events.OnGoalCompleted += OnreacedDeliverGoal;
                
                // Set goal to follow båre
                _healthWorkerBrain.Stop();
                _healthWorkerBrain.Agent.SetGoal<HandleStretcherGoal>(true);
                
                
                stretcherBrain.MoveTo(_healthWorkerBrain.moveToPostion);
                return ActionRunState.Stop;
            }
            return ActionRunState.Continue;
        }

        // TODO very ugly, need to revise
        private void OnreacedDeliverGoal(IGoalBase goal) {
            if (goal.GetType() == typeof(WalkToGoal)) {
                _healthWorkerBrain.TargetBehaviour.strecher.GetComponent<WorkerKeeper>().ReleaseAllWorkers();
            }
            Logging.LogError(Logging.LogGroup.GENERIC, "aoimwdoaimwdoadmw");
            _healthWorkerBrain.TargetBehaviour.strecher.GetComponent<StretcherWorkerBrain>().Agent.Events
                .OnGoalCompleted -= OnreacedDeliverGoal;
        }

        private void EventsOnOnGoalCompleted(IGoalBase goal) {
            
        }

        public override void End(IMonoAgent agent, Data data) {
        }

        public string AnimationClipName => "Fumble";
    }
}