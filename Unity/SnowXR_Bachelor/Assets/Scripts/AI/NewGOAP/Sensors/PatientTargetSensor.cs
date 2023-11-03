using CrashKonijn.Goap.Classes;
using CrashKonijn.Goap.Interfaces;
using CrashKonijn.Goap.Sensors;
using UnityEngine;

namespace SnowXR
{
    public class PatientTargetSensor : LocalTargetSensorBase
    {
        public override void Created()
        {
        }

        public override void Update()
        {
        }

        public override ITarget Sense(IMonoAgent agent, IComponentReference references)
        {
            // Debug.Log("SENSE");
            PatientWorkerBrain patient = agent.GetComponent<TargetBehaviour>().patient;
            if (patient == null)
            {
                return null;
            }
            return new TransformTarget(patient.transform);
        }
    }
}