using CrashKonijn.Goap.Interfaces;
using Snow.Utility;
using UnityEngine;

namespace AI.NewGOAP.CustomITargets
{
    public class VirtualTransformTarget : ITarget
    {
        public VirtualTransformTarget(VirtualTransforms virtualTransforms, int index)
        {
            _virtualTransforms = virtualTransforms;
            _index = index;
        }

        private VirtualTransforms _virtualTransforms;
        private int _index;

        public Transform Transform => _virtualTransforms.transform;
        public Vector3 Position => _virtualTransforms.GetWorldPosition(_index);
        public Quaternion Rotation => _virtualTransforms.GetWorldRotation(_index);


    }
}