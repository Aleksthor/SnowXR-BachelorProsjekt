using System;
using System.Collections.Generic;
using HalfLifeUI;
using KBCore.Refs;
using UnityEngine;
using UnityEngine.AddressableAssets;
using UnityEngine.UI;

namespace SnowXR.Represent2D {
    [RequireComponent(typeof(Represent2D))]
    [DisallowMultipleComponent]
    public class Represent2DUI : MonoBehaviour {
        [SerializeField, Self()] protected Represent2D _represent2D;

        protected GameObject UIGameObject = null;

        
        // Cache startSize
        private float _startSize;

        private void Update() {
            // Stop if no UI GameObject
            if (UIGameObject == null ) 
                return;

            if (_represent2D.enabled == false)
            {
                if (UIGameObject != null)
                    Destroy(UIGameObject);
                return;
            }
            
            // If Enabled
            
            // Scale with MapMover
            if (Representation2DManager.instance._mapMoveController == null) 
                return;

            MapMoveController mapMover = Representation2DManager.instance._mapMoveController;
            float zoomModifier = mapMover._camera.orthographicSize / mapMover.MaxOrthoSize;
            
            // Scale
            float scale = _startSize * zoomModifier;
            UIGameObject.transform.localScale = new Vector3(scale, scale, scale);
            
            // Offset from target rep2d
            Transform parent = Representation2DManager.GetTransform(_represent2D.GetInstanceID());
            Vector3 offset = Vector3.right * 10f * zoomModifier + Vector3.back * 7f * zoomModifier;
            UIGameObject.transform.position = parent.position + offset;
            UIGameObject.transform.rotation = Quaternion.LookRotation(Vector3.down, Vector3.forward);
        }

        protected GameObject SpawnUI() {
            GameObject go = Addressables.InstantiateAsync("HalfLifeUI/2DRepresent").WaitForCompletion();

            Transform parent = Representation2DManager.GetTransform(_represent2D.GetInstanceID());
            go.transform.SetParent(Representation2DManager.instance._canvas.transform, true);
            go.transform.position = parent.position;
            go.transform.rotation = Quaternion.LookRotation(Vector3.down, Vector3.forward);
            
            // Assumes scale is uniform
            _startSize = go.transform.localScale.x;
            return go;
        }
        
        
        /// <summary>
        /// Will run callback when the player next clicks on the screen, regardless of what is hits.
        /// </summary>
        /// <param name="manager"></param>
        /// <param name="buttonName"></param>
        /// <param name="callback">Vector3 is in world space, has NOT been sampled on NavMesh</param>
        protected void AddOnNextClickButton(SubWindowManager manager, string buttonName, params Func<Vector3, bool>[] callback)
        {
            GameObject go = manager.StartSubWindow.CreateButtonGeneric(buttonName, false);
            
            go.GetComponent<Button>().onClick.AddListener(() =>
            {
                manager.Close();
                
                if (callback.Length == 0)
                    return;
                
                Representation2DManager.instance.onNextClick.CreateNewStack(callback[0]);
                for (int i = 1; i < callback.Length; i++)
                {
                    Representation2DManager.instance.onNextClick.AddToSequence(callback[i]);    
                }
            });
            
        }
        
        /// <summary>
        /// Runs callback when THIS button is clicked
        /// </summary>
        /// <param name="manager"></param>
        /// <param name="buttonName"></param>
        /// <param name="callback"></param>
        protected void AddOnClickThisButton(SubWindowManager manager, string buttonName, Action callback)
        {
            GameObject go = manager.StartSubWindow.CreateButtonGeneric(buttonName, false);
            go.GetComponent<Button>().onClick.AddListener(() =>
            {
                manager.Close();
                callback();
            });
        }
        
        /// <summary>
        /// Runs when next a Rep2D is pressed. If it return false, will try agian on next Red2D click
        /// </summary>
        /// <param name="manager"></param>
        /// <param name="buttonName"></param>
        /// <param name="callback"></param>
        /// <param name="representKey"></param>
        protected void AddOnNext2DRepClickButton(SubWindowManager manager, string buttonName, Func<Represent2D, bool> callback, string representKey)
        {
            GameObject go = manager.StartSubWindow.CreateButtonGeneric(buttonName, false);
            go.GetComponent<Button>().onClick.AddListener(() =>
            {
            Representation2DManager.Dim(representKey);
                manager.Close();
                Representation2DManager.instance.onNext2DRepClick = callback;
            });
            
            // Highlight
            if (representKey == "")
            {
                representKey = Representation2DManager.k_invalidRepsentKey;
            }
            
        }
        
        
        
#if UNITY_EDITOR
        private void OnValidate() {
            this.ValidateRefs();
        }
#endif
    }
}