using System.Collections;
using System.Collections.Generic;
using System.Linq;
using BNG;
using UnityEngine;

public class VehicleDoorSystem : MonoBehaviour
{
    [SerializeField]
    private bool isCarLockedOnStart = false;

    /// <summary>
    /// This variable is only used for trigerring functions in the inspector
    /// </summary>
    [ContextMenuItem("Unlock Specific Door", "UnlockSpecificDoorInspector")]
    [ContextMenuItem("Lock Specific Door", "LockSpecificDoorInspector")]
    [ContextMenuItem("Open Specific Door", "OpenSpecificDoorInspector")]
    [ContextMenuItem("Close Specific Door", "CloseSpecificDoorInspector")]
    [SerializeField]
    private byte doorToUse = 0;

    void Start()
    {
        
        EnsureCarDoorsCantSelfCollide();
        
        if (isCarLockedOnStart)
            BroadcastMessage("LockDoor");
    }

    private void EnsureCarDoorsCantSelfCollide()
    {
        var doors = GetComponentsInChildren<Transform>().Where(x => x.TryGetComponent<IInteractableDoor>(out IInteractableDoor door)).ToArray();

        for (int i = 0; i < doors.Length; i++)
        {
            for (int j = 0; j < doors.Length; j++)
            {
                if (i == j)
                    continue;
                
                Physics.IgnoreCollision(doors[i].GetComponent<Collider>(), doors[j].GetComponent<Collider>());
            }
        }

    }

    [ContextMenu("Unlock All Doors")]
    public void UnlockAllDoors()
    {
        BroadcastMessage("UnlockDoor");
    }

    [ContextMenu("Lock All Doors")]
    public void LockAllDoors()
    {
        BroadcastMessage("LockDoor");
    }

    [ContextMenu("Open All Doors")]
    public void OpenAllDoors()
    {
        BroadcastMessage("OpenDoor");
    }

    [ContextMenu("Close All Doors")]
    public void CloseAllDoors()
    {
        BroadcastMessage("CloseDoor");
    }

    public void OpenSpecificDoor(params byte[] _doorID)
    {
        for (int i = 0; i < _doorID.Length; i++)
            BroadcastMessage("OpenSDoor", _doorID[i]);
    }
    public void CloseSpecificDoor(params byte[] _doorID)
    {
        for (int i = 0; i < _doorID.Length; i++)
            BroadcastMessage("CloseDoor", _doorID);
    }
    public void LockSpecificDoor(byte _doorID)
    {
        BroadcastMessage("OpenSDoor", _doorID);
    }
    public void UnlockSpecificDoor(byte _doorID)
    {
        BroadcastMessage("UnlockSDoor", _doorID);
    }

    // INSPECTOR FUNCTIONS
    // These functions are only meant to be triggered from the inspector
    
    private void UnlockSpecificDoorInspector()
    {
        BroadcastMessage("UnlockSDoor", doorToUse);
    }
    private void LockSpecificDoorInspector()
    {
        BroadcastMessage("LockSDoor", doorToUse);
    }
    private void OpenSpecificDoorInspector()
    {
        BroadcastMessage("OpenSDoor", doorToUse);
    }
    private void CloseSpecificDoorInspector()
    {
        BroadcastMessage("CloseSDoor", doorToUse);
    }

}