using System;
using System.Collections.Generic;
using KBCore.Refs;
using SnowXR.Sim.Descriptor;
using UnityEngine;
using UnityEngine.AddressableAssets;

namespace Descriptor {
    [RequireComponent(typeof(GenericDescriptor))]
    [DisallowMultipleComponent]
    public class AmbulanceDescriptor : MonoBehaviour {
        [SerializeField, Self()] private GenericDescriptor _descriptor; 
        
        [field:SerializeField] public Transform backDoorTarget { get; private set; }
        [field:SerializeField] public Transform patientTarget { get; private set; }
        
        

#if UNITY_EDITOR
    private void OnValidate() {
        this.ValidateRefs();
    }
#endif
        
    }
}