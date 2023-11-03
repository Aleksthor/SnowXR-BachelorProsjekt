using System;
using System.Collections;
using System.Collections.Generic;
using BNG;
using KBCore.Refs;
using Unity.Mathematics;
using UnityEngine;

public class DoorInteraction : MonoBehaviour {
    public bool IsOpen { get; private set; }


    [SerializeField]
    private Transform _doorTransform;
    // [SerializeField, Child()]
    // private HingeJoint _hingeJoint;
    // [SerializeField, Child()]
    // private DoorHelper _doorHelper;
    // private void Start() {
        // Invoke("OpenDoor", 4f);
    // }

    
    public void OpenDoor()
    {
        var rb = GetComponent<Rigidbody>();
        rb.isKinematic = false;
        rb.velocity = Vector3.up * 100f;
        IsOpen = true;
        // _doorTransform.localRotation = quaternion.Euler(0, 90, 0);
    }

    public void CloseDoor() {
        _doorTransform.localRotation = quaternion.Euler(0, 0, 0);
    }
    
    

// #if UNITY_EDITOR
//     private void OnValidate() {
//         this.ValidateRefs();
//     }
// #endif
}
