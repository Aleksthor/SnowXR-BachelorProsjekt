using AI.NewGOAP;
using CrashKonijn.Goap.Behaviours;
using CrashKonijn.Goap.Classes;
using CrashKonijn.Goap.Enums;
using CrashKonijn.Goap.Interfaces;
using SnowXR.Data;
using UnityEngine;
using UnityEngine.AI;

namespace SnowXR
{
    public class FollowMoveableObjectAction : ActionBase<FollowMoveableObjectAction.Data>
    {
        public class Data : IActionData
        {
            public ITarget Target { get; set; }
            public float timer { get; set; }
            
            public NavMeshAgent navMeshAgent;
        }

        
        public override void Created()
        {
        }

        public override void Start(IMonoAgent agent, Data data)
        {
            data.timer = 1000;
            data.navMeshAgent = agent.GetComponent<NavMeshAgent>();
        }

        public override ActionRunState Perform(IMonoAgent agent, Data data, ActionContext context)
        {
            data.timer -= context.DeltaTime;
            if (data.timer > 0)
            {
                // Request position from the backboard
                TransformTarget transformTarget = data.Target as TransformTarget;
                if (transformTarget == null) {
                    Logging.LogWarning("NoTransformTarget");
                }
                WorkerKeeper workerKeeper = (data.Target as TransformTarget).Transform.GetComponent<WorkerKeeper>();
                
                
                
                data.navMeshAgent.enabled = false;
                agent.transform.position = workerKeeper.GetWorkerPosition(agent.GetComponent<WorkerBrain>());
                agent.transform.rotation = workerKeeper.transform.rotation;
                return ActionRunState.Continue;
            }

            return ActionRunState.Stop;
        }

        public override void End(IMonoAgent agent, Data data)
        {
            data.navMeshAgent.enabled = true;
        }
    }
}