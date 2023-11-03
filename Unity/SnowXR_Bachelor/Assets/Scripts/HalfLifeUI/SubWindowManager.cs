using System;
using System.Collections;
using System.Collections.Generic;
using DG.Tweening;
using TMPro;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.UI;

namespace  HalfLifeUI {
    [Serializable]
    class SubWindowManagerConfig {
        [Header("Config")]
        public float animationTimeScale = 0.1f;
        public float animationTimeMove = 0.3f;
        public float mainSlotAlphaFalloff = 0.5f;
        [Space]
        public float backButtonRotation = 15f;
        public float backButtonSpacing = 14f;
        [Space] 
        public float infoSlotRotation = 15f;
        public float infoSlotSpacing = 14f;

        [Space] [Tooltip("Should this UI still open if other UI's are open?")]
        public bool bIgnoreOtherUIs = false;

        [Tooltip("Should open on start?")] 
        public bool bOpenOnStart = true;


    }
    public class SubWindowManager : MonoBehaviour {
        [Header("References")]
        public HalfLifeLayers layers;
        public SubWindow StartSubWindow;
        public InfoWindow _InfoWindow;
        public BasicWindow backButtonWindow;

        /*[Header("Config")]
        [SerializeField] private float animationTimeScale = 0.1f;
        [SerializeField] private float animationTimeMove = 0.3f;
        [SerializeField] private float mainSlotAlphaFalloff = 0.5f;
        [Space]
        [SerializeField] private float backButtonRotation = 15f;
        [SerializeField] private float backButtonSpacing = 14f;
        [Space] 
        [SerializeField] private float infoSlotRotation = 15f;
        [SerializeField] private float infoSlotSpacing = 14f;

        [Space] [Tooltip("Should this UI still open if other UI's are open?")]
        [SerializeField] private bool bIgnoreOtherUIs = false;
        */

        [SerializeField]
        private SubWindowManagerConfig _config;
        
        [Header("Events")] 
        public UnityEvent onOpen;
        public UnityEvent onClose;
        // public static bool bActiveUI = false;

        
        // private
        private SubWindow previewSlot;
        [SerializeField]
        private List<SubWindow> _mainSlots = new List<SubWindow>();

        // if exists, will be Hidden on UpdateUI
        private SubWindow _outGoingWindow = null;
        private SubWindow mainSlot {
            get {
                if (_mainSlots.Count == 0)
                    return null;
                return _mainSlots[0];
            }
        }

        // private SubWindow bufferSlot;

        private bool _bOutGoing = false;
        private bool _bOpen = true; 
        
        private List<GameObject> _tempGameObjects = new List<GameObject>();
        private List<SubWindow> _subWindows = new List<SubWindow>(); // used to call DestroyAllTempTransfroms on all owning subwindows
        
        // has a reference to all windows that has been opened while window is open, cleared on Close()

        private void Start() {
            // gets all subwindows and adds them to list (for deleting temp transforms, and sets states
            int count = transform.childCount;
            for (int i = 0; i < count; i++) {
                if (transform.GetChild(i).TryGetComponent(out SubWindow subWindow)) {
                    _subWindows.Add(subWindow);
                    subWindow.SetState(BasicWindow.EWindowMode.Disabled);
                }
            }

            if (_config.bOpenOnStart) 
                Open();
            else 
                Close();
        }

        /// <summary>
        /// Find the desiered corner of the mainSlot, in localspace to subWindowManager
        /// </summary>
        /// <param name="corner"></param>
        /// <param name="offset"></param>
        /// <returns></returns>
        private Vector3 FindCornerOfMainSlot(GridLayoutGroup.Corner corner, Vector2 offset) {
            float xAxis = 1f;
            float yAxis = 1f;
            switch (corner) {
                case GridLayoutGroup.Corner.LowerLeft:
                    xAxis *= -1f;
                    yAxis *= -1f;
                    break;
                case GridLayoutGroup.Corner.LowerRight:
                    // xAxis *= -1f;
                    yAxis *= -1f;
                    break;
                case GridLayoutGroup.Corner.UpperLeft:
                    xAxis *= -1f;
                    // yAxis *= -1f;
                    break;
                case GridLayoutGroup.Corner.UpperRight:
                    // xAxis *= -1f;
                    // yAxis *= -1f;
                    break;
            }
            
            Transform layerTrans = layers.GetSlotTransform(0);
            RectTransform mainSlotRectTrans = _mainSlots[0].GetComponent<RectTransform>();
            
            Vector3 newPos = transform.InverseTransformPoint(layerTrans.position);
            newPos += xAxis * transform.InverseTransformVector(layerTrans.right).normalized * mainSlotRectTrans.rect.width / 2f;
            newPos += xAxis * transform.InverseTransformVector(layerTrans.right).normalized * offset.x;
            newPos += yAxis * transform.InverseTransformVector(layerTrans.up).normalized * mainSlotRectTrans.rect.height / 2f;
            newPos += yAxis * transform.InverseTransformVector(layerTrans.up).normalized * offset.y;
            return newPos;
        }

        //metholds

        public SubWindow GetMainSubwindow(int index) {
            index = Mathf.Clamp(index, 0, _mainSlots.Count - 1);
            return _mainSlots[index];
        }

        private void UpdateBackButton() {
            backButtonWindow.SetState(BasicWindow.EWindowMode.Interact);
            // _backButtonCoroutine = StartCoroutine(MoveReturnButton(backButtonSpacing, backButtonWindow));
            backButtonWindow.transform.localPosition = FindCornerOfMainSlot(GridLayoutGroup.Corner.LowerRight, new Vector2(0, _config.backButtonSpacing));
            backButtonWindow.transform.rotation = layers.GetSlotTransform(0).rotation; // can add eventual rotation in future
            backButtonWindow.transform.Rotate(backButtonWindow.transform.right, _config.backButtonRotation, Space.World);
            backButtonWindow.GetComponent<RectTransform>().pivot = new Vector2(1, 1);
            
        }
        /// <summary>
        /// Other functions shoudl set the state of the UI, this only moves the UI and handles Interactable or not
        /// </summary>
        [ContextMenu("UpdateUI")]
        private void UpdateUI() {
            // Remove info text
            UnSetInfoText();
            
            // handle back button
            // --------------------------------------------
            UpdateBackButton();
            
            // main slots
            // --------------------------------------------
            for (var index = 0; index < _mainSlots.Count; index++) {
                var slot = _mainSlots[index];
                BasicWindow.EWindowMode mode =
                    index == 0 ? BasicWindow.EWindowMode.Interact : BasicWindow.EWindowMode.Return;
                Move(slot, layers.GetSlotTransform(index),  mode);
            }

            // outGoing window exists
            if (_outGoingWindow != null) {
                Move(_outGoingWindow, layers.BackgroundBehindMain.transform, BasicWindow.EWindowMode.Disabled);
                _outGoingWindow = null;
            }
        }
        
        /// <summary>
        /// Often top of call stack, used to change to a new window
        /// </summary>
        /// <param name="newActiveSubWindow"></param>
        public void SetActiveSubWindow(SubWindow newActiveSubWindow) {
            // state
            // if the subWindow we are going to already is in mainSlots, Return() to it
            for (int i = 1; i < _mainSlots.Count; i++) { // recursive returning
                if (_mainSlots[i] == newActiveSubWindow) {
                    for (int j = 0; j < i; j++) {
                        Return();
                        Debug.Log("Backwards");
                    }
                    return;
                }
            }

            // ensures subwindow has corrent parent
            newActiveSubWindow.GetComponent<RectTransform>().SetParent(transform, false);
            // subWindow.transform.parent = transform;
            
            // update logic
            if (_mainSlots.Count == 0 || newActiveSubWindow != mainSlot) {
                _bOutGoing = false;
                _mainSlots.Insert(0, newActiveSubWindow);
                mainSlot.SetState(BasicWindow.EWindowMode.Interact);
            }
            
            // add to subwindows
            
            // setup on return click
            newActiveSubWindow.backButton.onClick.RemoveAllListeners();
            newActiveSubWindow.backButton.onClick.AddListener(Return);
            
            UpdateUI();
        }
    
        public void Return() {
            // if we are at the first window, close
            if (_mainSlots.Count <= 1) {
                Close();
                return;
            }
            // Offset
            _outGoingWindow = mainSlot;
            for (int i = 0; i < _mainSlots.Count-1; i++) {
                _mainSlots[i] = _mainSlots[i + 1];
            }
            _mainSlots.RemoveAt(_mainSlots.Count-1);
            
            UpdateUI();
        }
    
        public void SetPreviewWindow(SubWindow subWindow) {
            subWindow.GetComponent<RectTransform>().SetParent(transform, false);
            
            UnSetPreviewWindow();
            UnSetInfoText();
            
            previewSlot = subWindow;
            subWindow.transform.DOKill();
            // LeanTween.cancel(subWindow.gameObject);
            subWindow.SetState(BasicWindow.EWindowMode.Preview);
            subWindow.gameObject.SetActive(true);
            subWindow.transform.position = layers.BackgroundLayer.transform.position;
            subWindow.transform.rotation = layers.BackgroundLayer.transform.rotation;
            
        }

        private void UnSetPreviewWindow(bool bDisable = true) {
            if (previewSlot != null) {
                if (bDisable) {
                    previewSlot.transform.DOKill();
                    // LeanTween.cancel(previewSlot.gameObject);
                    previewSlot.SetState(BasicWindow.EWindowMode.Disabled);
                }
                previewSlot = null;
                // Debug.Log("Preview unset");
            }
        }
        
        // Info layer
        public void SetInfoText(string info) {
            if (!_bOpen && !_config.bIgnoreOtherUIs)
                return;
            
            UnSetPreviewWindow();
            UnSetInfoText();
            
            _InfoWindow.GetComponent<RectTransform>().pivot = new Vector2(0, 1);

            _InfoWindow.transform.localPosition = FindCornerOfMainSlot(GridLayoutGroup.Corner.UpperRight, new Vector2(_config.infoSlotSpacing, 0f));
            _InfoWindow.transform.rotation = layers.GetSlotTransform(0).rotation;
            _InfoWindow.transform.Rotate(transform.up, _config.infoSlotRotation, Space.World);
            // _InfoWindow.transform.position = layers.InfoLayer.transform.position;
            
            _InfoWindow.SetState(BasicWindow.EWindowMode.Interact);
            _InfoWindow.Text = info;
        
        }
    
        private void UnSetInfoText() {
            DOTween.Kill(_InfoWindow.gameObject);
            // LeanTween.cancel(_InfoWindow.gameObject);
            _InfoWindow.SetState(BasicWindow.EWindowMode.Disabled);
        }

        // Confirms
        //------------------------------------------------
        private void SetupConfirmMode() {
            // disable back button
            backButtonWindow.SetState(BasicWindow.EWindowMode.NonInteract);
            
            // disables the main window
            // _mainSlots[0].SetState(BasicWindow.EWindowMode.NonInteract);
            for (int i = 0; i < _mainSlots.Count; i++)
            {
                _mainSlots[i].SetState(BasicWindow.EWindowMode.NonInteract);
            }
            layers.SetConfirmPositions(true);
            
            // experimental
            UpdateAllPositions();
        }
        public UnityAction CreateYesNoConfirm(string text, SubWindow returnWindow, string button1 = "YES", string button2 = "NO", UnityAction yesAction = null) {
            
            SetupConfirmMode();

            //yes no object
            GameObject resource = Resources.Load<GameObject>("UI/YesNo");
            GameObject yesNo = Instantiate(resource, transform);
            // Destroy(resource);
            yesNo.transform.position = layers.ConfirmLayer.transform.position;
            yesNo.transform.rotation = layers.ConfirmLayer.transform.rotation;
            yesNo.transform.localScale = Vector3.one * 0.1f;
            yesNo.GetComponent<BasicWindow>().SetState(BasicWindow.EWindowMode.Interact);
            
            
            _tempGameObjects.Add(yesNo);
     
            // setting texts
            TMP_Text[] texts = yesNo.GetComponentsInChildren<TMP_Text>();
            texts[0].text = text;
            texts[1].text = button1;
            texts[2].text = button2;
        
            UnityAction yesCall = () => {
                //disables the yesno object so we cant interact with it
                yesNo.GetComponent<CanvasGroup>().blocksRaycasts = false;
                
                // LeanTween.scale(yesNo, Vector3.zero, _config.animationTimeScale).setOnComplete(() => Destroy(yesNo));
                yesNo.transform.DOScale(Vector3.zero, _config.animationTimeScale).OnComplete(()=>Destroy(yesNo));
                Debug.Log("YesNoConfirm : YES");
                
                
                layers.SetConfirmPositions(false);
                SetActiveSubWindow(returnWindow);
                
                
                if (yesAction != null) 
                    yesAction();
            };

            UnityAction noCall = () => {
                //disables the yesno object so we cant interact with it
                yesNo.GetComponent<CanvasGroup>().blocksRaycasts = false;
            
                //scales down and destroys
                // LeanTween.scale(yesNo, Vector3.zero, _config.animationTimeScale).setOnComplete(() => Destroy(yesNo));
                yesNo.transform.DOScale(Vector3.zero, _config.animationTimeScale).OnComplete(()=>Destroy(yesNo));

                Debug.Log("YesNoConfirm : NO");
                
                layers.SetConfirmPositions(false);
                // UpdateAllPositions();
                SetActiveSubWindow(_mainSlots[0]);
            };
        
            // button events
            Button[] buttons = yesNo.GetComponentsInChildren<Button>();
            buttons[0].onClick.AddListener(yesCall); // yes
            buttons[1].onClick.AddListener(noCall); // no

            return yesCall;
        }
    
        /// <summary>
        /// Requires the object alleready exists, NOT a prefab
        /// </summary>
        /// <param name="confirmWindow"></param>
        /// <param name="returnWindow"></param>
        /// <returns>use this to close the window and return</returns>
        public  UnityAction CreateCustomConfirm(BasicWindow confirmObject, SubWindow returnWindow, bool bDestroyOnClose = true) {
            // disable back button
            SetupConfirmMode();
        
            // object handling
            // GameObject confirmObject = Instantiate(confirmWindow, transform);
            confirmObject.transform.position = layers.ConfirmLayer.transform.position;
            confirmObject.transform.rotation = layers.ConfirmLayer.transform.rotation;
            confirmObject.transform.localScale = Vector3.zero;
            confirmObject.SetState(BasicWindow.EWindowMode.Interact);
            // LeanTween.scale(confirmObject, Vector3.one, animationTimeScale);
            
            // tag
            if (bDestroyOnClose) {
                _tempGameObjects.Add(confirmObject.gameObject);
            }
        
            // canvas
            
            CanvasGroup group;
            if (!confirmObject.TryGetComponent(out group))
                group = confirmObject.gameObject.AddComponent<CanvasGroup>();
            group.blocksRaycasts = true;
            
            
            UnityAction CloseCall = () => {
                // disables interaction
                group.blocksRaycasts = false;

                confirmObject.SetState(BasicWindow.EWindowMode.Disabled);

                // return to return subwindow
                layers.SetConfirmPositions(false);
                // UpdateAllPositions();
                SetActiveSubWindow(returnWindow);
            };
        
            return CloseCall;
        }

        public UnityAction CreateInfoConfirm(string text, SubWindow returnSubWindow, bool bReturnButton = true, bool bDestroyOnClose = true) {// disable back button
            SetupConfirmMode();
            
            GameObject infoConfirmObject = Instantiate(Resources.Load<GameObject>("UI/InfoConfirm"), transform);
            BasicWindow subWindow = infoConfirmObject.GetComponent<BasicWindow>();
            infoConfirmObject.transform.position = layers.ConfirmLayer.transform.position;
            infoConfirmObject.transform.rotation = layers.ConfirmLayer.transform.rotation;
            infoConfirmObject.transform.localScale = Vector3.zero;
            
            subWindow.SetState(BasicWindow.EWindowMode.Interact);

            if (bDestroyOnClose) {
                _tempGameObjects.Add(infoConfirmObject);
            }
            
            UnityAction closeCall = () => {
                if (subWindow != null) {
                    subWindow.SetState(BasicWindow.EWindowMode.Disabled);
                    layers.SetConfirmPositions(false);
                    SetActiveSubWindow(returnSubWindow);
                }
            };
            
            // button
            Button button = infoConfirmObject.GetComponentInChildren<Button>();
            button.onClick.AddListener(closeCall);
            button.gameObject.SetActive(bReturnButton);
            
            // text
            infoConfirmObject.transform.GetChild(0).GetComponent<TMP_Text>().text = text;

            return closeCall;
        }

        public SubWindow CreateNewTempTextSubWindow(string inputText, bool bDestroyOnClose = true) {
            // loads from resources
            GameObject window = Resources.Load<GameObject>("TextSubWIndow");
            
            // create window
            SubWindow subWindow = CreateNewTempSubWindow(window, bDestroyOnClose);
            
            //set text
            subWindow.GetContent().GetComponentInChildren<TMP_Text>().text = inputText;
            
            return subWindow;
        }

        public SubWindow CreateNewTempSubWindow(GameObject subWindowPrefab, bool bDestroyOnClose = true) {
            GameObject SubWindow = Instantiate(subWindowPrefab, transform);
            if (bDestroyOnClose) {
                _tempGameObjects.Add(SubWindow);
            }
            
            return SubWindow.GetComponent<SubWindow>();
        }

        /// <summary>
        /// used for adding a temporary gameobject to an list, so they can be deleted on Close(),
        /// note: CreateXXX with temporary tag handles this themselves, only use this and seperatly created GrameObjects
        /// </summary>
        public void AddTempGameObject(GameObject gameObject_) {
            _tempGameObjects.Add(gameObject_);
        }

        // Moving methods
        //------------------------------------------------

        //moving functions
        /// <summary>
        /// while moving the BasicWindow is set to NonInteract
        /// </summary>
        /// <param name="subWindow"></param>
        /// <param name="trans"></param>
        /// <param name="windowMode"></param>
        /// <returns></returns>
        // private LTDescr Move(BasicWindow subWindow, Transform trans, BasicWindow.EWindowMode windowMode) {
        //     GameObject g = subWindow.gameObject;
        //     subWindow.SetState(BasicWindow.EWindowMode.NonInteract);
        //     return Move(g, trans).setOnComplete(()=>subWindow.SetState(windowMode));
        // }

        private Tween Move(BasicWindow subWindow, Transform trans, BasicWindow.EWindowMode windowMode) {
            GameObject g = subWindow.gameObject;
            subWindow.SetState(BasicWindow.EWindowMode.NonInteract);
            
            // return Move(g, trans).setOnComplete(()=>subWindow.SetState(windowMode));
            return Move(g, trans).OnComplete(()=>subWindow.SetState(windowMode));
        }

        private Tween Move(GameObject window, Transform trans) {
            
            if (!window.activeInHierarchy)
                window.SetActive(true);
            window.transform.DOKill();
            // LeanTween.moveLocal(window, transform.InverseTransformPoint(trans.position), _config.animationTimeMove).setEaseOutCubic();
            Tween a = window.transform.DOLocalMove(GetLocalPosition(trans), _config.animationTimeMove)
                
                .SetEase(Ease.OutCubic);
            // return LeanTween.rotate(window, trans.eulerAngles, animationTimeMove).setEaseOutCubic();
            return window.transform.DOLocalRotate(GetLocalRot(transform, trans.forward, trans.up).eulerAngles, _config.animationTimeMove)
                .SetEase(Ease.OutCubic);
            // return LeanTween.rotateLocal(window, GetLocalRot(transform, trans.forward, trans.up).eulerAngles, _config.animationTimeMove).setEaseOutCubic();
        }
        
        
        // private LTDescr Move(GameObject window, Transform trans) {
        //     if (!window.activeInHierarchy)
        //         window.SetActive(true);
        //         
        //     LeanTween.cancel(window);
        //     // LeanTween.move(window, trans.position, animationTimeMove).setEaseOutCubic();
        //     LeanTween.moveLocal(window, transform.InverseTransformPoint(trans.position), _config.animationTimeMove).setEaseOutCubic();
        //     // return LeanTween.rotate(window, trans.eulerAngles, animationTimeMove).setEaseOutCubic();
        //     return LeanTween.rotateLocal(window, GetLocalRot(transform, trans.forward, trans.up).eulerAngles, _config.animationTimeMove).setEaseOutCubic();
        // }
        //
        private Quaternion GetLocalRot(Transform parent, Vector3 forward, Vector3 up) {
            forward = parent.transform.InverseTransformDirection(forward);
            up = parent.transform.InverseTransformDirection(up);
            Quaternion quat = Quaternion.LookRotation(forward, up);
            return quat;
        }
        
        
        
        private void UpdateAllPositions() {
            // Move(_InfoWindow.gameObject, layers.InfoLayer.transform);
            // if (previewSlot != null) 
            //     Move(previewSlot.gameObject, layers.BackgroundLayer.transform);
            
            // main slots
            for (int i = 0; i < _mainSlots.Count; i++) {
                float visibility = Mathf.Clamp(1f - i * _config.mainSlotAlphaFalloff, 0f, 1f);
                _mainSlots[i].SetVisibility(visibility);
                BasicWindow.EWindowMode mode = BasicWindow.EWindowMode.NonInteract;
                if (visibility < 0.05f) {
                    // Debug.Log("Disabled");
                    mode = BasicWindow.EWindowMode.Disabled;
                }
            
                Move(_mainSlots[i].gameObject, layers.GetSlotTransform(i));
            }
        }

        /// <summary>
        /// Clears all mainSlots and removes all other UI, completly Closes UI
        /// </summary>
        [ContextMenu("Close")]
        public void Close() {
            if (!_bOpen && !_config.bIgnoreOtherUIs)
                return;

            for (int i = 0; i < _mainSlots.Count; i++) {
                _mainSlots[i].transform.DOKill();
                // LeanTween.cancel(_mainSlots[i].gameObject);
                _mainSlots[i].SetState(BasicWindow.EWindowMode.Disabled);
                _mainSlots[i].backButton.onClick.RemoveListener(Return);
            }
            
            DestroyAllTempWindows();
            _mainSlots.Clear();

            UnSetPreviewWindow(true);
            UnSetInfoText();
            backButtonWindow.SetState(BasicWindow.EWindowMode.Disabled);

            
            _bOpen = false;
            // if (!_config.bIgnoreOtherUIs)
            //     bActiveUI = false;
            
            // evnets
            onClose?.Invoke();
        }
        

        /// <summary>
        /// function for opening the UI
        /// </summary>
        /// <returns> true if succsefully opened, false if not opened</returns>
        [ContextMenu("Open")]
        public void Open() {
            // if (bActiveUI == true && !_config.bIgnoreOtherUIs)
            //     return false;
            _mainSlots.Clear();
            SetActiveSubWindow(StartSubWindow);
            
            backButtonWindow.SetState(BasicWindow.EWindowMode.Interact);
            
            _bOpen = true;
            // if (!_config.bIgnoreOtherUIs) 
            //     bActiveUI = true;

            // events
            onOpen?.Invoke();
            
            // return true;
        }

        [ContextMenu("ToggleOpenClose")]
        public void ToggleOpenClose() {
            if (_bOpen)
                Close();
            else 
                Open();
        }

        /// <summary>
        /// removes all temmp windows and replaces UI
        /// </summary>
        public void RefreshUI() {
            // layers.SetConfirmPositions(false);
            DestroyAllTempWindows();
            UpdateUI();
        }
    
        public void DestroyAllTempWindows() {
            //deletes all temp transforms
            // this consist of temp subwindows and Confirms
            for (int i = 0; i < _tempGameObjects.Count; i++) {
                
                Destroy(_tempGameObjects[i].gameObject);
            }
            _tempGameObjects.Clear();

            
            foreach (var subWindow in _subWindows) {
                subWindow.DeleteAllTempTransforms();
            }
            
            //cant use this as it does not search through disabled objects
            /*Transform[] windows = transform.GetComponentsInChildren<Transform>();
            for (int i = 0; i < windows.Length; i++) {
                if (windows[i] != null && windows[i].tag == "temporary") {
                    Destroy(windows[i].gameObject);
                }
            }*/
        }
    
        private IEnumerator DeleteTempWindow(float time, GameObject window) {
            yield return new WaitForSeconds(time);
            Destroy(window);
        }

        // private IEnumerator MoveReturnButton(float duration, BasicWindow backWindow) {
        //     RectTransform backRect = backWindow.GetComponent<RectTransform>();
        //     float time = 0f;
        //     while (time <= duration) {
        //         backRect.localPosition = FindCornerOfMainSlot(backButtonSpacing);
        //
        //         yield return new WaitForEndOfFrame();
        //         time += Time.deltaTime;
        //     }
        //     
        // }
        
        public Vector3 GetLocalPosition(Transform trans) {
            return transform.InverseTransformPoint(trans.position);
        }
        
        public Vector3 GetLocalPosition(GameObject game) {
            return transform.InverseTransformPoint(game.transform.position);
        }
#if UNITY_EDITOR
        /*
        [ContextMenu("Debug static UI Open")]
        private void DebugUIOpen() {
            if (bActiveUI) {
                Debug.Log("UI is active");
            }
            else 
                Debug.Log("UI is Inactive");
        }
        */
        
        [ContextMenu("Debug test confirm")]
        private void DebugTestYesNoConfirm() {
            CreateYesNoConfirm("Sure?", mainSlot, "Yeah", "Nah");
            // EditorApplication.isPaused = true;
        }
#endif
    
    }
}