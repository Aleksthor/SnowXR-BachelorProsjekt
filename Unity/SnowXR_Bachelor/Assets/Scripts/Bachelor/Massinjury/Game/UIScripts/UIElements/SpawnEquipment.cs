using System.Collections;
using System.Collections.Generic;
using BNG;
using UnityEngine;

namespace SnowXR.MassInjury
{
    public class SpawnEquipment : MonoBehaviour
    {
        [SerializeField] private GameObject tourniquet;
        [SerializeField] private GameObject pharyngealTube;
        [SerializeField] private Grabber lefthand;

        public void SpawnTourniquet()
        {
            var transform1 = lefthand.transform;
            GameObject go = Instantiate(tourniquet, transform1.position, transform1.rotation);
            Grabbable grabbable = go.GetComponent<Grabbable>();
            lefthand.GrabGrabbable(grabbable);
        }
        
        public void SpawnPharyngealTube()
        {
            var transform1 = lefthand.transform;
            GameObject go = Instantiate(pharyngealTube, transform1.position, transform1.rotation);
            Grabbable grabbable = go.GetComponent<Grabbable>();
            lefthand.GrabGrabbable(grabbable);
        }
    }
}
