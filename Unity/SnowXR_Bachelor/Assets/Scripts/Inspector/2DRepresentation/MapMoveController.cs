using System;
using UnityEditor;
using UnityEngine;

namespace SnowXR.Represent2D {
    public class MapMoveController : MonoBehaviour {

        public float Zoom => (_camera.orthographicSize - MaxOrthoSize) / (_minOrthoSize- MaxOrthoSize); // Rewrite Lerp function
        public float MaxOrthoSize {
            get {
#if UNITY_EDITOR
                if (!EditorApplication.isPlaying) {
                    return 75f;
                }
#endif
                return _originalOrthoSize;
            }
        }


        private float _originalOrthoSize;
        private Vector2 _mousePosLastFrame;
        
        // Config
        [SerializeField] private float _minOrthoSize;
        [SerializeField] private float _zoomSpeed = 5f;
        
        
        // References
        [field:SerializeField] public Camera _camera { get; private set; }
        
        private void Awake() {
            if (_camera == null) {
                Logging.LogWarning(Logging.LogGroup.UI, "No Camera Set!");
                return;
            }

            _originalOrthoSize = _camera.orthographicSize;
        }


        private void Update() {
            // Get input
            Vector2 mousePos;
            mousePos.x = Input.mousePosition.x;
            mousePos.y = Input.mousePosition.y;
            float scrollInput = Input.mouseScrollDelta.y;
            
            // If we moved the mouse wheel, handle zoom
            if (ShouldHandleZoom(scrollInput)) {
                HandleZoom(scrollInput, mousePos);
            }
            
            // If 
            if (Input.GetKey(KeyCode.Mouse2)) {
                HandleMove(mousePos - _mousePosLastFrame);
            }

            _mousePosLastFrame = mousePos;
        }

        private void OnDrawGizmosSelected() {
            
            // Gizmos.DrawWireCube(transform.position, new Vector3(Bounds.x, 0, Bounds.y));
        }

        private bool ShouldHandleZoom(float scrollInput) {
            if (Mathf.Approximately(scrollInput, 0))
                return false;

            if (scrollInput > 0 && Zoom >= 1f) {
                return false;
            }

            if (scrollInput < 0 && Zoom <= 0f) {
                return false;
            }

            return true;

        }

        private void HandleZoom(float scrollInput, Vector3 mousePos) {
            scrollInput *= -_zoomSpeed;
            
            // Save before
            Vector3 before = _camera.ScreenToWorldPoint(new Vector3(mousePos.x, mousePos.y, _camera.nearClipPlane));
            
            // Apply input
            _camera.orthographicSize += scrollInput;
            
            // Clamp Camera size
            _camera.orthographicSize = Mathf.Clamp(_camera.orthographicSize, _minOrthoSize, MaxOrthoSize);
            
            // After position
            Vector3 after = _camera.ScreenToWorldPoint(new Vector3(mousePos.x, mousePos.y, _camera.nearClipPlane));

            // Calc offset
            Vector3 offset = after - before;
            
            offset.RemoveY();
            transform.position += -offset; 
        }
        private void HandleMove(Vector2 mousePosLastFrame) {
            Vector3 before = _camera.ScreenToWorldPoint(new Vector3(0, 0, _camera.nearClipPlane));
            Vector3 after = _camera.ScreenToWorldPoint(new Vector3(mousePosLastFrame.x, mousePosLastFrame.y, _camera.nearClipPlane));
            
            
            Vector3 offset = after - before;
            offset.RemoveY();
            transform.position += -offset; 
            
        }
    }
}