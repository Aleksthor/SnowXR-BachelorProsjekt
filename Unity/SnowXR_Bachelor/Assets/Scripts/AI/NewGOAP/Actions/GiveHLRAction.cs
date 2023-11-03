using AI.NewGOAP.ActionInterfaces;
using CrashKonijn.Goap.Behaviours;
using CrashKonijn.Goap.Classes;
using CrashKonijn.Goap.Enums;
using CrashKonijn.Goap.Interfaces;
using SnowXR.Data;

namespace SnowXR
{
    public class GiveHLRAction : ActionBase<GiveHLRAction.Data>, IActionPlaysAnimation
    {
        public class Data : IActionTimerData
        {
            public ITarget Target { get; set; }
            public float timer { get; set; }
        }

        public override void Created()
        {
        }

        public override void Start(IMonoAgent agent, Data data)
        {
            data.timer = 3f;
        }

        public override ActionRunState Perform(IMonoAgent agent, Data data, ActionContext context)
        {
            data.timer -= context.DeltaTime;
            if (data.timer > 0)
            {
                return ActionRunState.Continue;
            }

            var brain = (data.Target as TransformTarget).Transform.GetComponent<PatientWorkerBrain>();
            brain.ComplexWorldState.Add<HasReceivedHLR>();
            brain.OnApplyHLR();
            return ActionRunState.Stop;
        }

        public override void End(IMonoAgent agent, Data data)
        {
        }

        public string AnimationClipName => "Fumble";
    }
}