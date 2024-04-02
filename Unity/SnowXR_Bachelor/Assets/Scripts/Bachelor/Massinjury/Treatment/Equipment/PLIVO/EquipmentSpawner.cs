using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace SnowXR.MassInjury
{
    public class EquipmentSpawner : MonoBehaviour
    {
        [SerializeField] private GameObject tourniquet;
        [SerializeField] private GameObject pharyngealTube;
        [SerializeField] private GameObject pressureRelief;

        [SerializeField] private Transform tourniquet1;
        [SerializeField] private Transform tourniquet2;
        [SerializeField] private Transform pressureRelief1;
        [SerializeField] private Transform pressureRelief2;
        [SerializeField] private Transform pharyngealTube1;
        [SerializeField] private Transform pharyngealTube2;
        [SerializeField] private Transform pharyngealTube3;

        private void Awake()
        {
            if (tourniquet1.childCount == 0)
            {
                Instantiate(tourniquet, tourniquet1);
            }
            if (tourniquet2.childCount == 0)
            {
                Instantiate(tourniquet, tourniquet2);
            }
            if (pressureRelief1.childCount == 0)
            {
                Instantiate(pressureRelief, pressureRelief1);
            }
            if (pressureRelief2.childCount == 0)
            {
                Instantiate(pressureRelief, pressureRelief2);
            }
            if (pharyngealTube1.childCount == 0)
            {
                Instantiate(pharyngealTube, pharyngealTube1);
            }
            if (pharyngealTube2.childCount == 0)
            {
                Instantiate(pharyngealTube, pharyngealTube2);
            }
            if (pharyngealTube3.childCount == 0)
            {
                Instantiate(pharyngealTube, pharyngealTube3);
            }
        }

        // Update is called once per frame
        void Update()
        {
            if (tourniquet1.childCount == 0)
            {
                Instantiate(tourniquet, tourniquet1);
            }
            if (tourniquet2.childCount == 0)
            {
                Instantiate(tourniquet, tourniquet2);
            }
            if (pressureRelief1.childCount == 0)
            {
                Instantiate(pressureRelief, pressureRelief1);
            }
            if (pressureRelief2.childCount == 0)
            {
                Instantiate(pressureRelief, pressureRelief2);
            }
            if (pharyngealTube1.childCount == 0)
            {
                Instantiate(pharyngealTube, pharyngealTube1);
            }
            if (pharyngealTube2.childCount == 0)
            {
                Instantiate(pharyngealTube, pharyngealTube2);
            }
            if (pharyngealTube3.childCount == 0)
            {
                Instantiate(pharyngealTube, pharyngealTube3);
            }
            
        }
    }
}
