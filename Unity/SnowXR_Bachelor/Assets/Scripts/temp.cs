using System;
using Snow.Utility;
using UnityEngine;
using UnityEngine.InputSystem.XR;

namespace Unity.Template.VR
{
    public class temp : MonoBehaviour
    {
        private void Update()
        {
            Debug.Log($"vr: {XRUtility.XRPresentAndActive()}" );
        }
    }
}