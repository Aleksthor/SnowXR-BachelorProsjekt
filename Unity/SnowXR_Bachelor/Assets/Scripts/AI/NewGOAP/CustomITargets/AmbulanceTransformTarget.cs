using CrashKonijn.Goap.Classes;
using CrashKonijn.Goap.Interfaces;
using SnowXR;
using UnityEngine;
using UnityEngine.UIElements;

namespace AI.NewGOAP.CustomITargets {
    public class AmbulanceTransformTarget : ITarget {

        public Transform BackTarget { get; private set; }
        public Transform PatientSlot { get; private set; }

        public Transform Transform;
        public StretcherJointMover jointMover { get; private set; }
        public Vector3 Position {
            get {
                       
               if (this.BackTarget == null)
                   return Vector3.zero;

               return this.BackTarget.position;
            }
        }

        public AmbulanceTransformTarget(Transform transform, Transform patientSlot, Transform backSlot, StretcherJointMover jointMover)  {
            this.Transform = transform;
            PatientSlot = patientSlot;
            this.jointMover = jointMover;
            BackTarget = backSlot;
        }
    }
}