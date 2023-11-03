using System;
using System.Collections.Generic;
using System.Drawing;
using UnityEditor;
using UnityEngine;
using UnityEngine.Animations;
using UnityEngine.Serialization;
using Color = UnityEngine.Color;

public class Wheels : MonoBehaviour
{
    [Header("References")]

    [Header("Config")] 
    [SerializeField] private float wheelSpinMultiplier;
    [SerializeField] private List<Wheel> _wheels;
    [SerializeField] private Axis axis;

    //fields

    private Vector3 _vehiclePosLastFrame;

    private const float k_carSpeedStopTolerance = 0.02f;
    
    
    [Serializable]
    public class Wheel
    {
        public Transform transform = null;
        [Tooltip("wheel will only turn, not rotate to match turning direction")]
        public bool bOnlySpin;
        public bool bReverseSpinDirection;
        [HideInInspector] public Vector3 posLastFrame;
        [HideInInspector] public Quaternion nonSpinQuat;
        [HideInInspector] public float distance;
    }


    private void Awake()
    {

        for (int i = 0; i < _wheels.Count; i++)
        {
            _wheels[i].distance = 0;
        }
        // saves all positions at start
        SavePositions();
    }

    private void Update()
    {
        if (Vector3.Distance(transform.position, _vehiclePosLastFrame) < k_carSpeedStopTolerance)
        {
            return;
        }
        
        for (int i = 0; i < _wheels.Count; i++)
        {
            Wheel wheel = _wheels[i];
            if (!wheel.transform)
                return;

            Vector3 direction = wheel.transform.position - wheel.posLastFrame;
            wheel.distance += direction.magnitude;
            
            // rotation
            if (!wheel.bOnlySpin)
            {
                direction.Normalize();
                Vector3 right = Vector3.Cross(Vector3.up, direction);
                Quaternion q = Quaternion.LookRotation(right, Vector3.up);
                wheel.nonSpinQuat = Quaternion.Lerp(wheel.nonSpinQuat, q, Time.deltaTime * 5f);
                wheel.transform.rotation = wheel.nonSpinQuat;
                // if (axis == Axis.X)
                // {
                //     wheel.transform.rotation *= Quaternion.AngleAxis(-90f, Vector3.up);
                // }
            }
            
            
            
            // spin
            Vector3 rot = wheel.transform.localEulerAngles;
            float directionModifier = Convert.ToSingle(!wheel.bReverseSpinDirection) * 2f - 1f;
            switch (axis)
            {
                case Axis.X:
                    rot.x = wheel.distance * wheelSpinMultiplier * directionModifier;
                    break;
                case Axis.Y:
                    rot.y = wheel.distance * wheelSpinMultiplier * directionModifier;
                    break;
                case Axis.Z:
                    rot.z = wheel.distance * wheelSpinMultiplier * directionModifier;
                    break;
                        
            }
            wheel.transform.localEulerAngles = rot;
        }

        // saving state
        SavePositions();
        _vehiclePosLastFrame = transform.position;
    }

    private void SavePositions()
    {
        
        for (int i = 0; i < _wheels.Count; i++)
        {
            if(_wheels[i].transform)
               _wheels[i].posLastFrame = _wheels[i].transform.position;
        }
    }

    private Vector3 GetAxisVector(Wheel wheel)
    {
        
        Vector3 vec = Vector3.one;
        switch (axis)
        {
            case Axis.X:
                vec = wheel.transform.right;
                break;
            case Axis.Y:
                vec = wheel.transform.up;
                break;
            case Axis.Z:
                vec = wheel.transform.forward;
                break;
        }

        return vec;
    }

    private Vector3 GetAxisNormalVector(Wheel wheel)
    {
        
        Vector3 vec = Vector3.one;
        switch (axis)
        {
            case Axis.X:
                vec = wheel.transform.forward;
                break;
            case Axis.Y:
                vec = wheel.transform.right;
                break;
            case Axis.Z:
                vec = wheel.transform.up;
                break;
        }

        return vec;
    }
    
    #if UNITY_EDITOR
    private void OnDrawGizmosSelected()
    {
        foreach (var wheel in _wheels)
        {
            if (wheel.transform == null) {
                return;
            }
            Vector3 direction = GetAxisVector(wheel);
            
            // Wheels
            Gizmos.color = Color.green;
            Handles.color = Color.green;
            Handles.DrawLine(wheel.transform.position, wheel.transform.position + direction * 0.1f, 5f);
            Gizmos.color = Color.red;

            Vector3 normalDirection = GetAxisNormalVector(wheel);
            
            Gizmos.DrawRay(wheel.transform.position + normalDirection * 0.1f, Vector3.Cross(direction, normalDirection) * 0.1f * (Convert.ToSingle(!wheel.bReverseSpinDirection)*2f - 1f));
        }
    }
    #endif
}