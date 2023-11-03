using UnityEngine;

namespace Snow.Utility
{
    /// <summary>
    /// Super simple utility behaviour registers the gameobject with DontDestroyOnLoad
    /// </summary>
    public class DontDestroy : MonoBehaviour
    {
        private void Awake()
        {
            DontDestroyOnLoad(this.gameObject);
        }
    }
}