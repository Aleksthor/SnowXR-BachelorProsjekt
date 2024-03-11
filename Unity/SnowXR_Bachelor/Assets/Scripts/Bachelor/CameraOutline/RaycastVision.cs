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
        private SpawnManager spawnManager;

        private void Start()
        {
            if (spawnManager == null)
            {
                spawnManager = SpawnManager.instance;
            }

            List<GameObject> agents = spawnManager.GetPatients();
            
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
                if (!hitInfo.transform.CompareTag("BandReciever")) return;

                Transform owner = hitInfo.transform.parent;
                owner.GetComponent<Outline>().enabled = true;
                if (DialogueController.instance != null)
                    DialogueController.instance.SetActiveResponder(owner.GetComponent<DialogueResponder>());
                if (PDialogueController.instance != null)
                    PDialogueController.instance.SetActiveResponder(owner.GetComponent<DialogueResponder>());
            }
            else
            {
                if (DialogueController.instance != null)
                    DialogueController.instance.SetActiveResponder(null);
                if (PDialogueController.instance != null)
                    PDialogueController.instance.SetActiveResponder(null);
            }
        }
    }
}
