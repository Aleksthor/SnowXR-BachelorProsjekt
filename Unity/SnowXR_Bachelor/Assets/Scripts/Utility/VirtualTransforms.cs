using System;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;

namespace Snow.Utility
{
    public class VirtualTransforms : MonoBehaviour
    {
        public List<TransformData> TransformDatas = new List<TransformData>();
        
        public int Count => TransformDatas.Count;
        
        [Serializable]
        public class TransformData
        {
            public TransformData() {
                localRotation = Quaternion.identity;
                localPosition = Vector3.zero;
                socketName = "";
            }
            
            public Vector3 localPosition;
            public Quaternion localRotation;
            public string socketName;
        }

        public TransformData FindWithSocketName(string socketName)
        {
            return TransformDatas.Find(x => x.socketName == socketName);
        }
        
        public Vector3 GetSocketWorldPosition(string socketName)
        {
            TransformData transformData = TransformDatas.Where(x => x.socketName == socketName).Take(1).First();
            return GetWorldPosition(transformData);
        }

        public Vector3 GetWorldPosition(TransformData transformData)
        {
            int key = TransformDatas.FindIndex(x =>
            {
                return x == transformData;
            });
            if (key == -1)
            {
                return Vector3.zero;
            }
            
            return GetWorldPosition(key);
        }
        public Vector3 GetWorldPosition(int key)
        {
            return transform.TransformPoint(TransformDatas[key].localPosition);
        }

        public Quaternion GetWorldRotation(int key)
        {
            return transform.rotation * TransformDatas[key].localRotation;
        }
        // public TransformData this[int key]
        // {
        //     get
        //     {
        //         return TransformDatas[key];
        //     }
        // }
        
    }
}