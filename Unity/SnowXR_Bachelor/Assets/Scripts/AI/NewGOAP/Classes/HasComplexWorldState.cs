using CrashKonijn.Goap.Classes;
using CrashKonijn.Goap.Interfaces;
using CrashKonijn.Goap.Sensors;
using SnowXR.State;

namespace SnowXR.AI
{
    public class HasComplexWorldState<T> : LocalWorldSensorBase
        where T : IWorkerState
    {
        public override void Created()
        {
        }

        public override void Update()
        {
        }

        public override SenseValue Sense(IMonoAgent agent, IComponentReference references)
        {
            return agent.GetComponent<WorkerBrain>().ComplexWorldState.Has<T>();
        }
    }
}