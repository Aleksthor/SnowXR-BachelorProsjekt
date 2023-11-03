using System.Collections.Generic;
using System.Linq;
using AI.NewGOAP.CustomITargets;
using CrashKonijn.Goap.Interfaces;
using Descriptor;
using SnowXR.Faction;
using SnowXR.Represent2D;
using SnowXR.Sim.Descriptor;
using UnityEngine;

namespace SnowXR.Injectors
{
    public class SnowXRGoapInjector : MonoBehaviour,  IGoapInjector
    {
        public Vector3 Position;

        public AmbulanceTransformTarget GetClosestAmbulanceTransformTarget(Vector3 pos) {
            
            var ambulances = FindObjectsOfType<AmbulanceDescriptor>().OrderBy((d1) => {
                return Vector3.Distance(d1.transform.position, pos);
            });
            if (ambulances.Count() == 0) {
                return null;
            }
            var take1 = ambulances.Take(1).First();
            AmbulanceTransformTarget target = new AmbulanceTransformTarget(take1.transform, take1.patientTarget, take1.backDoorTarget, take1.transform.GetComponentInChildren<StretcherJointMover>());
            return target;
        }
        
        public void Inject(IActionBase action)
        {
            if (action is ISnowXRInjectable snowXRInjectable)
            {
                snowXRInjectable.Inject(this);
            }
        }

        public void Inject(IGoalBase goal)
        {
            if (goal is ISnowXRInjectable snowXRInjectable)
            {
                snowXRInjectable.Inject(this);
            }
        }

        public void Inject(IWorldSensor worldSensor)
        {
            if (worldSensor is ISnowXRInjectable snowXRInjectable)
            {
                snowXRInjectable.Inject(this);
            }
        }

        public void Inject(ITargetSensor targetSensor)
        {
            if (targetSensor is ISnowXRInjectable snowXRInjectable)
            {
                snowXRInjectable.Inject(this);
            }
        }
    }
}