using System.Linq;
using AI.NewGOAP.CustomITargets;
using CrashKonijn.Goap.Classes;
using CrashKonijn.Goap.Interfaces;
using CrashKonijn.Goap.Sensors;
using Descriptor;
using UnityEngine;

namespace SnowXR.Target
{
    public class FindClosestTargetSensor<T> : LocalTargetSensorBase
    where T : Component
    {
        public override void Created()
        {
        }

        public override void Update()
        {
        }

        public override ITarget Sense(IMonoAgent agent, IComponentReference references)
        {
            var ambulances = GameObject.FindObjectsOfType<T>().OrderBy((component) =>
            {
                return Vector3.Distance(component.transform.position, agent.transform.position);
            });
            
            if (ambulances.Count() == 0) {
                return null;
            }
            
            var take1 = ambulances.Take(1).First();
            return new TransformTarget(take1.transform);
        }
    }
}