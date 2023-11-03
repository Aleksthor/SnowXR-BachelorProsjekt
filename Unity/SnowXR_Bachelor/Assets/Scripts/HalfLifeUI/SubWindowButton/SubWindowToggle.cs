using UnityEngine;
using UnityEngine.Events;
using UnityEngine.EventSystems;

namespace HalfLifeUI {
    public class SubWindowToggle : SubWindowInteractable {
        [Header("References")]
        public SubWindow targetSubWindow;

        private UnityAction<BaseEventData> onPointerDownAction;
        protected override void Awake() {
            base.Awake();

            SubWindowManager subWindowManager = _subWindowManager;
            
            action = (T) => {
                subWindowManager.SetPreviewWindow(targetSubWindow);
            };
            EventTrigger_AddAction(EventTriggerType.PointerEnter, action);

            onPointerDownAction = (T) => {
                subWindowManager.SetActiveSubWindow(targetSubWindow);
            };
            EventTrigger_AddAction(EventTriggerType.PointerDown, onPointerDownAction);
        }
    }
}