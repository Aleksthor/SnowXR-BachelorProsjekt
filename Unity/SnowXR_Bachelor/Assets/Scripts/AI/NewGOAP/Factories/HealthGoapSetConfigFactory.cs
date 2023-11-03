using AI.NewGOAP.Classes;
using CrashKonijn.Goap.Behaviours;
using CrashKonijn.Goap.Classes.Builders;
using CrashKonijn.Goap.Configs.Interfaces;
using CrashKonijn.Goap.Resolver;
using Descriptor.UnitType;
using SnowXR;
using SnowXR.Goals;
using SnowXR.Target;
using SnowXR.WordState;
using SnowXR.WorldKeys;
using UnityEngine;

public class HealthGoapSetConfigFactory : GoapSetFactoryBase
{
    public override IGoapSetConfig Create()
    {
        var builder = new GoapSetBuilder(UnitType.AmbulanceWorker.ToString());
        
        HandlePlaceStretcherLoop(builder);
        HandlePatientToStretcherLoop(builder);
        
        // Goals
        builder.AddWanderGoal();
        builder.AddWalkToGoal();

        builder.AddGoal<InvestigateGoal>()
            .AddCondition<HasInvestigatedPatient>(Comparison.GreaterThanOrEqual, 1);

        builder.AddGoal<HoldOpenAirWaysGoal>()
            .AddCondition<HasClosedAirways>(Comparison.GreaterThanOrEqual, 1);

        // builder.AddGoal<GiveOxygenGoal>()
            // .AddCondition<HasOxygenApperatus>(Comparison.GreaterThanOrEqual, 1);

        // builder.AddGoal<ApplyNeckBraceGoal>()
            // .AddCondition<HasNeckBrace>(Comparison.GreaterThanOrEqual, 1);
        
        builder.AddGoal<HandleBackBoardGoal>()
            .AddCondition<IsFollowingBackBoard>(Comparison.GreaterThanOrEqual, 1);
        builder.AddGoal<HandleStretcherGoal>()
            .AddCondition<IsFollowingStretcher>(Comparison.GreaterThanOrEqual, 1);

        builder.AddGoal<GiveHLRGoal>()
            .AddCondition<HasReceivedHLR>(Comparison.GreaterThanOrEqual, 1);
        
        // Actions
        builder.AddWanderAction();
        builder.AddWalkToAction();
        
        builder.AddAction<InvestigateAction>()
            .SetTarget<PatientTarget>()
            .AddEffect<HasInvestigatedPatient>(true)
            .AddCondition<CanBeInvestigated>(Comparison.GreaterThanOrEqual, 1)
            .AddCondition<PatientTargetCondition<HasClosedAirways>>(Comparison.SmallerThanOrEqual, 0)
            .SetBaseCost(1)
            .SetInRange(GoapUtility.k_rangeMedium);

        builder.AddAction<OpenDoorAction>()
            .SetTarget<DoorTarget>()
            .AddEffect<CanBeInvestigated>(true)
            .SetBaseCost(1)
            .SetInRange(GoapUtility.k_rangeMedium);

        // builder.AddAction<HoldOpenAirwaysAction>()
        //     .SetTarget<PatientTarget>()
        //     .AddEffect<HasClosedAirways>()
        //     .AddCondition<CanBeInvestigated>(Comparison.GreaterThanOrEqual, 1)
        //     .SetBaseCost(1)
        //     .SetInRange(GoapUtility.k_rangeMedium);

        builder.AddAction<GiveOxygenAction>()
            .SetTarget<PatientTarget>()
            .AddEffect<PatientTargetCondition<HasClosedAirways>>(false)
            .AddCondition<CanBeInvestigated>(Comparison.GreaterThanOrEqual, 1)
            // .AddCondition<PatientTargetCondition<>>()
            .SetBaseCost(1)
            .SetInRange(GoapUtility.k_rangeMedium);

        builder.AddAction<ApplyNeckBraceAction>()
            .SetTarget<PatientTarget>()
            .AddEffect<HasNeckBrace>(true)
            .AddCondition<CanBeInvestigated>(Comparison.GreaterThanOrEqual, 1)
            .SetBaseCost(1)
            .SetInRange(GoapUtility.k_rangeMedium);
        
        builder.AddAction<GiveHLRAction>()
            .SetTarget<PatientTarget>()
            .AddEffect<HasReceivedHLR>(true)
            .AddCondition<CanBeInvestigated>(Comparison.GreaterThanOrEqual, 1)
            .SetBaseCost(1)
            .SetInRange(GoapUtility.k_rangeMedium);

        builder.AddAction<FollowMoveableObjectAction>()
            .SetTarget<BackboardTarget>()
            .AddEffect<IsFollowingBackBoard>(true)
            .SetBaseCost(1)
            .SetInRange(GoapUtility.k_rangeLarge);
        
        builder.AddAction<FollowMoveableObjectAction>()
            .SetTarget<StretcherTarget>()
            .AddEffect<IsFollowingStretcher>(true)
            .SetBaseCost(1)
            .SetInRange(GoapUtility.k_rangeLarge);

        // Target Sensors
        builder.AddWanderTargetSensor();
        builder.AddWalkToTargetSensor();
        
        builder.AddTargetSensor<PatientTargetSensor>()
            .SetTarget<PatientTarget>();
        
        builder.AddTargetSensor<DoorTargetSensor>()
            .SetTarget<DoorTarget>();

        builder.AddTargetSensor<BackBoardTargetSensor>()
            .SetTarget<BackboardTarget>();

        builder.AddTargetSensor<StretcherTargetSensor>()
            .SetTarget<StretcherTarget>();
            
        
        
        // World sensors
        builder.AddWalkToWorldSensor();
        builder.AddWorldSensor<CanInsestigateSensor>()
            .SetKey<CanBeInvestigated>();

        builder.AddWorldSensor<PatientTargetOxygenWorldSensor>()
            .SetKey<PatientTargetCondition<HasClosedAirways>>();
        builder.AddWorldSensor<PatientTargetHasComplexWorldState<HasOxygenApperatus>>()
            .SetKey<HasOxygenApperatus>();

        builder.AddWorldSensor<PatientTargetHasComplexWorldState<HasNeckBrace>>()
            .SetKey<HasNeckBrace>();

        builder.AddWorldSensor<PatientTargetHasComplexWorldState<HasReceivedHLR>>()
            .SetKey<HasReceivedHLR>();

        builder.AddWorldSensor<HasInvestigatedPatientWorldSensor>()
            .SetKey<HasInvestigatedPatient>();

        builder.AddWorldSensor<HasBackboardWorldSensor>()
            .SetKey<PlacedBackBoard>();

        return builder.Build();
    }

    private void HandlePatientToStretcherLoop(GoapSetBuilder builder) {
        builder.AddGoal<LoadPatientToStretcherGoal>()
            .AddCondition<PatientTargetCondition<OnBackBoard>>(Comparison.GreaterThanOrEqual, 1);

        
        builder.AddAction<PlaceBackBoardAction>()
            .AddEffect<PlacedBackBoard>(true)
            .SetTarget<SelfTarget>()
            .SetInRange(GoapUtility.k_rangeMedium)
            .SetBaseCost(1);

        builder.AddAction<LoadPatientToBackBoardAction>()
            .AddCondition<PlacedBackBoard>(Comparison.GreaterThanOrEqual, 1)
            .AddEffect<PatientTargetCondition<OnBackBoard>>(true)
            .SetTarget<PatientTarget>()
            .SetInRange(GoapUtility.k_rangeMedium)
            .SetBaseCost(1);

        builder.AddWorldSensor<HasStretcherWorldSensor>()
            .SetKey<PlacedStretcher>();
        
        builder.AddWorldSensor<PatientTargetHasComplexWorldState<OnStretcher>>()
            .SetKey<PatientTargetCondition<OnBackBoard>>();
        
        builder.AddTargetSensor<SelfTargetSensor>()
            .SetTarget<SelfTarget>();
    }

    private void HandlePlaceStretcherLoop(GoapSetBuilder builder) {
        builder.AddGoal<PlaceStretcherGoal>()
            .AddCondition<PlacedStretcher>(Comparison.GreaterThanOrEqual, 1);

        
        builder.AddAction<ExtractStretcherFromAmbulanceAction>()
            .AddEffect<PlacedStretcher>(true)
            .SetTarget<AmbulanceTarget>()
            .SetBaseCost(1)
            .SetInRange(GoapUtility.k_rangeMedium);

        builder.AddTargetSensor<AmbulanceTargetSensor>()
            .SetTarget<AmbulanceTarget>();
        // Movable target sensor alleready exists
    }
}