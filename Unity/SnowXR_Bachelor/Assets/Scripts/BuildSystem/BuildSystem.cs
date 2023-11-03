using System.IO;
using System.Linq;
using UnityEditor;
using UnityEditor.Build.Reporting;
using UnityEngine;

namespace Unity.Template.VR.BuildSystem
{
    static class BuildSystem
    {
        public const string EDITOR_PREF_PATH = "Snow.Editor.Build.Path";
        [MenuItem("Build/Change Location")]
        static void SetBuildLocation(){
            var path = EditorUtility.OpenFolderPanel("Select build location", "", "");
            EditorPrefs.SetString(EDITOR_PREF_PATH, path);
        }

        [MenuItem("Build/Quick")]
        static bool BuildQuick()
        {
            if (!EditorPrefs.HasKey(EDITOR_PREF_PATH) || string.IsNullOrEmpty(EditorPrefs.GetString(EDITOR_PREF_PATH)))
            {
                SetBuildLocation();
            }

            var finalPath = GetFinalPath();
            
            var options = new BuildPlayerOptions()
            {
                locationPathName = finalPath,
                options = BuildOptions.Development,
                target = BuildTarget.StandaloneWindows64,
                // mimic BuildSettingsWindow, by including defined scenes that are enabled
                scenes = EditorBuildSettings.scenes.Where(s => s.enabled).Select(s => s.path).ToArray()
            };
            var report = UnityEditor.BuildPipeline.BuildPlayer(options);


            var buildResult = report.summary.result;

            if (buildResult == BuildResult.Unknown)
            {
                
            }
            return buildResult == BuildResult.Succeeded;
        }

        [MenuItem("Build/Run _F11")]
        static void RunQuickBuild()
        {
            var path = GetFinalPath();
            
            System.Diagnostics.Process.Start(path);
        }


        [MenuItem("Build/Quick And run _F12")]
        static void BuildAndRunQuick()
        {
            if (!BuildQuick())
            {
                return;
            }

            System.Diagnostics.Process.Start(GetFinalPath());
        }
        
        private static string GetFinalPath()
        {
            var finalPath = Path.Join(EditorPrefs.GetString(EDITOR_PREF_PATH), "AmbulanceSim.exe");
            return finalPath;
        }
    }
}