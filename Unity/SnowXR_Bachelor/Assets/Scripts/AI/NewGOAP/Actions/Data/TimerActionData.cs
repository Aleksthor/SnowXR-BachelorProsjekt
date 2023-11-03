using CrashKonijn.Goap.Interfaces;

namespace SnowXR.Data
{
    public interface IActionTimerData : IActionData
    {
        public float timer { get; set; }
    }
}