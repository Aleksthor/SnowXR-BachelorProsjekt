using BNG;
using CrashKonijn.Goap.Behaviours;
using CrashKonijn.Goap.Classes;
using CrashKonijn.Goap.Classes.Injectors;
using CrashKonijn.Goap.Enums;
using CrashKonijn.Goap.Interfaces;
using SnowXR.Data;
using UnityEngine;

namespace SnowXR
{
    public class OpenDoorAction : ActionBase<OpenDoorAction.Data>
    {
        void Inject(GoapInjector goapInjector)
        {
            
        }
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

            IInteractableDoor door = (data.Target as TransformTarget).Transform.GetComponent<IInteractableDoor>();
            
            door.OpenDoor();
            // TransformTarget t = data.Target as TransformTarget;
            // t.Transform.localEulerAngles = new Vector3(45, 0, 0);
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
        
    }
}