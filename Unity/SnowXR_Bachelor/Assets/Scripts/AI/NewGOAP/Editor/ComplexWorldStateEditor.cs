using System;
using System.Collections.Generic;
using System.Linq;
using SnowXR.State;
using UnityEditor;
using UnityEngine;
using UnityEngine.UIElements;

namespace AI.NewGOAP.Editor
{
    [CustomEditor(typeof(ComplexWorldStateBehaviour))]
    public class ComplexWorldStateEditor : UnityEditor.Editor
    {
        List<Type> listOfTypes = new List<Type>();
        public override VisualElement CreateInspectorGUI()
        {
            
            return base.CreateInspectorGUI();
        }
        
        [RuntimeInitializeOnLoadMethod(RuntimeInitializeLoadType.AfterAssembliesLoaded)]
        private void Ahah()
        {
        }

        public override void OnInspectorGUI()
        {
            base.OnInspectorGUI();
            if (listOfTypes.Count == 0)
            {
                listOfTypes = AppDomain.CurrentDomain.GetAssemblies()
                    // alternative: .GetExportedTypes()
                    .SelectMany(domainAssembly => domainAssembly.GetTypes())
                    .Where(type => typeof(IWorkerState).IsAssignableFrom(type)
                        // alternative: => type.IsSubclassOf(typeof(B))
                        // alternative: && type != typeof(B)
                        /*alternative:*/ && ! type.IsAbstract
                    ).ToList();
                
            }
            // if (EditorGUILayout.Foldout(true, "awdawd")) 
            // {
            //     
            // }
            var complexWorldState = (ComplexWorldStateBehaviour) target;
            var list = complexWorldState.ToString();
                       
            EditorGUILayout.BeginVertical();
            foreach (var item in list)
            {
                EditorGUILayout.LabelField(item);
            }
            EditorGUILayout.EndVertical();
            
            EditorGUILayout.Space();
            EditorGUILayout.LabelField("Possible States");
            
            for (int i = 0; i < listOfTypes.Count; i++)
            {
                if (GUILayout.Button(listOfTypes[i].ToString()))
                {
                    bool exists = complexWorldState.Has(listOfTypes[i], 1);
                    if (exists)
                    {
                        complexWorldState.Remove(listOfTypes[i]);
                    }
                    else
                    {
                        complexWorldState.Add(listOfTypes[i]);
                    }
                    
                    EditorUtility.SetDirty(complexWorldState);
                }
            }   
        }
    }
}