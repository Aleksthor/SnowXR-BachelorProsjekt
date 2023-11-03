using AI.NewGOAP.ActionInterfaces;
using CrashKonijn.Goap.Behaviours;
using CrashKonijn.Goap.Classes;
using CrashKonijn.Goap.Enums;
using CrashKonijn.Goap.Interfaces;
using SnowXR.Data;
using SnowXR.State;

namespace SnowXR
{
    public class InvestigateAction : ActionBase<InvestigateAction.Data>, IActionPlaysAnimation
    {

        public override void Created()
        {
        }

        // Gets the data
        public override void Start(IMonoAgent agent, Data data)
        {
            data.timer = 2f;
        }

        public override ActionRunState Perform(IMonoAgent agent, Data data, ActionContext context)
        {
            data.timer -= context.DeltaTime;
            if (data.timer > 0f)
            {
                return ActionRunState.Continue;
            }


            var brain = agent.GetComponent<ComplexWorldStateBehaviour>();
            brain.Add<HasInvestigatedPatient>();
            return ActionRunState.Stop;
        }

        public override void End(IMonoAgent agent, Data data)
        {
        }
        
        public class Data : IActionTimerData
        {
            public ITarget Target { get; set; }
            public float timer { get; set; }
        }

        public string AnimationClipName => "Fumble";
    }
}