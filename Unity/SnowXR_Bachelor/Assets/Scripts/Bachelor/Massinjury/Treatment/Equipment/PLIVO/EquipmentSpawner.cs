using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace SnowXR.MassInjury
{
    public class EquipmentSpawner : MonoBehaviour
    {
        [SerializeField] private GameObject tourniquet;
        [SerializeField] private GameObject pressureRelief;

        [SerializeField] private Transform tourniquet1;
        [SerializeField] private Transform pressureRelief1;

        private void Awake()
        {
            if (tourniquet1.childCount == 0)
            {
                Instantiate(tourniquet, tourniquet1);
            }
            if (pressureRelief1.childCount == 0)
            {
                Instantiate(pressureRelief, pressureRelief1);
            }
        }

        // Update is called once per frame
        void FixedUpdate()
        {
            if (tourniquet1.childCount == 0)
            {
                Instantiate(tourniquet, tourniquet1);
            }
            if (pressureRelief1.childCount == 0)
            {
                Instantiate(pressureRelief, pressureRelief1);
            }
            
        }
    }
}
