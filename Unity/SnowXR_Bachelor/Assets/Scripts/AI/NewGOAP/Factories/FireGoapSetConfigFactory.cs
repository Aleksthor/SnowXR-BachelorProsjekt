using AI.NewGOAP.Classes;
using AI.NewGOAP.CustomITargets;
using CrashKonijn.Goap.Behaviours;
using CrashKonijn.Goap.Classes.Builders;
using CrashKonijn.Goap.Configs.Interfaces;
using CrashKonijn.Goap.Resolver;
using Descriptor.UnitType;
using SnowXR.Target;

namespace SnowXR.Factories
{
    public class FireGoapSetConfigFactory : GoapSetFactoryBase
    {
        public override IGoapSetConfig Create()
        {
            var builder = new GoapSetBuilder(UnitType.FireWorker.ToString());
            
            // Goals
            builder.AddWanderGoal();
            builder.AddWalkToGoal();
            builder.AddGoal<FastRealeaseGoal>()
                .AddCondition<PatientTargetCondition<StuckInCar>>(Comparison.SmallerThanOrEqual, 0);
            
            
            // Actions
            builder.AddWanderAction();
            builder.AddWalkToAction();

            builder.AddAction<FastReleaseAction>()
                .AddEffect<PatientTargetCondition<StuckInCar>>(false)
                .AddCondition<PatientTargetCondition<StuckInCar>>(Comparison.GreaterThanOrEqual, 1)
                .SetTarget<VirtualTransformKeyTarget>()
                .SetInRange(GoapUtility.k_rangeMedium)
                .SetBaseCost(1);
            
            
            // Target Sensors
            builder.AddWanderTargetSensor();
            builder.AddWalkToTargetSensor();
            

            builder.AddTargetSensor<FastReleaseTargetSensor>()
                .SetTarget<VirtualTransformKeyTarget>();
            
            // World Sensors
            builder.AddWalkToWorldSensor();

            builder.AddWorldSensor<PatientTargetHasComplexWorldState<StuckInCar>>()
                .SetKey<PatientTargetCondition<StuckInCar>>();
            

            return builder.Build();
        }
    }
}