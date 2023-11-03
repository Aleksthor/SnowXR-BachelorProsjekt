using System;
using UnityEngine;
using UnityEngine.EventSystems;


namespace  HalfLifeUI {
    public class SubWindowInfo : SubWindowInteractable {
        [Header("Config")]
        public string text;
        

        protected override void Awake() {
            base.Awake();
            action = (T) => {
                if (enabled) {
                    _subWindowManager.SetInfoText(text);
                }
            };
            EventTrigger_AddAction(EventTriggerType.PointerEnter, action);

        }
    }
}