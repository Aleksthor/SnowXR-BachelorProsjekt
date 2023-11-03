using CrashKonijn.Goap.Behaviours;
using CrashKonijn.Goap.Classes.Builders;
using CrashKonijn.Goap.Configs.Interfaces;
using CrashKonijn.Goap.Resolver;
using Descriptor.UnitType;
using SnowXR.AI;

namespace SnowXR.Factories
{
    public class PatientGoapSetConfigFactory : GoapSetFactoryBase
    {
        public override IGoapSetConfig Create()
        {
            var builder = new GoapSetBuilder(UnitType.CivilWorker.ToString());

            // Goals
            builder.AddWanderGoal();
            builder.AddWalkToGoal();
            
            // Actions
            builder.AddWanderAction()
                .AddCondition<IsProne>(Comparison.SmallerThan, 1);
            builder.AddWalkToAction();
                // .AddCondition<IsProne>(Comparison.SmallerThan, 1);
            
            // Target Sensors
            builder.AddWanderTargetSensor();
            builder.AddWalkToTargetSensor();
            
            // World Sensors
            builder.AddWalkToWorldSensor();
            builder.AddWorldSensor<HasComplexWorldState<IsProne>>()
                .SetKey<IsProne>();
            
            return builder.Build();
        }
    }
}