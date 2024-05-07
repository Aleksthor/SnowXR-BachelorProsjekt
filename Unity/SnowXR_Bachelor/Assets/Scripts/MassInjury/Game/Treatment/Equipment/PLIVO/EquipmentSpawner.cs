using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace SnowXR.MassInjury
{
    public class EquipmentSpawner : MonoBehaviour
    {
        [Header("Parents")]
        [SerializeField] private Transform tourniquet1;
        [SerializeField] private Transform pressureRelief1;
        [Header("Gameobjects for spawing")]
        [SerializeField] private GameObject tourniquet;
        [SerializeField] private GameObject pressureRelief;

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
            foreach (Transform t in tourniquet1.transform)
            {
                TourniquetPlacement tp = t.GetComponent<TourniquetPlacement>();
                if (tp.Removed() && !tp.Grabbing())
                {
                    tp.transform.SetParent(null);
                    tp.GetComponent<Rigidbody>().isKinematic = false;
                }
            }
            foreach (Transform p in pressureRelief1.transform)
            {
                PressureReliefPlacement pr = p.GetComponent<PressureReliefPlacement>();
                if (pr.Removed() && !pr.Grabbing())
                {
                    pr.transform.SetParent(null);
                    pr.GetComponent<Rigidbody>().isKinematic = false;
                }
            }

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
