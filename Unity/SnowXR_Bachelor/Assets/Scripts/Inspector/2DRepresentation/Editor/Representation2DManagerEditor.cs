using UnityEditor;
using UnityEngine;

namespace SnowXR.Represent2D
{
    [CustomEditor(typeof(Representation2DManager))]
    public class Representation2DManagerEditor : Editor
    {
        public override void OnInspectorGUI()
        {
            base.OnInspectorGUI();
            
            Representation2DManager manager = target as Representation2DManager;
            
            
            if (GUILayout.Button("Update Canvas Size"))
            {
                manager.UpdateCanvasSize();    
            }
        }
    }
}