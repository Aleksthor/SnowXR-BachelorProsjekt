using CrashKonijn.Goap.Behaviours;
using SnowXR.State;

namespace SnowXR
{
    public class HasReceivedHLR : WorldKeyBase, IWorkerState
    {
        public string DebugName => typeof(HasReceivedHLR).ToString();
    }
}