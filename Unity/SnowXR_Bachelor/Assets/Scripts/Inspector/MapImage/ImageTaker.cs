using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using KBCore.Refs;
using UnityEditor;
using UnityEngine;
using UnityEngine.AddressableAssets;
using UnityEngine.UI;

[RequireComponent(typeof(Camera))]
public class ImageTaker : MonoBehaviour {
    [SerializeField, Self()] 
    private Camera _camera;

    [SerializeField]
    private Shader shader;
    [SerializeField]
    private RenderTexture renderTexture;

    public Texture2D Image;
    [ContextMenu("TakeImage")]
    void CamCapture()
    {
        Camera Cam = GetComponent<Camera>();
        int previousCullingMask = Cam.cullingMask;
        Cam.cullingMask = 1 << LayerMask.NameToLayer("Default");
        
        
        renderTexture = new RenderTexture(1920, 1080, 24);
        _camera.targetTexture = renderTexture;
        RenderTexture currentRT = RenderTexture.active;
        RenderTexture.active = Cam.targetTexture;
 
        Cam.Render();
        // Cam.RenderWithShader(shader, "");
 
        
        Image = new Texture2D(Cam.targetTexture.width, Cam.targetTexture.height);
        Image.ReadPixels(new Rect(0, 0, Cam.targetTexture.width, Cam.targetTexture.height), 0, 0);
        Image.Apply();
        RenderTexture.active = currentRT;

        Sprite sprite = Sprite.Create(Image, new Rect(0,0,Image.width,Image.height), new Vector2(Image.width/2f, Image.height/2f));
        GetComponentInChildren<Image>().sprite = sprite;
        
        // DestroyImmediate(Image);
        // var Bytes = Image.EncodeToPNG();
        // DestroyImmediate(Image);
        // // GetCurrentTime of system
        // string System = DateTime.Now.ToString("HH_mm");
        // File.WriteAllBytes(Application.dataPath + "/Backgrounds/" + System + ".png", Bytes);
        
        // AssetDatabase.Refresh();
        
        // Cleanup camera
        Cam.targetTexture = null;
        DestroyImmediate(renderTexture);
        Cam.cullingMask = previousCullingMask;

    }
    
#if UNITY_EDITOR
    private void OnValidate() {
        this.ValidateRefs();
    }
#endif
}