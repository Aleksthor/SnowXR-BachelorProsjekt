using System;
using System.Net.Mail;
using BNG;
using DG.Tweening;
using UnityEngine;

namespace  HalfLifeUI {
    
    public class BasicWindow : MonoBehaviour {
        
        protected CanvasGroup _canvasGroup;

        [SerializeField] private EWindowMode _currentWindowMode = EWindowMode.Interact;
        [Tooltip("Only use this for windows that are not supposed to be tracket by subwindow manager automaticly, for example the orientation window")]
        [SerializeField] private bool bDisableOnAwake = false;
        private Vector3 _onAwakeScale = Vector3.one;

        public enum EWindowMode{Interact, NonInteract, Return, Disabled, Preview}
        protected virtual void Awake() {
            if (GetComponent<CanvasGroup>() == null)
                _canvasGroup = gameObject.AddComponent<CanvasGroup>();
            else 
                _canvasGroup = GetComponent<CanvasGroup>();
            
            // finds canvas and sets it to the correct camera
            if (TryGetComponent(out Canvas canvas)) {
                if (canvas.worldCamera == null) {
                    VRUISystem.Instance.AddCanvas(canvas);
                }
            }

            // _onAwakeScale = transform.localScale;
            _onAwakeScale = Vector3.one;

            if (bDisableOnAwake) {
                SetState(EWindowMode.Disabled);
            }
        }

        public virtual void SetState(EWindowMode newMode) {
            _currentWindowMode = newMode;

            if (_canvasGroup == null)
            {
                Transform t = transform;
                string toPrint = "";
                while (t != null)
                {
                    toPrint += t.gameObject.name + "|";
                    t = t.parent;
                }
                Debug.LogError($"{toPrint} does not have a canvasGroup");
                return;
            }
            
            float targetSize = 1f;
            bool enabled = true;
            _canvasGroup.blocksRaycasts = true;
            
            gameObject.SetActive(true);
            switch (newMode) {
                case  EWindowMode.Interact:
                    SetVisibility(1f);
                    break;
                case EWindowMode.NonInteract:
                    _canvasGroup.blocksRaycasts = false;
                    break;
                case EWindowMode.Return:
                    break;
                case  EWindowMode.Disabled:
                    _canvasGroup.blocksRaycasts = false;
                    enabled = false;
                    targetSize = 0f;
                    break;
                case  EWindowMode.Preview:
                    _canvasGroup.blocksRaycasts = false;
                    targetSize = 0.7f;
                    SetVisibility(0.5f);
                    break;
                
                
            }

            transform.DOKill();
            transform.DOScale(targetSize * _onAwakeScale, 0.1f).OnComplete(() => gameObject.SetActive(enabled));
        }

        public virtual void SetVisibility(float a) {
            _canvasGroup.alpha = a;
        }

        public bool IsEqual(BasicWindow basicWindow) {
            if (this == basicWindow) {
                return true;
            }

            return false;
        }
    
    
    

    }
}