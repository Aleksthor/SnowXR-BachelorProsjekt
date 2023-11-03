using System;
using TMPro;
using UnityEngine;
using UnityEngine.UI;

namespace HalfLifeUI {
    
    public class IconButtonWrapper : MonoBehaviour {
        [Header("References")]
        [SerializeField] private Image icon;
        [SerializeField] private TMP_Text buttonText;
        
        [Header("Blinking Config")]
        public bool bBlink = true;
        [SerializeField] private bool bIndicatorActive = false;
        [Tooltip(" 0  if constant man light")] [Min(0f)]
        [SerializeField] private float blinkFrequency = 0.5f;

        [Header("Config")] 
        public OnClickBehaviour mode = OnClickBehaviour.Disable;

        // private references
        private Button _button;
        
        // private
        private Color startColor;
        
        
        protected virtual void Awake() {
            // handling references
            _button = GetComponent<Button>();
            
            startColor = icon.color;
            SetIndicator(bIndicatorActive);

            _button.onClick.AddListener(() => {
                switch (mode)
                {
                    
                    case OnClickBehaviour.Toggle:
                        SetIndicator(!bIndicatorActive);
                        break;
                    case OnClickBehaviour.Disable:
                        SetIndicator(false);
                        break;
                    case OnClickBehaviour.Enable:
                        SetIndicator(true);
                        break;
                    case OnClickBehaviour.NoBehaviour:
                        // do nothing
                        break;
                }
            });
        }

        private void Update() {
            if (bBlink) {
                startColor.a = Mathf.Cos(Time.time * blinkFrequency * 2f * Mathf.PI) / 2f + 0.5f; // adds sine and remaps to 0 - 1
                icon.color = startColor;
            }
        }

        public void SetIndicator(bool bActive) {
            bIndicatorActive = bActive;
            icon.enabled = bIndicatorActive;
        }

        public void SetButtonText(string text) {
            buttonText.text = text;
        }

        protected virtual void OnValidate() {
            SetIndicator(bIndicatorActive);
        }
    }
    
    public enum OnClickBehaviour
    {
        Toggle, Disable, Enable, NoBehaviour
    }
    

}