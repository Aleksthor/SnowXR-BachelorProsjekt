using System;
using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEditor;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.UI;

namespace  HalfLifeUI {
    
    public class SubWindow : BasicWindow {
        public Button backButton;

        [SerializeField] private Transform content;
        [SerializeField] private TMP_Text title;
        
        // private state
        private List<Transform> _tempTransforms = new List<Transform>();
        
        // strictly used for listnening
        private SubWindowManager _subWindowManager;

        //enums
    
        protected override void Awake() {
            base.Awake();
            if (backButton == null) {
                GameObject prefab = Resources.Load<GameObject>("UI/BackButton");
                GameObject instBackButton = Instantiate(prefab, transform);
                // Destroy(prefab);
                
                backButton = instBackButton.GetComponent<Button>();
            }

        }

        private void Initialize(SubWindowManager subWindowManager) {
            if (_subWindowManager != null) {
                _subWindowManager.onClose.RemoveListener(DeleteAllTempTransforms);
            }

            _subWindowManager = subWindowManager;
            _subWindowManager.onClose.AddListener(DeleteAllTempTransforms);
            
        }

    
        /// <summary>
        /// sets if the button can be interacted with, or if you can click return on it
        /// </summary>
        /// <param name="bFocus"></param>
        public override void SetState(EWindowMode newMode) {
            base.SetState(newMode);
            
            switch (newMode) {
                case  EWindowMode.Interact:
                    backButton.enabled = false;
                    backButton.gameObject.SetActive(false);
                    // gameObject.SetActive(true);
                    break;
                case EWindowMode.NonInteract:
                    backButton.enabled = false;
                    backButton.gameObject.SetActive(true);
                    // gameObject.SetActive(true);
                    break;
                case EWindowMode.Return:
                    backButton.enabled = true;
                    backButton.gameObject.SetActive(true);
                    // gameObject.SetActive(true);
                    break;
                case EWindowMode.Preview:
                    backButton.enabled = false;
                    backButton.gameObject.SetActive(false);
                    break;
                case EWindowMode.Disabled:
                    break;

            }
        }

        public void DeleteAllTempTransforms() {
            for (int i = 0; i < _tempTransforms.Count; i++) {
                Destroy(_tempTransforms[i].gameObject);
            }
            _tempTransforms.Clear();
            
            
        }

        public void SetTitle(string newTitle) {
            if (title != null) {
                title.text = newTitle;
            }
        }

        public Transform GetContent() { return content;}
        
        /// <summary>
        /// function for adding buttons, these does not do anything by themselves, add Info, ChangeWindowButton etc to
        /// add behaviour
        /// </summary>
        /// <param name="text"></param>
        public GameObject CreateButtonGeneric(string text, bool bTemporary = true) {
            GameObject buttonGameObject = Instantiate( Resources.Load<GameObject>("UI/GenericButton"), content);
            if (bTemporary) {
                buttonGameObject.tag = "temporary";
                _tempTransforms.Add(buttonGameObject.transform);
            }
            SubWindowInteractable interactable = buttonGameObject.GetComponent<SubWindowInteractable>();
            interactable.TMPText.text = text;     
    
            return buttonGameObject;
        }

        public IconButtonWrapper CreateIconButton(string text, bool bIndicator, OnClickBehaviour onClickBehaviour, bool bTemporary = true) {

            
            GameObject buttonGameObject = Instantiate( Resources.Load<GameObject>("UI/ButtonVariants/IconButton Variant"), content);
            
            if (bTemporary) {
                buttonGameObject.tag = "temporary";
                _tempTransforms.Add(buttonGameObject.transform);
            }
            SubWindowInteractable interactable = buttonGameObject.GetComponent<SubWindowInteractable>();
            interactable.TMPText.text = text;     
            
            
            // setting up IconWrapper
            //---------------------
            IconButtonWrapper iconButtonWrapper = buttonGameObject.GetComponent<IconButtonWrapper>();
            iconButtonWrapper.SetIndicator(bIndicator);
            iconButtonWrapper.mode = onClickBehaviour;
            
            
            return iconButtonWrapper;
        }
        
        
        public GameObject CreateCustomButton(GameObject customObject, bool bTemporary = true) {
            GameObject newButton = Instantiate(customObject, transform);
            if (bTemporary) {
                newButton.tag = "temporary";
                _tempTransforms.Add(newButton.transform);
            }
            newButton.GetComponent<RectTransform>().SetParent(content, false);
            // newButton.transform.parent = content;
            newButton.transform.localScale = Vector3.one;
            return newButton;
        }
        
        /*
        /// <summary>
        /// removes Subwindow interactable, add ChangeSubwindow or SubWindowInformation afterwards
        /// </summary>
        /// <param name="patientInfo"></param>
        /// <param name="buttonSubWindow"></param>
        /// <returns>Created button</returns>
        public GameObject CreatePatientButton(PatientInfo patientInfo,  bool bIndicator = true, bool bTemporary = false) {
            
            // adds custom button to Subwindow
            GameObject prefab = Resources.Load<GameObject>("UI/ButtonVariants/PatientButton Variant");
            GameObject objectt = CreateCustomButton(prefab, false);
            
            // if we have an interactable, destroy it
            if (objectt.TryGetComponent(out SubWindowInteractable interactable)) {
                Destroy(interactable);
            }
            
            // finds patient wrapper and button and adds listnerner 
            if (objectt.TryGetComponent(out PatientButtonWrapper patientButtonWrapper) && objectt.TryGetComponent(out Button button)) {
                button.onClick.AddListener(() => {
                    patientButtonWrapper.SetIndicator(false);
                });
                patientButtonWrapper.SetIndicator(bIndicator);
                patientButtonWrapper.SetButtonText(patientInfo.ToThumbnailText());
                // patientButtonWrapper.SetButtonText($"{patientInfo.name} | {patientInfo.assignedCar.name}");
            }
            
            // sets patient state / icon
            patientButtonWrapper.SetState(patientInfo.triageColor);

            if (bTemporary) {
                _tempTransforms.Add(objectt.transform);
            }

            return objectt;
        }
        */
        
#if UNITY_EDITOR
        [ContextMenu("Set Interact")]
        private void DEBUG_SetInteract()
        {
            SetState(EWindowMode.Interact);
        }
        
        [ContextMenu("Set Disable")]
        private void DEBUG_SetDisable()
        {
            SetState(EWindowMode.Disabled);
        }
#endif
        
    }
    
}