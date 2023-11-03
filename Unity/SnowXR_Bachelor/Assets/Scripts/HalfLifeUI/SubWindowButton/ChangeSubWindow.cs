using System;
using UnityEditor;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.UI;

namespace  HalfLifeUI {
    
    [RequireComponent(typeof(Button))]
    public class ChangeSubWindow : SubWindowInteractable {
        [Header("References")]
        public SubWindow targetSubWindow;

        [Header("Config")] [Tooltip("How many times should we Return() in SubWindowManager before we enter the new SubWindow")]
        [SerializeField] private int returns = 0;
        public bool bPreview = true;
        // private
        private Button _button;


        [SerializeField] private bool _bShowGizmos = true;
        private static bool _bStaticShowGizmos = false;
        protected override void Awake() {
            base.Awake();

            action = (arg0) => {
                if (targetSubWindow != null && bPreview) {
                    _subWindowManager.SetPreviewWindow(targetSubWindow);
                }
            };
            EventTrigger_AddAction(EventTriggerType.PointerEnter , action);
        
        
            //setting up button

            if (TryGetComponent(out Button button)) {
                _button = button;
                
                _button.onClick.AddListener(() => {
                    for (int i = 0; i < returns; i++) {
                        _subWindowManager.Return();
                    }

                    if (targetSubWindow != null) {
                        _subWindowManager.SetActiveSubWindow(targetSubWindow);
                    }
                });
            }
            
        }

        private void OnDrawGizmos() {
            if (targetSubWindow != null && _bStaticShowGizmos) {
                Gizmos.color = Color.green;
                Vector3[] corners = new Vector3[4];
                targetSubWindow.GetComponent<RectTransform>().GetWorldCorners(corners);
                
                Vector3 topMiddelPosition = Vector3.Lerp(corners[1], corners[2], 0.5f);
                
            
                Gizmos.DrawLine(transform.position, topMiddelPosition);
                Gizmos.DrawSphere(topMiddelPosition, 0.05f);
            }
        
        }

        private void OnDrawGizmosSelected() {
            if (targetSubWindow != null && _bShowGizmos) {
                Gizmos.color = Color.green;
                Vector3[] corners = new Vector3[4];
                targetSubWindow.GetComponent<RectTransform>().GetWorldCorners(corners);
                
                Vector3 topMiddelPosition = Vector3.Lerp(corners[1], corners[2], 0.5f);
                
            
                Gizmos.DrawLine(transform.position, topMiddelPosition);
                Gizmos.DrawSphere(topMiddelPosition, 0.05f);
            }
        }

#if UNITY_EDITOR
        [MenuItem("Tools/ToggleChangeSubwindowIndicator")]
        private static void ToggleGizmos() {
            _bStaticShowGizmos = !_bStaticShowGizmos;
        } 
#endif  
    }
}