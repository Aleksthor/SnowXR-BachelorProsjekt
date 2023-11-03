using System.Collections.Generic;
using System.Linq;
using UnityEngine;
using UnityEngine.XR;

namespace Snow.Utility
{
    public static class XRUtility
    {
        /// <summary>
        ///     Is any form of XR device connected and running?
        /// </summary>
        /// <remarks>https://docs.unity3d.com/ScriptReference/XR.XRDevice-isPresent.html</remarks>
        /// <returns>True if any XR device is active and running</returns>
        public static bool XRPresentAndActive()
        {
            var xrDisplaySubsystems = new List<XRDisplaySubsystem>();
            SubsystemManager.GetInstances(xrDisplaySubsystems);

            return xrDisplaySubsystems.Any(xr => xr.running);
        }
    }
}