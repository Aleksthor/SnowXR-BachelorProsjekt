using BNG;
using CrashKonijn.Goap.Classes;
using CrashKonijn.Goap.Interfaces;
using CrashKonijn.Goap.Sensors;
using UnityEngine;

namespace SnowXR
{
    public class CanInsestigateSensor : LocalWorldSensorBase
    {
        public override void Created()
        {
        }

        public override void Update()
        {
        }

        public override SenseValue Sense(IMonoAgent agent, IComponentReference references)
        {
            // todo can add more complicated behaviour
            TargetBehaviour targetBehaviour = agent.GetComponent<TargetBehaviour>();

            if (targetBehaviour.patient == null)
                return -1;
            if (targetBehaviour.patient.door == null)
                return 2;
            // targetBehaviour.patient.door.GetComponent<IInteractableDoor>().IsOpen
            bool isOpen = targetBehaviour.patient.door.GetComponent<IInteractableDoor>().IsOpen;
            // bool b =targetBehaviour.patient.door.localEulerAngles.x > 20;
            
            if (isOpen) 
            {
                return 2;
            }
            return 0;
        }
    }
}