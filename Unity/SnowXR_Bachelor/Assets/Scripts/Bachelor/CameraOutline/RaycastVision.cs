using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using SnowXR.MassInjury;
using UnityEngine;
using Bachelor.Dialogue;

namespace Bachelor.RaycastVision
{
    public class RaycastVision : MonoBehaviour
    {
        [SerializeField] List<Outline> allOutlines = new List<Outline>();
        [SerializeField] private SpawnManager spawnManager;

        private void Start()
        {
            if (spawnManager == null) return;

            List<GameObject> agents = spawnManager.GetAgents();
            
            foreach (var injuredPerson in agents)
            {
                allOutlines.Add(injuredPerson.GetComponent<Outline>());
            }
        }

        // Update is called once per frame
        void FixedUpdate()
        {

            foreach (var outline in allOutlines)
            {
                outline.enabled = false;
            }

            int layerMask = 1 << 9;
            if(Physics.Raycast(transform.position, transform.forward, out RaycastHit hitInfo, 5, layerMask))
            {
                if (!hitInfo.transform.CompareTag("Agent")) return;
                
                hitInfo.transform.GetComponent<Outline>().enabled = true;
                DialogueController.instance.SetActiveResponder(hitInfo.transform.GetComponent<DialogueResponder>());
            }
            else
            {
                DialogueController.instance.SetActiveResponder(null);
            }
        }
    }
}
