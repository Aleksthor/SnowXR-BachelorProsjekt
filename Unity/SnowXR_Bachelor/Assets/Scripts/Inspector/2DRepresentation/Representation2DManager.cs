using System;
using System.Collections.Generic;
using System.Linq;
using KBCore.Refs;
using SnowXR.Represent2D;
using TMPro;
using UnityEngine;
using UnityEngine.AddressableAssets;
using UnityEngine.EventSystems;
using UnityEngine.UI;

[DefaultExecutionOrder(-101)]
public class Representation2DManager : MonoBehaviour {
    // Getters
    
    public static bool ActiveCamera => instance._camera.enabled;
    
    // Singleton
    public static Representation2DManager instance { set; get; } = null;
    
    Dictionary<int, Rep2DContainer> _representationsDict = new Dictionary<int, Rep2DContainer>();
    
    
    /// <summary>
    /// Arg 1 = Represent2D, Arg 2 = (return type) bool
    /// return true if the click was succsessful, and return false if the click was not succsessful
    /// </summary>
    public Func<Represent2D, bool> onNext2DRepClick = null;
    public delegate void OnNextClick(Vector3 position);

    // public Func<Vector3, bool> onNextClick2 = null;
    // public OnNextClick onNextClick = null;
    // public Stack<Func<Vector3, bool>> onNextClick = new Stack<Func<Vector3, bool>>();
    public OnNextClickHandler<Vector3> onNextClick = new OnNextClickHandler<Vector3>();
    // public Func<Vector3, bool> onNextClick = null;
    
    // References
    [SerializeField] private RectTransform _content;
    
    [SerializeField] private Image _background;

    [field: SerializeField] public MapMoveController _mapMoveController { get; private set; }

    // UI cosmetic Pointer
    [SerializeField] private Image pointImage;
    
    [field: SerializeField]
    public Canvas _canvas { get; private set; } = null;

    [SerializeField] 
    private Camera _camera;

    [SerializeField] 
    private RectTransform _canvasRectTransform;

    [SerializeField] private TMP_Text _helperText;

    
    private Transform currentSelected;

    private float changedTextTimeStamp = 0;
    
    // statics
    public static readonly string k_invalidRepsentKey = "Invalid";
    
    class Rep2DContainer {
        public Rep2DContainer(RectTransform rectTransform, int priority, Represent2D owner, Image dimmer, string representKey) {
            this.rectTransform = rectTransform;
            this.priority = priority;
            this.owner = owner;
            this.dimmer = dimmer;
            this.representKey = representKey;
        }
        public RectTransform rectTransform;
        public Represent2D owner;
        public int priority;
        public Image dimmer;
        public string representKey;

        public void SetDim(bool bDim)
        {
            float alpha = bDim ? 0.5f : 0f;

            var color = dimmer.color;
            color.a = alpha;
            dimmer.color = color;
        }
    }
    
    private void Awake() {
        if (instance == null) 
            instance = this;
        else {
            Destroy(this);
            return;
        } 
    }

    private void Start() {
        SnapBackGround();
    }

    private void Update()
    {
        // TODO make a more complete removal for Representation2D when the player is not a desktop player
        // This is a typicle IOC (Inversion of control situation, where another system should handle the activity)
        // AbstractPlayer abstractPlayer = AbstractPlayerManager.GetActivePlayer();
        // if (abstractPlayer != null && !abstractPlayer.IsDesktopPlayer())
        // {
        //     _camera.enabled = false;
        //     _camera.gameObject.SetActive(false);
        //     return;
        // }
        
        // Clear the helper text after 2.5 seconds
        if (changedTextTimeStamp + 2.5 < Time.time)
        {
            SetHelperText("", false);
        }

        // Make sure the correct camera is set (VRIF tries to overwrite this at start of game)
        _canvas.worldCamera = _camera;
        
        UpdateAllRepresentations();
        
        // OnNextClick, this if any click ANYWHERE, does not need to be a Represent2D
        if (onNextClick.Count > 0 && EventSystem.current.currentInputModule.input.GetMouseButtonDown(0))
        {
            HandleOnNextClick();
        }

        // Cancel actions
        if (Input.GetKeyDown(KeyCode.Escape))
        {
            ResetListeners();
            onNextClick.Clear();
        }

        // Update pointer
        UpdatePointUI();
    }

    private void SortRepresentationOrder()
    {
        // Sort list in regard to priority
        var list = _representationsDict.ToList();
        var newList = list
            .Select(b => b.Value)
            .OrderBy(b => b.priority);
        
        int i = 0;
        foreach (var item in newList) {
            item.rectTransform.SetSiblingIndex(i);
            i++;
        }
        
        
    }

    // public static void AddRepresentation(int key, Represent2D owner, Sprite sprite, Color color, FactionType factionType, RepresentType representType) {
    //     AddRepresentation(key, owner, sprite, color, representType.ToPriority());
    // }
    public static void AddCustomRepresentation(int key, Represent2D owner, AssetReferenceGameObject assetReference, int priority, string representKey) {
        if (instance == null) {
            Debug.LogWarning("There is no Representation2DManager instance in scene, make sure one is present!");
            return;
        }
        
        RectTransform rectTransform = assetReference.InstantiateAsync()
            .WaitForCompletion()
            .GetComponent<RectTransform>();
        rectTransform.SetParent(instance._content, true);
        
        Button button = rectTransform.GetComponentInChildren<Button>(); 
        // Image dimmerImage = rectTransform.GetChild(0).GetComponent<Image>();
        Image dimmerImage = rectTransform.Find("Dimmer").GetComponent<Image>();
        
        Rep2DContainer container = new Rep2DContainer(rectTransform, priority, owner, dimmerImage, representKey);
        
        button.onClick.AddListener(()=> OnClick2DRepresent(container));
        instance._representationsDict.Add(key, container);
        
        instance.SortRepresentationOrder();
    }
    public static void AddGenericRepresentation(int key, Represent2D owner, Sprite sprite, Color color, int priority, string representKey) {
        if (instance == null)
        {
            Debug.LogWarning("There is no Representation2DManager instance in scene, make sure one is present!");
            return;
        }
        RectTransform rectTransform = Addressables.InstantiateAsync("2DRepresentation")
            .WaitForCompletion()
            .GetComponent<RectTransform>();
        
        rectTransform.SetParent(instance._content, true);
        Image image = rectTransform.GetComponent<Image>();
        image.sprite = sprite;
        image.color = color;
        
        // TODO refine, ugly but works
        Button button = rectTransform.GetComponentInChildren<Button>(); 
        // Image dimmerImage = rectTransform.GetChild(0).GetComponent<Image>();
        Image dimmerImage = rectTransform.Find("Dimmer").GetComponent<Image>();

        Rep2DContainer container = new Rep2DContainer(rectTransform, priority, owner, dimmerImage, representKey);
        
        button.onClick.AddListener(()=> OnClick2DRepresent(container));
        instance._representationsDict.Add(key, container);
        
        instance.SortRepresentationOrder();
    }

    public static void RemoveRepresentation(int key) {
        if (instance == null)
        {
            Debug.LogWarning("There is no Representation2DManager instance in scene, make sure one is present!");
            return;
        }
        Destroy(instance._representationsDict[key].rectTransform.gameObject);
        instance._representationsDict.Remove(key);
    }
    
    private void UpdateAllRepresentations() {
        foreach (var container in _representationsDict)
        {
            Represent2D owner = container.Value.owner;
            
            // Handle Smaller content when zooming
            // Todo make dynamic
            float zoomModifier = _mapMoveController._camera.orthographicSize / _mapMoveController.MaxOrthoSize;
            
            UpdateRepresentation(owner.GetInstanceID(), owner.transform.position, owner.transform.rotation, owner.Size * zoomModifier);
        }
    }
    
    public static void UpdateRepresentation(int key, Vector3 position, Quaternion rotation, Vector2 size) {
        // Getting a forward vector from quaternion
        Vector3 forward = rotation * Vector3.forward;
        forward.y = 0;
        forward.Normalize();
        
        // Calculating position with priority
        Rep2DContainer container = instance._representationsDict[key];
        RectTransform rectTransform = container.rectTransform;
        Vector3 newPos = position;
        newPos.y = (float)container.priority /5f + 10;// 
        
        // calculate if highlight
        
        
        // Setting values
        rectTransform.SetPositionAndRotation(newPos, Quaternion.LookRotation(-Vector3.up, forward));
        rectTransform.localScale = new Vector3(size.x, size.x, 1f);
        // rectTransform.SetSizeWithCurrentAnchors(RectTransform.Axis.Horizontal, size.x);
        // rectTransform.SetSizeWithCurrentAnchors(RectTransform.Axis.Vertical, size.y);
    }
    
    // Helper Text
    // --------------------------------------------
    
    /// <summary>
    /// Sets the helper text to the given string
    /// Text will be emptied after confirmed or cancelled action
    /// </summary>
    /// <param name="text"></param>
    public static void SetHelperText(string text, bool updateTimeStamp = true) {
        instance._helperText.text = text;
        if (updateTimeStamp)
        {
            instance.changedTextTimeStamp = Time.time;
        }
    }
    
    public static void SetCameraActive(bool active) {
        instance._camera.enabled = active;
    }
    
    public static Transform GetTransform(int key) {
        return instance._representationsDict[key].rectTransform;
    }
    
    public void UpdateCanvasSize()
    {
        var rectTransform = _canvasRectTransform;
        Debug.Log($"width, size: {Screen.width},{Screen.height}");
        float aspectRatio = (float)Screen.width / (float)Screen.height;
        float halfSize = _camera.orthographicSize;
        rectTransform.SetSizeWithCurrentAnchors(RectTransform.Axis.Horizontal, _camera.orthographicSize * 2f * (aspectRatio));
        rectTransform.SetSizeWithCurrentAnchors(RectTransform.Axis.Vertical, _camera.orthographicSize * 2f);
    }
    
    private void UpdatePointUI()
    {
        if (onNext2DRepClick == null)
        {
            pointImage.gameObject.SetActive(false);
            return;
        }

        pointImage.gameObject.SetActive(true);
        Vector3 mousePos = Input.mousePosition;
        Vector3 worldMousePos = _camera.ScreenToWorldPoint(mousePos);
        worldMousePos.RemoveY();

        // Set transform of pointer to clicked location
        pointImage.transform.position = currentSelected.position;
        pointImage.transform.rotation =
            Quaternion.LookRotation(Vector3.down, (worldMousePos - currentSelected.position).RemoveY());
        pointImage.GetComponent<RectTransform>()
            .SetSizeWithCurrentAnchors(RectTransform.Axis.Vertical, 6f + MathF.Sin(3f * Time.time));
    }
    /// <summary>
    /// Handles the logic when a 2DRepresent is clicked
    /// </summary>
    /// <param name="owner"></param>
    private static void HandleClickedRepresent2D(Represent2D owner)
    {
        owner.onClickRepresentation?.Invoke();
        instance.currentSelected = owner.transform;
    }
    
    /// <summary>
    /// Handles the logic when a 2DRepresent is clicked, and a listener is listening for the click
    /// </summary>
    /// <param name="owner"></param>
    private static void ResetListeners()
    {
        instance.onNext2DRepClick  = null;
        instance.currentSelected   = null;
        ResetAllDim();
    }

    private static void ResetAllDim()
    {
        foreach (var container in instance._representationsDict)
        {
            container.Value.SetDim(false);
        }
    }
    public static void Dim(string representKey)
    {
        if (instance == null)
            return;
        
        var validQuery = instance._representationsDict
            .Select(x => x.Value)
            .Where(x => x.representKey == representKey);
        
        var invalidQuery = instance._representationsDict
            .Select(x => x.Value)
            .Where(x => x.representKey != representKey);

        foreach (var q in validQuery)
            q.SetDim(false);
        
        foreach (var q in invalidQuery)
            q.SetDim(true);
    }
    
    private void HandleOnNextClick()
    {
        Vector2 mouseScreenPosition = EventSystem.current.currentInputModule.input.mousePosition;
        Vector3 mouseWorldPosition = _camera.ScreenToWorldPoint(mouseScreenPosition);
        mouseWorldPosition.RemoveY();

        bool success = onNextClick.Peek()(mouseWorldPosition);
        if (success)
        {
            onNextClick.Pop();
            onNextClick.onSuccessfulClick?.Invoke(mouseWorldPosition, onNextClick);
            // onNextClick = new Stack<Func<Vector3, bool>>();
        }
    }
    
    
    // Event handles
    // ----------------------------------------
    
    /// <summary>
    /// Called when a 2DRepresent is clicked, this is the CORE of the 2DRepresent system 
    /// </summary>
    /// <param name="owner"></param>
    private static void OnClick2DRepresent(Rep2DContainer container) {
        // If no one is listening for next 2DRep click, invoke the functionality on the 2DRepresent clicked
        if (instance.onNext2DRepClick == null) {
            HandleClickedRepresent2D(container.owner); 
            return;
        }
        
        // If someone is listening for next 2DRep click, invoke the functionality on the listener, and reset if listener is satifyed
        bool? performed = instance.onNext2DRepClick?.Invoke(container.owner);
        if (performed != null && (bool)performed) {
            ResetListeners();
        }
    }
#if UNITY_EDITOR
    // private void OnValidate() {
    //     this.ValidateRefs();
    // }

#endif
    [ContextMenu("Snap")]
    private void SnapBackGround() {
        SnapshotCamera snapshotCamera = GetComponentInChildren<SnapshotCamera>();
        
        // set cam to right settings
        int originalMask = snapshotCamera.cam.cullingMask;
        snapshotCamera.cam.cullingMask = 1 << LayerMask.NameToLayer("Default");
        
        // take picture and save to memory
        Texture2D texture = snapshotCamera.TakeSnapshot(Color.black, 1920, 1080);
        _background.sprite = Sprite.Create(texture, new Rect(0, 0, texture.width, texture.height),
            Vector2.one * 0.5f);
        
        // Set cam back to original settings
        snapshotCamera.cam.cullingMask = originalMask;
    }
}