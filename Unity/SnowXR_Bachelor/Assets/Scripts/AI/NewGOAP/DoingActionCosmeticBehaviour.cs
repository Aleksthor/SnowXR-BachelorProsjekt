using System;
using System.Linq;
using CrashKonijn.Goap.Enums;
using KBCore.Refs;
using SnowXR.Data;
using UnityEngine;
using UnityEngine.UI;

namespace SnowXR
{
    public class DoingActionCosmeticBehaviour : MonoBehaviour
    {
        // References
        [SerializeField, Self()]
        private WorkerBrain _brain;

        [SerializeField, Child()]
        private Canvas _canvas;

        [SerializeField]
        private Image _image;
        
        // State
        private float maxTime;
        private void Start()
        {
            _image = _canvas.GetComponentInChildren<Image>();
        }

        private void Update()
        {
            if (!ShouldCanvasBeActive())
            {
                SetActiveCosmetic(false);
                return;
            }
            
            SetActiveCosmetic(true);
            
            float timerAmount = ((IActionTimerData) _brain.Agent.CurrentActionData).timer;
            if (maxTime < timerAmount)
            {
                maxTime = timerAmount;
            }

            float lerp = timerAmount / maxTime;
            SetFillAmount(lerp);
            
            LookAtCamera();
            return;
            
            SetActiveCosmetic(false);
        }

        bool ShouldCanvasBeActive()
        {
            if (_brain.Agent.State != AgentState.PerformingAction)
            {
                return false;
            }

            if (_brain.Agent.CurrentActionData == null)
            {
                return false;
            }
            bool isTimerActionData = _brain.Agent.CurrentActionData.GetType().GetInterfaces().Contains(typeof(IActionTimerData));
            if (!isTimerActionData)
            {
                return false;
            }

            return true;
        }
        
        void LookAtCamera()
        {
            _canvas.transform.LookAt(Camera.main.transform.position);
        }
        
        void SetFillAmount(float amount)
        {
            _image.fillAmount = amount;
        }

        void SetActiveCosmetic(bool active)
        {
            _canvas.gameObject.SetActive(active);
            if (!active)
            {
                maxTime = 0;
            }
        }
        
        
#if UNITY_EDITOR
        private void OnValidate()
        {
            this.ValidateRefs();
        }
#endif
    }
}