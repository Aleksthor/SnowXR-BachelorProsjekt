using CrashKonijn.Goap.Behaviours;
using CrashKonijn.Goap.Classes;
using CrashKonijn.Goap.Enums;
using CrashKonijn.Goap.Interfaces;
using UnityEngine;

namespace SnowXR
{
    public class WanderAction : ActionBase<WanderAction.Data>
    {

        public override void Created()
        {
        }

        public override void Start(IMonoAgent agent, Data data)
        {
            data.timer = Random.Range(0.2f, 5f);
        }

        public override ActionRunState Perform(IMonoAgent agent, Data data, ActionContext context)
        {
            data.timer -= Time.deltaTime;
            if (data.timer > 0f)
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