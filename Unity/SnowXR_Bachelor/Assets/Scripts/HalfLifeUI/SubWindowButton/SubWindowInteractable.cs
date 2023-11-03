using TMPro;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.EventSystems;

namespace  HalfLifeUI {
    public class SubWindowInteractable : MonoBehaviour {
        [Tooltip("If not set, will try to find first TMP_Text in children")]
        public TMP_Text TMPText;

        [SerializeField]
        private EButtonState _buttonState = EButtonState.Interactable;
    
        // slighty expensive, but is not called in update or similar, makes other code much less complicated
        protected SubWindowManager _subWindowManager {
            get { return GetComponentInParent<SubWindowManager>();  }
        }
        protected UnityAction<BaseEventData> action;
        private EventTrigger _eventTrigger;

        protected virtual void Awake() {
            // get or create EventTrigger
            if (TryGetComponent(out EventTrigger eventTrigger)) {
                _eventTrigger = eventTrigger;
            }
            else {
                _eventTrigger = gameObject.AddComponent<EventTrigger>();
            }
        
            // _subWindowManager = GetComponentInParent<SubWindowManager>();
        
            // if we have not defined TMPtext, try to find it
            if (TMPText == null) {
                if (TryGetComponent(out TMP_Text tmp)) {
                    TMPText = tmp;
                }
            }
        }
        
        private void OnValidate() {
            if (_eventTrigger != null) {
                SetState(_buttonState);
            }
        }


        protected void EventTrigger_AddAction(EventTriggerType type, UnityAction<BaseEventData> action) {
            EventTrigger.Entry entry;
            if (TryGetEntry(type, out entry)) {
                entry.callback.AddListener(action);
            }
            else {
                entry = new EventTrigger.Entry();
                entry.eventID = type;
                entry.callback.AddListener(action);
                _eventTrigger.triggers.Add(entry);
            }
        }

        protected bool TryGetEntry(EventTriggerType type, out EventTrigger.Entry entry) {
            for (int i = 0; i < _eventTrigger.triggers.Count; i++) {
                if (_eventTrigger.triggers[i].eventID == type) {
                    entry = _eventTrigger.triggers[i];
                    return true;
                }
            }

            entry = null;
            return false;
        }

        //used for enabling and disablig buttons
        public virtual void SetState(EButtonState newState) {
            if (TMPText == null) 
                return;   
            
            EventTrigger.Entry entry;
            switch (newState) {
                case EButtonState.Interactable:
                    TMPText.color = Color.white;

                    // enables event triggers
                    if (TryGetEntry(EventTriggerType.PointerEnter, out entry)) {
                        entry.callback.RemoveListener(action);
                        entry.callback.AddListener(action);
                    }
                
                    break;
                case EButtonState.NonInteractable:
                    TMPText.color = Color.gray;

                    //disable event trigger
                    if (TryGetEntry(EventTriggerType.PointerEnter, out entry)) {
                        entry.callback.RemoveListener(action);
                    }
                    break;
            }
        }
    
        // debug functions used by rightclicking on the component
        [ContextMenu("SetInteractable")]
        private void SetInteractable(){ SetState(EButtonState.Interactable);  }

        [ContextMenu("SetNoninteractable")]
        private void SetNoninteractable() { SetState(EButtonState.NonInteractable);}
       
        // enums
        public enum EButtonState{Interactable, NonInteractable}
        
    }
    
    
}