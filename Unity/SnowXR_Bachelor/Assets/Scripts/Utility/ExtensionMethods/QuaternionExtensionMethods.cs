using UnityEngine;

namespace SnowXR {
    public static class QuaternionExtensionMethods {
        
        /// <summary>
        /// Transform the offset vector by the quaternion
        /// </summary>
        /// <param name="quaternion"></param>
        /// <param name="offset"></param>
        /// <returns></returns>
        public static Vector3 QuaternionTransformer(this Quaternion quaternion, Vector3 offset) {
                Vector3 offsetTransformer = quaternion * Vector3.right * offset.x + quaternion * Vector3.up * offset.y +
                                            quaternion * Vector3.forward * offset.z;
                
                return offsetTransformer;
        } 
    }
}