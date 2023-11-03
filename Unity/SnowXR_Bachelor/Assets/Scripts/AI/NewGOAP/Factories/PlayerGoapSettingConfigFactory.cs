using AI.NewGOAP.Classes;
using CrashKonijn.Goap.Behaviours;
using CrashKonijn.Goap.Classes.Builders;
using CrashKonijn.Goap.Configs.Interfaces;
using CrashKonijn.Goap.Resolver;
using Descriptor.UnitType;

namespace SnowXR.Factories
{
    public class PlayerGoapSettingConfigFactory : GoapSetFactoryBase
    {
        public override IGoapSetConfig Create()
        {
            var builder = new GoapSetBuilder(UnitType.Player.ToString());
            
            // Goals
            builder.AddGoal<HoldOpenAirWaysGoal>()
                .AddCondition<HasClosedAirways>(Comparison.GreaterThanOrEqual, 1);
            
            builder.AddGoal<GiveOxygenGoal>()
                .AddCondition<HasOxygenApperatus>(Comparison.GreaterThanOrEqual, 1);
            
            builder.AddGoal<ApplyNeckBraceGoal>()
                .AddCondition<HasNeckBrace>(Comparison.GreaterThanOrEqual, 1);
            
            // Actions
            builder.AddAction<HoldOpenAirwaysAction>()
                .SetTarget<PatientTarget>()
                .AddEffect<HasClosedAirways>(true)
                // .AddCondition<CanBeInvestigated>(Comparison.GreaterThanOrEqual, 1)
                .SetBaseCost(1)
                .SetInRange(1000f);

            builder.AddAction<GiveOxygenAction>()
                .SetTarget<PatientTarget>()
                .AddEffect<HasOxygenApperatus>(true)
                // .AddCondition<CanBeInvestigated>(Comparison.GreaterThanOrEqual, 1)
                .SetBaseCost(1)
                .SetInRange(1000f);

            builder.AddAction<ApplyNeckBraceAction>()
                .SetTarget<PatientTarget>()
                .AddEffect<HasNeckBrace>(true)
                // .AddCondition<CanBeInvestigated>(Comparison.GreaterThanOrEqual, 1)
                .SetBaseCost(1)
                .SetInRange(1000f);
            
            // Target Sensors
            builder.AddTargetSensor<PatientTargetSensor>()
                .SetTarget<PatientTarget>();
        
            // World Sensors
            builder.AddWorldSensor<CanInsestigateSensor>()
                .SetKey<CanBeInvestigated>();

            builder.AddWorldSensor<PatientTargetHasComplexWorldState<HasOxygenApperatus>>()
                .SetKey<HasOxygenApperatus>();

            builder.AddWorldSensor<PatientTargetHasComplexWorldState<HasNeckBrace>>()
                .SetKey<HasNeckBrace>();

            return builder.Build();
        }
    }
}