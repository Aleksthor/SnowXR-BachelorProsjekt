using System;
using System.Collections;
using System.Collections.Generic;
using BNG;
using DG.Tweening;
using KBCore.Refs;
using UnityEngine;

/// <summary>
/// Is used to make a grabbable snap to a snap zone when it is released.
/// This means for example that a radio should always return to this one,
/// and cannot be dropped anywhere else, world space of another snapZone.
/// </summary>
public class SnapZoneItemHolder : MonoBehaviour
{
    
    [SerializeField, Self()] SnapZone snapZone;
    // [SerializeField, Self()] GrabAction grabAction;
    
    private Grabbable grabbableHeld;
    
    private void Start() {
        snapZone.OnDetachEvent.AddListener(OnDetach);
    }

    private void OnDetach(Grabbable grabbable) {
        grabbableHeld = grabbable;
        snapZone.OnlyAllowNames.Clear();
        snapZone.OnlyAllowNames.Add(grabbableHeld.gameObject.name);
        
        if (grabbable == null) {
            Debug.Log("Grabbable is null");
            return;
        }
        GrabbableUnityEvents events = null;

        if (!grabbable.TryGetComponent(out events)) {
            events = grabbable.gameObject.AddComponent<GrabbableUnityEvents>();
        }
        grabbable.UpdateEventsList();
        
        events.onRelease.RemoveListener(OnRelease);
        events.onRelease.AddListener(OnRelease);
        
    }
    private void OnRelease() {
        Debug.Log("Release");
        // grabbableHeld.transform.position = transform.position;
        snapZone.GrabGrabbable(grabbableHeld);
    }
#if UNITY_EDITOR
    private void OnValidate() {
        this.ValidateRefs();
    }
#endif
}