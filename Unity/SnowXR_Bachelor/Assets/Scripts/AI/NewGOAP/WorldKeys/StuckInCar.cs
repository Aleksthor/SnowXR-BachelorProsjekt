using CrashKonijn.Goap.Behaviours;
using SnowXR.State;

namespace SnowXR
{
    public class StuckInCar : WorldKeyBase, IWorkerState
    {
        public string DebugName => GetType().ToString();
    }
}