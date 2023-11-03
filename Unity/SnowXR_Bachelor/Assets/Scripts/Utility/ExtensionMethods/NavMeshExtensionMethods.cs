using UnityEngine;
using UnityEngine.AI;

namespace Snow.Utility.ExtensionMethods {
    /// <summary>
    /// Sample the position and returns it. Return originalVector if it did not hit anything.
    /// </summary>
    public static class NavMeshExtensionMethods {
        public static Vector3 SamplePosition(Vector3 sourcePosition) {
            bool success = NavMesh.SamplePosition(sourcePosition, out NavMeshHit hit, 10000, NavMesh.AllAreas);
            if (success) {
                return hit.position;
            }
            return sourcePosition;
            
        }
    }
}