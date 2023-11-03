using System;
using BNG;
using CrashKonijn.Goap.Classes;
using CrashKonijn.Goap.Interfaces;
using CrashKonijn.Goap.Sensors;

namespace SnowXR
{
    public class DoorTargetSensor : LocalTargetSensorBase
    {
        public override void Created()
        {
            
        }

        public override void Update()
        {
            
        }

        public override ITarget Sense(IMonoAgent agent, IComponentReference references)
        {
            TargetBehaviour targetBehaviour = agent.GetComponent<TargetBehaviour>();
            if (targetBehaviour == null)
                return null;
            if (targetBehaviour.patient == null)
                return null;

            return new TransformTarget(agent.GetComponent<TargetBehaviour>().patient.door);
        }
    }
}