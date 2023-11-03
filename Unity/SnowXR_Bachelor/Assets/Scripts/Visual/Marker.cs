using System;
using UnityEngine;

namespace SnowXR {
        
    [Serializable]
    public class Marker
    {
        
        public Mesh mesh;
        public Vector3 offset;
        public Vector3 rotateEuler = Vector3.zero;

        public void Draw(Vector3 position, Material material, Quaternion rotation, Vector3 scale = default)
        {
            for (int i = 0; i < mesh.subMeshCount; i++)
            {
                Vector3 offsetTransformer = rotation * Vector3.right * offset.x + rotation * Vector3.up * offset.y +
                                            rotation * Vector3.forward * offset.z;
                
                rotation *= Quaternion.Euler(rotateEuler);
                Graphics.DrawMesh(mesh,  position +  offsetTransformer, rotation, material, 0, Camera.current, i);
            }
        }
    }
    
    // TODO finish class implementation, 
    // /// <summary>
    // /// Will cycle through each child and draw it with special material
    // /// </summary>
    // [Serializable]
    // public class MarkerPrefab
    // {
    //     public GameObject gameObject;
    //     public Vector3 offset;
    //     public Vector3 rotateEuler = Vector3.zero;
    //         
    //     public void Draw(Vector3 position, Material material, Quaternion rotation, Vector3 scale = default)
    //     {
    //         for (int i = 0; i < gameObject.transform.childCount; i++)
    //         {
    //             Transform child = gameObject.transform.GetChild(i);
    //             Vector3 offsetTransformer = rotation.QuaternionTransformer(offset);
    //             
    //             Mesh mesh = child.GetComponent<MeshFilter>().sharedMesh;
    //             
    //             rotation *= Quaternion.Euler(rotateEuler);
    //             // Vector3 offsetTransformer = rotation * Vector3.right * offset.x + rotation * Vector3.up * offset.y +
    //             // rotation * Vector3.forward * offset.z;
    //             for (int j = 0; j < mesh.subMeshCount; j++)
    //             {
    //                 Graphics.DrawMesh(mesh,  position +  offsetTransformer, rotation, material, 0, Camera.main, j);
    //             }
    //         }
    //     }
    // }
}