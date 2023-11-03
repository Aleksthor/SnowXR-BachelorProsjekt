using System;
using System.Collections.Generic;
using BNG;
using KBCore.Refs;
using SnowXR;
using Unity.Mathematics;
using UnityEditor;
using UnityEngine;
using UnityEngine.AI;
using UnityEngine.Events;
using UnityEngine.Serialization;
using UnityEngine.Splines;

[SelectionBase]
[RequireComponent(typeof(NavMeshAgent), typeof(NavMeshObstacle))]
public class CarController : MonoBehaviour
{
    [Header("References")]
    [SerializeField] private List<SnowXR.Marker> markers;
    [SerializeField] private Material markerMaterial;
    
    [SerializeField, Child(Flag.Editable)]
    private Transform rotator;
    
    [FormerlySerializedAs("navMeshObstacle")] [SerializeField, Self()]
    private NavMeshObstacle _navMeshObstacle;
    
    public SplineContainer splineComputer;
    // public SplineComputer splineComputer;
    [Tooltip("Leave null if not in use")]
    [SerializeField] private Outline outline;

    [SerializeField] private float outlineWidth = 5f;
    
    public DrivingConfig drivingConfig;

    [Header("Cosmetic Car Roation Config")]
    [SerializeField] private float forwardMod = 1f;
    [SerializeField] private float upMod = 1f;
    [SerializeField] private float rotatorLerpSpeed = 2f;


    [Header("Phantom Vehicle Config Config")] 
    [SerializeField] private float phantomYOffsetPosition = 0f;
    [SerializeField] private float phantomYOffsetRotation = 0f;

    [Header("State")]
    [SerializeField] private bool _bListnening = false;

    [SerializeField] private Vector3 targetPosition;

    [SerializeField] private CarState currentCarState = CarState.Idle;
    
    [Header("Debug")]
    [SerializeField] private Transform target;
    
    // private references
    [SerializeField, Self()]
    private NavMeshAgent _navMeshAgent;

    // private state
    private Vector3 _forwardLast = Vector3.zero;
    private bool bReachedDestination = false;
    private NavMeshHit _navMeshHit;
    private float _percent = 0f;
    private SnowXR.Direction _splineDirection = SnowXR.Direction.Forward;
    private float splineDirectionFloat => _splineDirection == SnowXR.Direction.Forward ? 1f : -1f;

    // evnets
    public UnityEvent onReacedDestination = new UnityEvent();
    
    // constants
    private float k_disconnectFromRroadTolerance = 4f;
    
    #region UnityEventMethods

    private void Awake()
    {
        
        if (outline != null)
        {
            outline.OutlineWidth = 0f;
            outline.enabled = false;
        }
    }
    private void Update()
    {
        AIUpdate();
        float angularVel = GetAngularVelocity();
        RotateCosmeticCar(angularVel);
    }
    private void LateUpdate()
    {
        // updates last forward

        _forwardLast = transform.forward;
    }
#if UNITY_EDITOR
    private void OnDrawGizmosSelected()
    {
        Gizmos.color = Color.red;
        if (_navMeshHit.hit)
        {
            Gizmos.DrawSphere(_navMeshHit.position, 1f);
            Gizmos.DrawRay(_navMeshHit.position, _navMeshHit.normal * 3f);
            
            Gizmos.color = Color.green;
            Gizmos.DrawWireCube(splineComputer.EvaluatePosition((float)_percent), Vector3.one);
        }

        // Draw percent cube
        if (currentCarState == CarState.ToRoad) {
            Gizmos.color = Color.red;
            Gizmos.DrawCube(splineComputer.Spline.EvaluatePosition(_percent), Vector3.one);
        }
        
        // Draw Line to target position
        if (currentCarState == CarState.ToRoad) {
            float3 toTargetDirection = math.normalize((float3)targetPosition - (float3)transform.position);
            float3 midSection = (float3)transform.position + toTargetDirection * drivingConfig.dissconectFromRoadCutoff;
            
            Handles.color = Color.green;
            Handles.DrawLine(transform.position, midSection, 10f);
            Handles.color = Color.red;
            Handles.DrawLine(midSection, targetPosition, 10f);
        }
        else if (currentCarState == CarState.ToTarget) {
            Handles.color = Color.green;
            Handles.DrawLine(transform.position, targetPosition, 10f);
            
            
        }
        
        // Reached target radius
        Gizmos.DrawWireSphere(transform.position, drivingConfig.reachedTargetRadius);
        
        // Target position
        Gizmos.color = Color.cyan;
        Gizmos.DrawCube(targetPosition, Vector3.one);
    }
    private void OnValidate() {
        this.ValidateRefs();
        _navMeshAgent.speed = 0;
        _navMeshAgent.angularSpeed = 0;
    }
#endif
    #endregion
    
    void AIUpdate()
    {
        // if (currentCarState != CarState.Idle) // check what mode we shoudl be in
        // {
        //     if (!navMeshObstacle.enabled)
        //     {
        //         _navMeshAgent.enabled = true;
        //     }
        //     
        //     navMeshObstacle.enabled = false;
        //     
        //     float distanceToTarget = Vector3.Distance(targetPosition, transform.position);
        //     if (distanceToTarget < 3f)
        //     {
        //         SetState(CarState.Idle);
        //         //events
        //         onReacedDestination.Invoke();
        //
        //     }
        //     else if (distanceToTarget < drivingConfig.dissconectFromRoadCutoff + k_disconnectFromRroadTolerance)
        //     {
        //         SetState(CarState.ToTarget);       
        //     }
        // }
        // else
        // {
        //     navMeshObstacle.enabled = true;
        //     _navMeshAgent.enabled = false;
        // }

        
        switch (currentCarState)
        {
            case CarState.Idle:
                
                break;
            case CarState.ToRoad:
                ToRoad();
                break;
            case CarState.OnRoad:
                break;
            case CarState.ToTarget:
                ToTarget();
                break;
        }
        
        
        // AiTimeLastFrame = Time.time;
    }
    
    float GetDistanceSpeed()
    {
        float distance = Vector3.Distance(targetPosition, transform.position);
        distance /= 10f;
        float targetSpeed = Mathf.Clamp(distance, 0f, 1f) * drivingConfig.maxSpeed;
        return targetSpeed;
        // if (carSpeedLastFrame < targetSpeed) // are accelerating?
        // {
        //     return carSpeedLastFrame + drivingConfig.accelerateSpeed * Time.deltaTime;
        // }
        //
        // return targetSpeed;
    }

    // driving logic, not cosmetic
    private void Drive(Vector3 direction)
    {
        direction.y = 0f;
        direction.Normalize();
        
        float targetTurn = Vector3.Angle(transform.forward, direction);
        targetTurn /= 45f; // max turn
        targetTurn = Mathf.Clamp(targetTurn, 0f, 1f);
        targetTurn = Mathf.Lerp(targetTurn, targetTurn, Time.deltaTime * 1f);
        Vector3 newForward = Vector3.RotateTowards(transform.forward, direction,  targetTurn * drivingConfig.maxTurnSpeed * Mathf.Deg2Rad * Time.deltaTime, 0);
        transform.forward = newForward;

        float carSpeed = GetDistanceSpeed() * (1f - targetTurn * drivingConfig.turnToSpeedRatio);
        // Debug.Log($"{carSpeedd * newForward}");
        _navMeshAgent.Move(Time.deltaTime * carSpeed * newForward);
    }

    private void ToRoad()
    {
        // gets the direction to our "carrot" location (like a horse following a carrot on a stick)
        float3 tangent;

        
        // find road position
        float shortestDistance = math.INFINITY;
        float3 nearestPoint = new float3(math.INFINITY, math.INFINITY, math.INFINITY);
        foreach (var spline in splineComputer.Splines) {
            SplineUtility.GetNearestPoint(spline, transform.position, out float3 nearest, out float t);
            if (math.distancesq(nearestPoint, transform.position) > math.distancesq(nearest, transform.position)) {
                nearestPoint = nearest;
            }
        }
        shortestDistance = math.distance(nearestPoint, transform.position);

        tangent = math.normalize(nearestPoint - (float3)transform.position);
        
        
        // SplineSample splineSample = splineComputer.Evaluate(_percent);
        // Vector3 roadPos = splineSample.position + splineSample.right * ((float)_splineDirection) * 1.5f;
        // Vector3 targetDirection = (roadPos - transform.position).normalized;
        
        
        
        Vector3 lookahead = tangent * drivingConfig.lookAhead;
        Debug.DrawRay(transform.position, lookahead, Color.yellow);
        
        // simple object avoidance
        if (_navMeshAgent.Raycast(transform.position + lookahead, out NavMeshHit hit))
        {
            // Debug.Log($"Obsitacle found ");
            // Vector3 projectVector = Vector3.Cross(Vector3.up, hit.normal);
            // targetDirection = Vector3.Project(transform.forward, projectVector);
            
            _navMeshHit = hit;
            
            //TODO TEMP
            NavMeshPath path = new NavMeshPath();
            float splineLength = splineComputer.Spline.GetLength();
            const float k_step = 0.005f;
            
            // Vector3 pathTarget = splineComputer.EvaluatePosition(splineComputer.Travel(_percent, 4f, _splineDirection));
            Vector3 pathTarget = splineComputer.EvaluatePosition((float)_percent + splineLength/k_step);
            _navMeshAgent.CalculatePath(pathTarget, path);
            for (int i = 0; i < path.corners.Length - 1; i++)
            {
                Debug.DrawLine(path.corners[i], path.corners[i+1], Color.magenta);
            }

            if (path.corners.Length >= 3)
            {
                Vector3 ab = path.corners[1] - path.corners[0];
                Vector3 cb = path.corners[1] - path.corners[2];
                Vector3 normal = ab.normalized + cb.normalized;
                normal = normal.normalized * 2f;
                Vector3 pos = path.corners[1] + normal;
                tangent = (pos - transform.position);
                Debug.DrawRay(transform.position, tangent, Color.red);
            }
            else if (path.corners.Length == 2)
            {
                tangent = (path.corners[1] - path.corners[0]).normalized;
            }
            
            
            
        }
        // moving _percent if we get ahead of it
        if (math.distancesq(transform.position,  splineComputer.Spline.EvaluatePosition(_percent)) < 5*5) {
            
            StepPercent();
            Debug.Log("Stepping percent");
        }
        Debug.Log($"Distance {math.distancesq(transform.position,  splineComputer.Spline.EvaluatePosition(_percent))}");


        splineComputer.Spline.Evaluate(_percent, out var position, out tangent, out var up);
        float3 posOnRoad = position + math.normalize(math.cross(up, tangent))* splineDirectionFloat * 3f;
        
        float3 targetDirection = math.normalize(posOnRoad - (float3)transform.position);
        
        
        Drive(targetDirection);

        if (math.distance(transform.position, targetPosition) < drivingConfig.dissconectFromRoadCutoff)
        {
            SetState(CarState.ToTarget);
        }
    }

    private void StepPercent()
    {
        float direction = _splineDirection == Direction.Forward ? 1f : -1f;
        _percent += direction* 0.9f * Time.deltaTime;
        // _percent = Math.Clamp(_percent, 0F, 1F);
        if (_percent >= 1f)
        {
            _percent = 0f;
        }
        else if (_percent <= 0f)
        {
            _percent = 1f;
        }
            
    }
    
    private Vector3 ToTarget()
    {
        Debug.DrawLine(targetPosition, transform.position, Color.red);
        Vector3 direction = (targetPosition - transform.position).normalized;
        // Debug.DrawRay(transform.position, direction * 10f);
        Drive(direction);

        if (math.distance(transform.position, targetPosition) < drivingConfig.reachedTargetRadius)
        {
            SetState(CarState.Idle);
        }
            
        
        return direction;
    }

    private void SetState(CarState newState)
    {
        currentCarState = newState;
        Debug.Log("Setting state");
        // setup state
        switch (currentCarState)
        {
            case CarState.Idle:
                _navMeshObstacle.enabled = true;
                _navMeshAgent.enabled = false;
                break;
            case CarState.ToRoad:
                float t = 0f;
                float3 nearestPoint = new float3(math.INFINITY, math.INFINITY, math.INFINITY);
                foreach (var spline in splineComputer.Splines) {
                    SplineUtility.GetNearestPoint(spline, transform.position, out float3 nearest, out float tt);
                    if (math.distancesq(nearestPoint, transform.position) > math.distancesq(nearest, transform.position)) {
                        nearestPoint = nearest;
                        t = tt;
                    }
                }

                _percent = t;
                
                _navMeshObstacle.enabled = false;
                _navMeshAgent.enabled = true;
                break;
            case CarState.OnRoad:
                _navMeshObstacle.enabled = false;
                _navMeshAgent.enabled = true;
                break;
            case CarState.ToTarget:
                _navMeshObstacle.enabled = false;
                _navMeshAgent.enabled = true;
                break;
        }
        
        
    }
    
    void RotateCosmeticCar(float angularVel)
    {
        
        var localForward = Quaternion.Euler(Mathf.Abs(angularVel) * forwardMod, 0, 0) * Vector3.forward; // rotates vector
        var localUp = Quaternion.Euler(0, 0, angularVel * upMod) * Vector3.up;
        
        rotator.transform.localRotation = Quaternion.Slerp(rotator.transform.localRotation, Quaternion.LookRotation(localForward, localUp), Time.deltaTime * rotatorLerpSpeed);
    }
    
    public void SetTargetPosition(Vector3 position) {
        targetPosition = position;
        _percent = SplineUtility.GetNearestPoint(splineComputer.Spline, transform.position, out float3 nearest, out float t);
        
        float targetPercent = SplineUtility.GetNearestPoint(splineComputer.Spline, position, out float3 targetNearest, out float targetT);
        _splineDirection = targetPercent > _percent ? SnowXR.Direction.Forward : SnowXR.Direction.Backward;

        SetState(CarState.ToRoad);
    }

    public void SetTargetPosition(bool bEndOfRoad)
    {
        Vector3 position;
        
        position = splineComputer.EvaluatePosition(bEndOfRoad ? 1F : 0F);
        
        SetTargetPosition(position);
    }

    /// <summary>
    /// Gets the angular momentum of the navMeshAgent
    /// </summary>
    /// <returns></returns>
    public float GetAngularVelocity()
    {
        return Vector3.SignedAngle(transform.forward, _forwardLast, Vector3.up) / Time.deltaTime;
    }
    
    
    #region UIButtonCalled

    // public void ListenToNextPoint()
    // {
    //     PlayerInfo.instance.SetPointerType(Pointer.EPointType.Ground);
    //     _bListnening = true;
    // }

    #endregion
    
    #region EventHandlers

    private void Player_OnPointGround(RaycastHit hit, ControllerHand controllerHand)
    {
        if (_bListnening && controllerHand == ControllerHand.Right)
        {
            bool bValid = IsValidPosition(hit.point);
            if (bValid)
            {
                SetTargetPosition(hit.point);

                if (outline != null)
                {
                    outline.OutlineWidth = 0f;
                    outline.enabled = false;
                }
            }
        }
    }

    private void Player_OnHooverGround(RaycastHit hit, ControllerHand controllerHand)
    {
        if (_bListnening && controllerHand == ControllerHand.Right) // are we listneing and right controller
        {
            bool bValid = IsValidPosition(hit.point);

            markerMaterial.SetInt("_bValid", Convert.ToInt32(bValid));
            
            DrawMarkerMesh(hit.point, bValid);

            if (outline != null)
            {
                outline.OutlineWidth = outlineWidth;
                outline.enabled = true;
            }
        }
    }
    

    #endregion

    private bool IsValidPosition(Vector3 position)
    {
        SplineUtility.GetNearestPoint(splineComputer.Spline, position, out float3 nearest, out float t);
        return (Vector3.Distance(position, nearest) <= drivingConfig.dissconectFromRoadCutoff);

        // return Vector3.Distance( splineComputer.Project(position).position, position)
        //        <= drivingConfig.dissconectFromRoadCutoff;
    }

    private void DrawMarkerMesh(Vector3 position, bool bValid)
    {
        Vector3 dir = (position - transform.position).normalized;
        Quaternion q = Quaternion.LookRotation(Vector3.Cross(Vector3.up, dir), Vector3.up);
        q *= Quaternion.AngleAxis(phantomYOffsetRotation, q * Vector3.up);

        for (int i = 0; i < markers.Count; i++)
        {
            markers[i].Draw(position, markerMaterial, q, Vector3.one);
        }
        
        // Graphics.DrawMesh(vehicleMesh, position + transform.up * phantomYOffsetPosition, q, markerMaterial, 0);
    }
    
    public enum CarState
    {
        Idle, ToRoad, OnRoad, ToTarget
    }
    
    
    [System.Serializable]
    public struct DrivingConfig
    {
        DrivingConfig(float mmaxSpeed) {
            maxSpeed = 4f;
            maxTurnSpeed = 20f;
            accelerateSpeed = 20f;
            dissconectFromRoadCutoff = 1f;
            turnToSpeedRatio = 0.5f;
            lookAhead = 5f;
            reachedTargetRadius = 5;
        }
        
        public float maxSpeed;
        public float maxTurnSpeed;
        public float accelerateSpeed;
        public float dissconectFromRoadCutoff;
        [Tooltip("0 = car drives at max speed while turning. 1 = car stops when turning max")]
        public float turnToSpeedRatio;
        public float lookAhead;
        public float reachedTargetRadius;
    }

    [ContextMenu("DEBUG_SetTarget")]
    private void Debug_SetTarget()
    {
        SetTargetPosition(target.position);
    }

}