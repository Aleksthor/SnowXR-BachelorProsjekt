using AI.NewGOAP.ActionInterfaces;
using CrashKonijn.Goap.Behaviours;
using CrashKonijn.Goap.Classes;
using CrashKonijn.Goap.Enums;
using CrashKonijn.Goap.Interfaces;
using SnowXR.Data;
using UnityEngine;

namespace SnowXR
{
    public class GiveOxygenAction : ActionBase<GiveOxygenAction.Data>, IActionPlaysAnimation
    {
        public class Data : IActionTimerData
        {
            public ITarget Target { get; set; }
            public float timer { get; set; }
        }

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

            var brain = (data.Target as TransformTarget).Transform.GetComponent<PatientWorkerBrain>();
            brain.ComplexWorldState.Add<HasOxygenApperatus>();
            brain.OnApplyOxygen();
            return ActionRunState.Stop;
        }

        public override void End(IMonoAgent agent, Data data)
        {
        }

        public string AnimationClipName => "Fumble";
    }
}