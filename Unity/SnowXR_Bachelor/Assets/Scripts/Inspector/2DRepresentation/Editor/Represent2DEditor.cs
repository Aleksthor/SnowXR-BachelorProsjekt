using SnowXR.Sim.Descriptor;
using UnityEditor;
using UnityEngine;

namespace SnowXR.Represent2D {
    [CustomEditor(typeof(Represent2D))]
    public class Represent2DEditor : Editor {
        public override void OnInspectorGUI() {
            var t = target as Represent2D;
            if (t.TryGetComponent(out GenericDescriptor genericDescriptor))
            {
                EditorGUILayout.HelpBox("Values Controlled by Generic Descriptor attached to this GameObject", MessageType.Info);
                
                // return;    
            }
            DrawDefaultInspector();
            
        }
        
        
    }
}