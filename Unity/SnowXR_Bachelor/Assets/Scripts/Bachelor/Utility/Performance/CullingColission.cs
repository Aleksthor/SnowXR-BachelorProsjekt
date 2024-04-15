using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace MassInjury.Utility
{
    public class CullingColission : MonoBehaviour
    {
        [SerializeField] CullingSpace space;
        private void OnTriggerEnter(Collider other)
        {
            Debug.Log("Enter");
            if (other.CompareTag("Culling"))
            {
                Debug.Log("Change Culling Space");
                CullingObjects.instance.NewSpace(space);   
            }
        }
    }

    [System.Serializable]
    public enum CullingSpace
    {
        DownStairs,
        UpStairs,
        Reception,
        Stairs,
        RoomA,
        RoomB,
        RoomC,
        RoomD,
        RoomE
    }
}
