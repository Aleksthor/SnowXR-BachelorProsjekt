using System.Linq;
using AI.NewGOAP;
using AI.NewGOAP.ActionInterfaces;
using AI.NewGOAP.CustomITargets;
using CrashKonijn.Goap.Behaviours;
using CrashKonijn.Goap.Classes;
using CrashKonijn.Goap.Enums;
using CrashKonijn.Goap.Interfaces;
using SnowXR.Data;
using SnowXR.State;
using UnityEngine;

namespace SnowXR
{
    public class FastReleaseAction : SharedActionBase<FastReleaseAction.Data>, IActionPlaysAnimation
    {
        private FireWorkerBrain _fireWorkerBrain;
        
        public override void Created()
        {
            
        }

        public override void Start(IMonoAgent agent, Data data)
        {
            actionCompleted = false;
            data.timer = 2f;
            _fireWorkerBrain = agent.GetComponent<FireWorkerBrain>();
        }
        private static readonly string key= "fastRelease";
        public override ActionRunState Perform(IMonoAgent agent, Data data, ActionContext context)
        {
            if (!Dictionary.ContainsKey(key))
            {
                CreateNewGroup(key, agent.GetInstanceID(), 5f, 3);
            }

            if (Dictionary[key].list.Count == 0)
            {
                Dictionary.Remove(key);
                CreateNewGroup(key, agent.GetInstanceID(), 5f, 3);
            }
            
            AddToGroup(key, agent.GetInstanceID());
            // Logging.Log(Logging.LogGroup.GAME_LOGIC, $"Actors Present : {Dictionary[key].list.Count}");
            TryTickDuration(key, context.DeltaTime);
            data.timer -= context.DeltaTime;
            var virtualTransformTarget = data.Target as VirtualTransformTarget;

            var transform = agent.transform;
            transform.position = virtualTransformTarget.Position;
            transform.rotation = virtualTransformTarget.Rotation;
            
            // On update
            
            // On continue
            if (GetDuration(key) > 0f) {
                return ActionRunState.Continue;
            }
            
            // On stop
            agent.GetComponent<TargetBehaviour>().patient.ComplexWorldState.Remove<StuckInCar>();
            // this is ugly
            if (!actionCompleted)
            {
                actionCompleted = true;
                var frontChairTransform = virtualTransformTarget.Transform.Find("FrontChair");
                
                Vector3 offset = frontChairTransform.position;
                frontChairTransform.localPosition = new Vector3(-0.402f, 0.235f, -0.0089f);
                offset = frontChairTransform.position - offset;
                agent.GetComponent<TargetBehaviour>().patient.transform.Translate(offset);
            }
            RemoveFromGroup(key, agent.GetInstanceID());
            return ActionRunState.Stop;
        }

        public override void End(IMonoAgent agent, Data data)
        {
            // if (Dictionary.ContainsKey(key) && Dictionary[key].list.Count == 0)
            // {
            //     Dictionary.Remove()
            // }
        }
        public class Data : IActionTimerData
        {
            public ITarget Target { get; set; }
            public float timer { get; set; }
        }

        public string AnimationClipName => "Fumble";
    }
}