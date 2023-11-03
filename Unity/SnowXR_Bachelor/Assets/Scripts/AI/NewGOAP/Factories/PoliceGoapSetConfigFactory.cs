using CrashKonijn.Goap.Behaviours;
using CrashKonijn.Goap.Classes.Builders;
using CrashKonijn.Goap.Configs.Interfaces;
using CrashKonijn.Goap.Resolver;
using Descriptor.UnitType;

namespace SnowXR.Factories
{
    public class PoliceGoapSetConfigFactory : GoapSetFactoryBase
    {
        public override IGoapSetConfig Create()
        {
            var builder = new GoapSetBuilder(UnitType.PoliceWorker.ToString());
            
            // Goals
            builder.AddWanderGoal();
            builder.AddWalkToGoal();
            
            
            // Actions
            builder.AddWanderAction();
            builder.AddWalkToAction();
            
            // Target Sensors
            builder.AddWanderTargetSensor();
            builder.AddWalkToTargetSensor();
            
            // World Sensors
            builder.AddWalkToWorldSensor();
            return builder.Build();
        }
    }
}