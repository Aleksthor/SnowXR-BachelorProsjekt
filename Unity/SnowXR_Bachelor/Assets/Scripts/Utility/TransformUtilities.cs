using System.Collections.Generic;
using System.Linq;
using UnityEngine;
using UnityEngine.SceneManagement;

namespace Snow.Utility
{
    public static class TransformUtility
    {
        /// <summary>
        ///     Returns a list containing every single root GameObject in all currently active scenes.
        /// </summary>
        /// <returns>List of all root GameObjects</returns>
        public static List<GameObject> GetAllRootGameObjects()
        {
            var ret = new List<GameObject>();

            for (var i = 0; i < SceneManager.sceneCount; i++)
            {
                var scene = SceneManager.GetSceneAt(i);
                if (!scene.IsValid() || !scene.isLoaded)
                {
                    continue;
                }
                ret.AddRange(scene.GetRootGameObjects());
            }

            return ret;
        }

        /// <summary>
        ///     Recursively returns every single child of a given transform
        /// </summary>
        /// <param name="root">The root Transform to find the descendants of</param>
        /// <returns>List containing all descendants of given root</returns>
        public static List<Transform> GetAllChildren(Transform root)
        {
            var result = new List<Transform>();

            GetAllChildren(root, ref result);

            return result;
        }

        /// <summary>
        ///     Recursively returns every single child of a given transform
        /// </summary>
        /// <param name="root">The root Transform to find the descendants of</param>
        /// <param name="list">List to populate with results</param>
        public static void GetAllChildren(Transform root, ref List<Transform> list)
        {
            for (var i = root.childCount - 1; i >= 0; i--)
            {
                var child = root.GetChild(i);
                list.Add(child);
                GetAllChildren(child, ref list);
            }
        }
        

        /// <summary>
        ///     Returns every single transform of the given scene. TODO: move to utilities
        /// </summary>
        /// <param name="scene">Target scene to get all transforms from</param>
        /// <returns>List containing every single Transform in the given scene</returns>
        public static List<Transform> GetAllSceneObjects(Scene scene)
        {
            var rootObjects = scene.GetRootGameObjects();
            var allSceneGOs = new List<Transform>(rootObjects.Select(g => g.transform));
            foreach (var go in rootObjects)
            {
                TransformUtility.GetAllChildren(go.transform, ref allSceneGOs);
            }

            return allSceneGOs;
        }
    }
}