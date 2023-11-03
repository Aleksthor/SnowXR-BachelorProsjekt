using CrashKonijn.Goap.Behaviours;
using CrashKonijn.Goap.Classes;
using CrashKonijn.Goap.Enums;
using CrashKonijn.Goap.Interfaces;

namespace SnowXR
{
    public class WalkToAction : ActionBase<WalkToAction.Data>
    {

        public override void Created()
        {
        }

        public override void Start(IMonoAgent agent, Data data)
        {
            data.timer = 2f;
        }

        public override ActionRunState Perform(IMonoAgent agent, Data data, ActionContext context)
        {
            data.timer -= context.DeltaTime;

            if (data.timer > 0)
            {
                return ActionRunState.Continue;
            }

            return ActionRunState.Stop;
        }

        public override void End(IMonoAgent agent, Data data)
        {
        }
        
        public class Data : IActionData
        {
            public ITarget Target { get; set; }
            public float timer { get; set; }
        }
    }
}