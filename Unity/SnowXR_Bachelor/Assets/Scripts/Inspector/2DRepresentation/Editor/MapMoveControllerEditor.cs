using UnityEditor;

namespace SnowXR.Represent2D {
    [CustomEditor(typeof(MapMoveController))]
    public class MapMoveControllerEditor : Editor {
        public override void OnInspectorGUI() {
            base.OnInspectorGUI();
            MapMoveController t = target as MapMoveController;

            if (!EditorApplication.isPlaying) 
                EditorGUILayout.LabelField($"IN EDITOR, USING MAX ORTHO SIZE AS 75");
            
            EditorGUILayout.LabelField($"Zoom : {t.Zoom.ToString()}");
                
            
        }
    }
}