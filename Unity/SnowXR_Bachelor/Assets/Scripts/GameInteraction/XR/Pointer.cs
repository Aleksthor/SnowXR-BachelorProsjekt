using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System.Collections.Generic;
using BNG;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.EventSystems;
using UnityEngine.InputSystem;

[RequireComponent(typeof(Rigidbody))]
public class Pointer : MonoBehaviour { 
    [Header("Refrences")]
    [SerializeField] private HandController _controller;
    [SerializeField] private LayerMask rayCastLayerMask;
    [SerializeField] private InputActionReference pointActionReference;
    /// <summary>
    /// 0.5 = Line Goes Half Way. 1 = Line reaches end.
    /// </summary>
    [Tooltip("Example : 0.5 = Line Goes Half Way. 1 = Line reaches end.")]
    public float lineDistanceModifier = 0.8f;
    public LineRenderer lineRenderer;
    [SerializeField] private ControllerHand _controllerHand;
    
    
    // private state
    
    VRUISystem _uiSystem;
    PointerEventData _data;
    private static readonly float _pointTimeCutoff = 0.2f;
    private float _pointingTime = _pointTimeCutoff;
    private float _gripCutoff = 0.1f;
    
    //enums
    public enum EPointType {
        General = 0,
        Patient = 1,
        CivilianVehicle = 2,
        Ground = 3
        // more can be added 
    }
    public enum EControlMode {
        Grip = 0,
        Trigger = 1
        // more can be added 
    }
    
    [Header("Controls")]
    [SerializeField] private EControlMode controlMode = EControlMode.Grip;
    
    [Header("State")]
    public EPointType pointType = EPointType.General;
    public bool bInteractOnce = true;
    [SerializeField]
    private List<Pointable> pointablesInTrigger = new List<Pointable>();
    
    //config
    [HideInInspector]
    public CapsuleCollider capsuleCollider;
    
    //evnets
    public UnityEvent<Pointable> onInteract;
    public static UnityEvent<Pointable> staticOnInteract = new UnityEvent<Pointable>();

    private void Awake()
    {
        if (lineRenderer == null) {
            lineRenderer = GetComponentInChildren<LineRenderer>();
        }
        _uiSystem = VRUISystem.Instance;
    }

    private void Start() {
        // _controllerHand = _controller.grabber.HandSide;
        capsuleCollider = GetComponent<CapsuleCollider>();
    }
    

    private void Update() {
        // bail if we are pointing at UI
        if (_uiSystem != null && _uiSystem.ReleasingObject != null)
        {
            return;
        }
        
        // Hoover ground
        // ----------------------------------------
        
        // Raycast to ground
        if (Physics.Raycast(transform.position + transform.forward * 1f, transform.forward, out RaycastHit hit,
                100f, rayCastLayerMask, QueryTriggerInteraction.Ignore))
        {
            GameEvents.instance.onPlayerHooverGround.Invoke(hit, _controllerHand);
        }
        
        // Get pointables in trigger
        // ----------------------------------------
        Pointable pointable = ClosestPointableInTrigger();
        //resets all pointables in trigger
        foreach (var point in pointablesInTrigger) {
            point.bClosest = false;
        }
                
        //sets the closest one to closest
        if (pointable != null) {
            pointable.bClosest = true;
        }
        
        // Update point input
        bool bSucsessfulPoint = UpdatePointInput();
        if (bSucsessfulPoint) // What to do if we have a succsefful point
        {
            Logging.Log(Logging.LogGroup.DEBUG, "SUCCEFUL POINT!");
            // Shoots ray and invokes on point
            HandleRayCast();
            // if we have a pointable, handle and invoke pointable events, if not handle point event
            if (pointable != null) { 
                SuccessfulInteractPointable(pointable);
            }
            // PlayerInfo.instance.SetPointerType(EPointType.General);
        }
        
        // Cosmetic
        // ----------------------------------------
        if (pointable && pointable.bInTrigger == true && pointType == pointable.pointableType)
        {
            UpdatePointerLine();
        }
        else if (!pointable || pointable.bInTrigger == false || pointType != pointable.pointableType)
        {
            HidePointerLine();
        }
    }

    public void UpdatePointerLine()
    {
        _data = _uiSystem.EventData;
        
        // Update linerenderer
        if (lineRenderer) {
            lineRenderer.enabled = true;
            lineRenderer.useWorldSpace = false;
            lineRenderer.SetPosition(0, Vector3.zero);
            lineRenderer.SetPosition(1, new Vector3(0, 0, Vector3.Distance(transform.position, _data.pointerCurrentRaycast.worldPosition) * lineDistanceModifier));
        }
    }

    /// <summary>
    /// return closest pointable in trigger, if none found, return null
    /// </summary>
    /// <returns></returns>
    private Pointable ClosestPointableInTrigger() {
        if (pointablesInTrigger.Count == 0) {
            return null;
        }
        
        float closestDistance = Mathf.Infinity;
        int closestIndex = -1;

        for (int i = 0; i < pointablesInTrigger.Count; i++) {
            float distance = Vector3.Distance(pointablesInTrigger[i].transform.position, transform.position); 
            if ( distance < closestDistance) { // closer than last case
                if (pointType == pointablesInTrigger[i].pointableType) {
                    closestDistance = distance;
                    closestIndex = i;
                }
            }
        }

        if (closestIndex == -1) {
            return null;
        }
        else {
            return pointablesInTrigger[closestIndex];
        }
    }

    /// <summary>
    /// Updates and gets the point input
    /// </summary>
    /// <returns> true if we have succsessful point</returns>
    private bool UpdatePointInput() {
        // string report = "";
        if (controlMode == EControlMode.Grip) {
            float grapInput = _controller.PointAmount; 
            //Logging.Log("Grap input: " + _controller.PointAmount);
            
            if (grapInput > _gripCutoff) {
                _pointingTime += Time.deltaTime;
            }
            else {
                _pointingTime = 0f;
            }
            
            // report = $"pointAmount: {grapInput}, pointingTime: {_pointingTime}";
        }
        
        // report += $"succsessful point: {_pointingTime > 0f && _pointingTime < _pointTimeCutoff}";
        
        // Debug.Log(report);
        //Logging.Log(Logging.LogGroup.DEBUG, $"{_pointingTime} > 0 && {_pointingTime} < {_pointTimeCutoff}");
        if (_pointingTime > 0f && _pointingTime < _pointTimeCutoff) { // did we point?
            _pointingTime = _pointTimeCutoff;
            Logging.Log("Succesful input");
            return true;
        }
        return false;
    }

    private void SuccessfulInteractPointable(Pointable pointable) {
        if (pointType == pointable.pointableType) {
            if (bInteractOnce) {
                foreach (var point in pointablesInTrigger) {
                    point.bInTrigger = false;
                    point.bClosest = false;
                }
            }
        
            //events
            onInteract?.Invoke(pointable);
            staticOnInteract?.Invoke(pointable);
            pointable.onInteract?.Invoke(this);
        }
    }

    private void HandleRayCast() {
        if (Physics.Raycast(transform.position + transform.forward * 1f, transform.forward, out RaycastHit hit, 
                100f, rayCastLayerMask, QueryTriggerInteraction.Ignore))
        {
            
            GameEvents.instance.onPlayerPointGeneral.Invoke(hit, _controllerHand);
            // Debug.Log($"pointet at location {hit.point}");
        }
    }
    
    private void OnTriggerEnter(Collider other) {
        Pointable pointable;
        if (other.TryGetComponent<Pointable>(out pointable)) {
            if (pointType == pointable.pointableType) {
                pointablesInTrigger.Add(pointable);
                pointable.bInTrigger = true;
            }
            
        }
    }
     
    private void OnTriggerExit(Collider other) {
        Pointable pointable;
        if (other.TryGetComponent<Pointable>(out pointable)) {
            pointablesInTrigger.Remove(pointable);
            pointable.bClosest = false;
            pointable.bInTrigger = false;
        }
    }
    
    public virtual void HidePointerLine()
    {
        if (lineRenderer) 
            lineRenderer.enabled = false;
    }
}
// public class Pointer : MonoBehaviour {
//     private bool bActive = false;
//
//     [SerializeField] private LayerMask _layerMask;
//     
//
//     public bool RequestHit(out RaycastHit hit) {
//         if (Physics.Raycast(transform.position, transform.forward, out hit, 50, _layerMask)) {
//             return true;
//         }
//
//         return false;
//     }
// }