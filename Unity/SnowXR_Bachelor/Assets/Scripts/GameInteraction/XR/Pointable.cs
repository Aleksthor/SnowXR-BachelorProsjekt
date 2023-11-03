using System;
using System.Collections;
using System.Collections.Generic;
using BNG;
using UnityEngine;
using UnityEngine.Events;

/// <summary>
/// to disable enable disable this component
/// onInteract will be invoket from Pointer class with a reference to itself
/// </summary>
public class Pointable : MonoBehaviour {

    [Header("References")]
    [SerializeField]
    private Outline _outline;

    //private state
    
    [Header("State")]
    public Pointer.EPointType pointableType = Pointer.EPointType.Patient;
    
    //hidden in inspector
    [HideInInspector]
    public bool bClosest = false;
    [HideInInspector]
    public bool bInTrigger = false;

    public UnityEvent<Pointer> onInteract;


    private void Update()
    {
        if (_outline != null) {
            //outline configuration
            float targetWidth = 0;
            if (bInTrigger) {
                targetWidth = 2f;
            }
            if (bClosest) {
                targetWidth = 7f;
            }
            
            //disables script when width is ca 0, this removes a bug where the outline is not visible if its inside another outlined object
            if (_outline.OutlineWidth < 0.04f) {
                _outline.enabled = false;
            }
            else {
                _outline.enabled = true;
            }
            
            //changing size
            _outline.OutlineWidth = Mathf.Lerp(_outline.OutlineWidth, targetWidth, Time.deltaTime * 8f);
        }
        
    }

    private void OnDisable() {
        if (_outline != null) {
            _outline.OutlineWidth = 0f;
            _outline.enabled = false;
        }
    }
}