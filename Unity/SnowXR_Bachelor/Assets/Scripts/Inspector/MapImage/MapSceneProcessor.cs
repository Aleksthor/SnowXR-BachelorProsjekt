using System.Linq;
using Snow.Utility;
using UnityEditor;
using UnityEngine;
using UnityEngine.SceneManagement;
using File = System.IO.File;

namespace SnowXR.Sim.Inspector.MapImage
{
    #if UNITY_EDITOR
    /// <summary>
    /// Automatically takes "map" screenshots for images that require a static dynamic (dynamic as in changes as the scene changes)
    /// </summary>
    /// <remarks>A potential problem, the system currently does not take scenes in consideration. For example, if a
    /// behaviour on a gameobject in Scene A is supposed to take a top-down screenshot of "scene A", but Scene B is
    /// also currently loaded, the system will not disable gameobjects from scene B before taking the screenshot
    /// TODO: Fix above problem </remarks>
    [InitializeOnLoad]
    public class MapSceneProcessor
    {
        static MapSceneProcessor()
        {
            UnityEditor.SceneManagement.EditorSceneManager.sceneSaving += OnProcessScene;
        }

        private static void OnProcessScene(Scene scene, string path)
        {
            foreach (var gameObject in TransformUtility.GetAllSceneObjects(scene).Select(t => t.gameObject))
            {
                var mapImage = gameObject.GetComponent<MapImage>();
                
                if (mapImage != null){
                    ProcessBehaviour(mapImage);
                }
            }
        }

        private static void ProcessBehaviour(MapImage img)
        {
            var h = img.height;
            var w = img.width;
            
            // Snapshot camera is a utility script for taking screenshots of prefabs/gameobjects, but I added 
            // functionality to also use scene cameras. TODO: For problem described above, check out
            // SnapshotCamera.PrepareObject which might be helpful
            var snapshotCamera = SnapshotCamera.MakeSnapshotCamera(LayerMask.NameToLayer("Default"));
            
            // Take a snapshot based on component settings, then convert it to a sprite. Uses a scene camera if one is
            // specified on the MapImage component
            Texture2D texture;
            if (img.snapshotCamera != null)
            {
                texture = snapshotCamera.TakeSnapshot(img.snapshotCamera, img.cameraBackgroundColor, w, h);
            }
            else
            {
                texture = snapshotCamera.TakeSnapshot(img.cameraBackgroundColor, w, h);
            }
            
            // FIXME: The gameobject is not destroyed atm, not sure why? neither DestroyImmediate or Destroy works (see
            // SnapshotCamera.TakeSnapshot default implementation to see what should work)
            GameObject.Destroy(snapshotCamera);
            
            var byteData = texture.EncodeToPNG();

            // The path to unity project but with "/Assets/" removed
            var pathWithoutAsset = Application.dataPath.Substring(0, Application.dataPath.Length - 7);
            var assetFilePath = $"{pathWithoutAsset}/{img.AssetPath}";
            File.WriteAllBytes(assetFilePath, byteData);
            
            // Not totally sure why, but from testing it appears unity requires the assetdatabase to be refreshed for
            // AssetImporter to actually work
            AssetDatabase.SaveAssets();
            AssetDatabase.Refresh();
            
            // Change the asset type to sprite
            TextureImporter importer = (TextureImporter)AssetImporter.GetAtPath(img.AssetPath);
            importer.textureType = TextureImporterType.Sprite;
            AssetDatabase.ImportAsset(img.AssetPath, ImportAssetOptions.ForceUpdate);
            
            // Now the sprite asset should be succesfully saved and imported as sprite in Unity, so we can load it and
            // apply it to our target component
            var sprite = AssetDatabase.LoadAssetAtPath<Sprite>(img.AssetPath);
            img.ApplyToTarget(sprite);
        }
    }
    #endif
}