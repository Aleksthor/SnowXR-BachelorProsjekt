using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AirwayRotator : MonoBehaviour
{
    public Transform Jaw;

    public Vector3 EulerAngleIdle;
    public Vector3 EulerAngleOpen;

    public bool AirwaysOpen = true;
    public bool OverrideAnim = true;

    /// <remarks>
    /// TODO: Use the animator to edit IK & animation layers in order to create a more believable/smoother animation.
    /// </remarks>

    [ContextMenu("Open Jaw")]
    public void OpenJaw()
    {
        AirwaysOpen = true;
    }

    [ContextMenu("Close Jaw")]
    public void CloseJaw()
    {
        AirwaysOpen = false;
    }

    void LateUpdate()
    {
        // Handle rotation overriding.
        if (!OverrideAnim)
            return;

        if (AirwaysOpen)
        {
            Jaw.localEulerAngles = EulerAngleOpen;
        }
        else
        {
            Jaw.localEulerAngles = EulerAngleIdle;
        }
    }
}
