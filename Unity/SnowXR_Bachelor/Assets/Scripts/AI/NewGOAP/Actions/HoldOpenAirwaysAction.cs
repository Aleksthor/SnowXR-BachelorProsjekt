using AI.NewGOAP.ActionInterfaces;
using CrashKonijn.Goap.Behaviours;
using CrashKonijn.Goap.Classes;
using CrashKonijn.Goap.Enums;
using CrashKonijn.Goap.Interfaces;
using SnowXR.Data;
using SnowXR.State;
using UnityEngine;
using UnityEngine.AI;

namespace SnowXR
{
    public class HoldOpenAirwaysAction : ActionBase<HoldOpenAirwaysAction.Data>, IActionPlaysAnimation
    {
        public class Data : IActionTimerData 
        {
            public ITarget Target { get; set; }
            public float timer { get; set; }
        }

        private bool bSavedPosition = false;
        private Vector3 _startPosition;
        public override void Created()
        {
        }

        // Gets the data
        public override void Start(IMonoAgent agent, Data data)
        {
            bSavedPosition = false;
            data.timer = 2f;
        }

        public override ActionRunState Perform(IMonoAgent agent, Data data, ActionContext context)
        {
            if (!bSavedPosition)
            {
                bSavedPosition = true;
                _startPosition = agent.transform.position;
            }

            Transform target = (data.Target as TransformTarget).Transform;
            
            target.GetComponent<ComplexWorldStateBehaviour>().Add<HasClosedAirways>();
            
            data.timer -= context.DeltaTime;
            if (data.timer > 0f)
            {
                agent.GetComponent<NavMeshAgent>().enabled = false;
                agent.transform.position = target.position + target.forward * -1f;
                return ActionRunState.Continue;
            }
            
            return ActionRunState.Stop;
        }

        public override void End(IMonoAgent agent, Data data)
        {
            agent.transform.position = _startPosition;
            agent.GetComponent<NavMeshAgent>().enabled = true;
        }

        public string AnimationClipName => "Fumble";
    }
}