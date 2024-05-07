using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace SnowXR.MassInjury.Utility
{
    public class CullingColission : MonoBehaviour
    {
        [SerializeField] CullingSpace space;
        private void OnTriggerEnter(Collider other)
        {
            if (other.CompareTag("Culling"))
            {
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
