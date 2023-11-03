using CrashKonijn.Goap.Behaviours;
using CrashKonijn.Goap.Configs;
using SnowXR.State;

namespace SnowXR
{
    public class HasInvestigatedPatient : WorldKeyBase, IWorkerState {
        public string DebugName => typeof(HasInvestigatedPatient).ToString();
    }
}