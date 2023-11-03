using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

/// <summary>
/// Handles switching between Representation2D and VR view mode
/// </summary>
public class DesktopViewModeController : MonoBehaviour {
    [SerializeField] private Button SwitchViewButton = null;
    
    private void Awake() {
        if (SwitchViewButton == null) {
            Debug.LogWarning($"{name} in DeskTopViewController has not a set SwitchViewButton assigned");
            
        }
        else {
            SwitchViewButton.onClick.AddListener(Switch);
        }
    }

    private void Update() {
        if (Input.GetKeyDown(KeyCode.F1)) {
            Switch();
        }
    }

    
    private void Switch() {
        bool activeCamera = Representation2DManager.ActiveCamera;
        Representation2DManager.SetCameraActive(!activeCamera);
    }
}
