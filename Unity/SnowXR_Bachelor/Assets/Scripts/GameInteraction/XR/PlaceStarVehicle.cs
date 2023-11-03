using System;
using System.Collections.Generic;
using BNG;
using KBCore.Refs;
using SnowXR;
using SnowXR.Represent2D.Scenario;
using UnityEngine;
using UnityEngine.AddressableAssets;
using UnityEngine.Events;
using Marker = SnowXR.Marker;

[RequireComponent(typeof(Pointer))]
public class PlaceStarVehicle : MonoBehaviour {// NetworkBehaviour {
    [SerializeField, Self()] private Pointer _pointer;

    [SerializeField] private Material _material;
    [SerializeField] private PlayerTeleport _playerTeleport;
    
    [SerializeField] private List<Marker> _markers = new List<Marker>();

    [SerializeField] private GameObject _ambulancePrefab;
    
    
    private void OnEnable() {
        GameEvents.instance.onPlayerHooverGround.AddListener(OnPlayerHooverGround);
        GameEvents.instance.onPlayerPointGeneral.AddListener(OnPointGeneral);
    }

    private void OnDisable()
    {
        GameEvents.instance.onPlayerHooverGround.RemoveListener(OnPlayerHooverGround);
        GameEvents.instance.onPlayerPointGeneral.RemoveListener(OnPointGeneral);
    }

    private void OnPointGeneral(RaycastHit hit, ControllerHand hand)
    {
        Logging.Log(Logging.LogGroup.DEBUG, "POINT GENERALLLL");
        Quaternion rot = Quaternion.LookRotation(_pointer.transform.forward.RemoveY());
        

        var go = Addressables.InstantiateAsync("Ambulance").WaitForCompletion();
        //var go = Instantiate(_ambulancePrefab);
        go.transform.SetPositionAndRotation(hit.point, rot);
        go.GetComponent<VehicleSpawnWorkers>().SpawnAndDestroy();
        //DoSpawn(hit.point, rot);
        
        // Teleport player
        Logging.Log("Teleport player");
        Vector3 offsetTransformer = rot.QuaternionTransformer(new Vector3(2, 0, 0));
        _playerTeleport.TeleportPlayer(hit.point + offsetTransformer + Vector3.up * 3, _playerTeleport.transform.rotation);
        
        // Events 
        GameEvents.instance.onPlayerHooverGround.RemoveListener(OnPlayerHooverGround);
        GameEvents.instance.onPlayerPointGeneral.RemoveListener(OnPointGeneral);
        
        // Cleanup, we no longer need this component
        Destroy(this);
    }

    private Vector3 pos;
    private void OnDrawGizmos() {
        Gizmos.DrawCube(pos, Vector3.one);
    }

    private void OnPlayerHooverGround(RaycastHit hit, ControllerHand controllerHand) {
        if (enabled == false)
        {
            return;
        }

        pos = hit.point;
        Vector3 forward = _pointer.transform.forward.RemoveY().normalized;
        Vector3 position = hit.point;       
        
        
        Quaternion rot = Quaternion.LookRotation(forward);
        foreach (var marker in _markers) {
            marker.Draw(position, _material, rot);
        }
    }
    
#if UNITY_EDITOR
    private void OnValidate() {
        this.ValidateRefs();
    }
#endif
}