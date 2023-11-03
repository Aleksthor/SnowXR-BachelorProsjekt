using CrashKonijn.Goap.Classes;
using CrashKonijn.Goap.Interfaces;
using CrashKonijn.Goap.Sensors;

namespace SnowXR.Target
{
    public class BackBoardTargetSensor : LocalTargetSensorBase
    {
        public override void Created()
        {
            
        }

        public override void Update()
        {
        }

        public override ITarget Sense(IMonoAgent agent, IComponentReference references)
        {
            var backBoard = agent.GetComponent<TargetBehaviour>().backBoard;
            if (backBoard == null)
            {
                return null;
            }
            return new TransformTarget(backBoard.transform);
        }
    }
}