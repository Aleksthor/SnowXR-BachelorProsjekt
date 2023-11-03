using CrashKonijn.Goap.Behaviours;
using CrashKonijn.Goap.Classes.Builders;
using CrashKonijn.Goap.Resolver;
using SnowXR.WordState;

namespace SnowXR
{
    public static class WorkerGoapSetFactoryExtensions
    {

        #region Wander

        

        public static GoalBuilder AddWanderGoal(this GoapSetBuilder builder)
        {
            
            return builder.AddGoal<WanderGoal>()
                .AddCondition<IsWandering>(Comparison.GreaterThanOrEqual, 1);
        }
        public static ActionBuilder AddWanderAction(this GoapSetBuilder builder)
        {
            return builder.AddAction<WanderAction>()
                .SetTarget<WanderTarget>()
                .AddEffect<IsWandering>(true)
                .SetBaseCost(1)
                .SetInRange(4.3f);
        }

        public static void AddWanderTargetSensor(this GoapSetBuilder builder)
        {
            builder.AddTargetSensor<WanderTargetSensor>()
                .SetTarget<WanderTarget>();
        }
        
        #endregion

        #region WalkTo

        public static GoalBuilder AddWalkToGoal(this GoapSetBuilder builder)
        {
            return builder.AddGoal<WalkToGoal>()
                .AddCondition<IsWalking>(Comparison.GreaterThanOrEqual, 1);
        }
        public static ActionBuilder AddWalkToAction(this GoapSetBuilder builder)
        {
            return builder.AddAction<WalkToAction>()
                .SetTarget<WalkToTarget>()
                .AddEffect<IsWalking>(true)
                .SetBaseCost(1)
                .SetInRange(GoapUtility.k_rangeSmall);
        }
        public static void AddWalkToTargetSensor(this GoapSetBuilder builder)
        {
            
            builder.AddTargetSensor<WalkToSnowXRSensor>()
                .SetTarget<WalkToTarget>();
        }

        public static void AddWalkToWorldSensor(this GoapSetBuilder builder)
        {
            builder.AddWorldSensor<WalkToWorldSensor>()
                .SetKey<IsWalking>();
        }
        

        #endregion
    }
}