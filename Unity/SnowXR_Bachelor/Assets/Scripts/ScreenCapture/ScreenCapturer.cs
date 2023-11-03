using System;
using System.Collections;
using System.Collections.Generic;
using KBCore.Refs;
using UnityEngine;

namespace SnowXR.Sim
{
    public class ScreenCapturer : MonoBehaviour {
        [SerializeField] private int period = 5;
        [SerializeField] private RenderTexture _targetRenderTexture;
        [SerializeField, Self] private Camera _camera;

        private void Awake() {
                   
        }

        private int i = 0;
        private void LateUpdate() {
            i++;
            if (i > period) {
                i = 0;
                _camera.targetTexture = _targetRenderTexture;
                _camera.Render();
                _camera.targetTexture = null;
            }
        }
    }
}
