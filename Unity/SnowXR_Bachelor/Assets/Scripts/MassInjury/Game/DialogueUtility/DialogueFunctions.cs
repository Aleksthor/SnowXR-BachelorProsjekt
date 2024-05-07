using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using SnowXR.MassInjury.Dialogue;
using SnowXR.MassInjury.Person;
using UnityEngine;
using Random = UnityEngine.Random;

namespace SnowXR.MassInjury
{
    public class DialogueFunctions : MonoBehaviour
    {        
        [Header("Patient Responses for imAwake")]
        [SerializeField] private List<AudioClip> imAwakeMale = new List<AudioClip>();
        [SerializeField] private List<AudioClip> imAwakeFemale = new List<AudioClip>();
        
        // This function is linked with the dialogue option "Go to reception if you can walk"
        public void GoToReception()
        {
            // Layermask 9 == "Player"
            int layerMask = 1 << 9;
            Collider[] colliders = Physics.OverlapSphere(transform.position, 10f, layerMask);
            foreach (var c in colliders)
            {
                // For each patient close to us, get the Goap Agent and add belief "goToReception"
                if (c.CompareTag("Patient"))
                {
                    MassInjuryAgent agent = c.GetComponent<MassInjuryAgent>();
                    if (!ReferenceEquals(agent, null))
                    {
                        agent.GoToReception();
                    }
                    // Remove parent so agent is no longer culled, since we dont know where it is anymore
                    if (agent.transform.GetComponent<BleedingInjury>().CanWalk())
                        agent.transform.parent = null;
                }
            }
        }

        public void AskIfAwake()
        {
            // Get the current patient we are interacting with
            DialogueResponder responder = DialogueController.instance.GetActiveResponder();
            
            //If patient is concious, play male/female clip based on gender
            if (responder.GetComponent<BleedingInjury>().Concious())
            {
                switch (responder.GetComponent<GenderComponent>().GetGender())
                {
                    case Gender.Male:
                        if (imAwakeMale.Count > 0)
                            responder.PlayClip(imAwakeMale[Random.Range(0,imAwakeMale.Count)]);
                        break;
                    case Gender.Female:
                        if (imAwakeFemale.Count > 0)
                            responder.PlayClip(imAwakeFemale[Random.Range(0,imAwakeFemale.Count)]);
                        break;
                }
            }
        }       
        
    }
}
