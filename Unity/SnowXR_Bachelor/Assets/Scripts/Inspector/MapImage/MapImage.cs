using Snow.Attributes;
using UnityEngine;
using UnityEngine.UI;

namespace SnowXR.Sim.Inspector.MapImage
{
    /// <summary>
    /// Only acts as settings for <see cref="MapSceneProcessor"/>
    /// </summary>
    [AutoStrip]
    public class MapImage : MonoBehaviour
    {
        public int width = 1920, height = 1080;
        
        [SerializeField, Tooltip("The target component that should have the image applied to its .sprite field")]
        private Image targetSprite;
        
        [Tooltip("Camera background color when taking the snapshot")]
        public Color cameraBackgroundColor;
        
        [Tooltip("The asset will be saved here")]
        public string AssetPath;

        [Tooltip("Camera to take snapshot with, if null, will create a snapshot camera instead")]
        public Camera snapshotCamera;

        public void ApplyToTarget(Sprite sprite)
        {
            Debug.Log("Set to sprite: " + sprite, sprite);
            targetSprite.sprite = sprite;
        }
    }
}