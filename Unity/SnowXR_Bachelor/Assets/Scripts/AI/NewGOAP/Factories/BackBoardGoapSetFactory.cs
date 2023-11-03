using AI.NewGOAP.Classes;
using CrashKonijn.Goap.Behaviours;
using CrashKonijn.Goap.Classes.Builders;
using CrashKonijn.Goap.Configs.Interfaces;
using CrashKonijn.Goap.Resolver;
using Descriptor.UnitType;
using SnowXR.Target;
using SnowXR.WordState;


namespace SnowXR.Factories
{
    public class BackBoardGoapSetFactory : GoapSetFactoryBase
    {
        public override IGoapSetConfig Create()
        {
            var builder = new GoapSetBuilder(UnitType.Backboard.ToString());
            
            // Goals
            builder.AddWalkToGoal();

            builder.AddGoal<LoadPatientToStretcherGoal>()
                .AddCondition<PatientTargetCondition<OnStretcher>>(Comparison.GreaterThanOrEqual, 1);

            // Actions
            builder.AddWalkToAction()
                .AddCondition<WorkerNumber>(Comparison.GreaterThanOrEqual, 3);
            
            builder.AddAction<LoadPatientToBackBoardAction>()
                .SetTarget<PatientTarget>()
                .AddCondition<WorkerNumber>(Comparison.GreaterThanOrEqual, 3)
                .AddEffect<PatientTargetCondition<OnBackBoard>>(true)
                .SetBaseCost(1)
                .SetInRange(3.3f);

            builder.AddAction<LoadPatientToStretcher>()
                .SetTarget<StretcherTarget>()
                .AddCondition<PatientTargetCondition<OnBackBoard>>(Comparison.GreaterThanOrEqual, 1)
                .AddCondition<WorkerNumber>(Comparison.SmallerThanOrEqual, 3)
                .AddEffect<PatientTargetCondition<OnStretcher>>(true)
                .SetBaseCost(1)
                .SetInRange(3f);
            
            // gather workers
            // Load Patient
            // unload to ambulance
            
            // Target Sensors
            builder.AddWalkToTargetSensor();

            builder.AddTargetSensor<PatientTargetSensor>()
                .SetTarget<PatientTarget>();

            builder.AddTargetSensor<FindClosestTargetSensor<StretcherWorkerBrain>>()
                .SetTarget<StretcherTarget>();
            
            // World Sensors
            builder.AddWalkToWorldSensor();
            
            builder.AddWorldSensor<WorkerKeeperHasNumberOfWorkers>()
                .SetKey<WorkerNumber>();

            builder.AddWorldSensor<PatientTargetHasComplexWorldState<OnBackBoard>>()
                .SetKey<PatientTargetCondition<OnBackBoard>>();

            builder.AddWorldSensor<PatientTargetHasComplexWorldState<OnStretcher>>()
                .SetKey<PatientTargetCondition<OnStretcher>>();
                // .SetKey<PatientOnBackBoard>()
            
            return builder.Build();
        }
    }
}