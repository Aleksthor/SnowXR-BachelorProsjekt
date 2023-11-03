using System;
using AI.NewGOAP.Classes;
using CrashKonijn.Goap.Behaviours;
using CrashKonijn.Goap.Classes.Builders;
using CrashKonijn.Goap.Configs.Interfaces;
using CrashKonijn.Goap.Resolver;
using Descriptor.UnitType;
using SnowXR.Target;

namespace SnowXR.Factories
{
    public class StretcherGoapSetFactory : GoapSetFactoryBase
    {
        public override IGoapSetConfig Create()
        {
            var builder = new GoapSetBuilder(UnitType.Stretcher.ToString());

            // Goals
            builder.AddWalkToGoal();
            builder.AddGoal<DeliverPatientToAmbulanceGoal>()
                .AddCondition<PatientTargetCondition<InAmbulance>>(Comparison.GreaterThanOrEqual, 1);
            
            
            // Actions
            builder.AddWalkToAction()
                .AddCondition<WorkerNumber>(Comparison.GreaterThanOrEqual, 2);

            builder.AddAction<LoadPatientToAmbulance>()
                .SetTarget<AmbulanceTarget>()
                .AddEffect<PatientTargetCondition<InAmbulance>>(true)
                .AddCondition<PatientTargetCondition<OnStretcher>>(Comparison.GreaterThanOrEqual, 1)
                .AddCondition<WorkerNumber>(Comparison.GreaterThanOrEqual, 2)
                .SetBaseCost(1)
                .SetInRange(GoapUtility.k_rangeMedium);
            
            
            // Target Sensors
            builder.AddWalkToTargetSensor();

            builder.AddTargetSensor<AmbulanceTargetSensor>()
                .SetTarget<AmbulanceTarget>();
            
            // World Sensors
            builder.AddWalkToWorldSensor();

            builder.AddWorldSensor<WorkerKeeperHasNumberOfWorkers>()
                .SetKey<WorkerNumber>();

            builder.AddWorldSensor<PatientTargetHasComplexWorldState<OnStretcher>>()
                .SetKey<PatientTargetCondition<OnStretcher>>();

            builder.AddWorldSensor<PatientTargetHasComplexWorldState<InAmbulance>>()
                .SetKey<PatientTargetCondition<InAmbulance>>();
            

            return builder.Build();
        }
    }
}