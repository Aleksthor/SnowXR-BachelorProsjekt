using System;
using UnityEditor;
using UnityEngine;

namespace Snow.Utility.Utility.Editor
{
    [CustomEditor(typeof(VirtualTransforms), true)]
    public class VirtualTransformsEditor : UnityEditor.Editor
    {
        private bool bSelected = false;
        private void OnSceneGUI()
        {
            
            var virtualTransforms = (VirtualTransforms) target;
            Transform parentTransform = virtualTransforms.transform;
            
            
            for (int i = 0; i < virtualTransforms.TransformDatas.Count; i++)
            {
                Quaternion rot = parentTransform.rotation * virtualTransforms.TransformDatas[i].localRotation;
                Vector3 worldPos = parentTransform.TransformPoint(virtualTransforms.TransformDatas[i].localPosition); 
                rot.Normalize();
                if (Tools.current == Tool.Move) {
                    worldPos = Handles.PositionHandle(worldPos, rot);
                    virtualTransforms.TransformDatas[i].localPosition = parentTransform.InverseTransformPoint(worldPos);
                }
                
                if (Tools.current == Tool.Rotate) {
                    var worldRot = Handles.RotationHandle(rot, worldPos);
                     virtualTransforms.TransformDatas[i].localRotation = Quaternion.Inverse(parentTransform.rotation) * worldRot;
                }
            }

            
            bool selected = GUIUtility.hotControl != 0;
            if (selected)
            {
                bSelected = true;
                return;
            }

            if (bSelected)
            {
                // Only save changes when we release the handle
                EditorUtility.SetDirty(virtualTransforms);
                
                // PrefabUtility.IsPartOfPrefabAsset()
            }
            
            bSelected = false;
        }

    }
}