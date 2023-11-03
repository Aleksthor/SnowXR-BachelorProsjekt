using UnityEditor;
using UnityEngine;

namespace HalfLifeUI.Editor {
    #if UNITY_EDITOR
    [CustomEditor(typeof(SubWindowManager))]
    public class SubWindowManagerEditor : UnityEditor.Editor {
        public override void OnInspectorGUI() {
            base.OnInspectorGUI();
            
            SubWindowManager subWindowManager = (SubWindowManager) target;
            GUILayout.BeginHorizontal();
            if (GUILayout.Button("Return")) {
                subWindowManager.Return();
            }
            if (GUILayout.Button("Open")) {
                subWindowManager.Open();
            }
            if (GUILayout.Button("CLose")) {
                subWindowManager.Close();
            }
            
            GUILayout.EndHorizontal();
        }
    }
    #endif
}