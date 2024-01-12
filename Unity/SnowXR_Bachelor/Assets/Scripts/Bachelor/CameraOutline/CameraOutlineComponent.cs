using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;

namespace SnowXR.Sim
{
    public class CameraOutlineComponent : MonoBehaviour
    {
        [SerializeField] List<Outline> allOutlines = new List<Outline>();
        // Update is called once per frame
        void FixedUpdate()
        {
            if (allOutlines.Count == 0)
            {
                List<GameObject> gameObjects = GameObject.FindGameObjectsWithTag("Agent").ToList();
                foreach (var agent in gameObjects)
                {
                    allOutlines.Add(agent.GetComponent<Outline>());
                }
            }

            foreach (var outline in allOutlines)
            {
                outline.enabled = false;
            }

            int layermask = 1 << 9;
            if(Physics.Raycast(transform.position, transform.forward, out RaycastHit hitInfo, 5, layermask))
            {
                if (!hitInfo.transform.CompareTag("Agent")) return;
                hitInfo.transform.GetComponent<Outline>().enabled = true;
            }
        }
    }
}
