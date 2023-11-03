using CrashKonijn.Goap.Behaviours;
using CrashKonijn.Goap.Classes;
using CrashKonijn.Goap.Classes.Injectors;
using SnowXR.Injectors;

namespace SnowXR
{
    public class GoapConfigInitializer : GoapConfigInitializerBase
    {
        public override void InitConfig(GoapConfig config)
        {
            config.GoapInjector = this.GetComponent<SnowXRGoapInjector>();
        }
    }
}