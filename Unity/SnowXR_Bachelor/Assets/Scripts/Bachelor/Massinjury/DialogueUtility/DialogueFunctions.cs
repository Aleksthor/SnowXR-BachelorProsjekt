using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using MassInjury.Dialogue;
using MassInjury.Person;
using UnityEngine;
using Random = UnityEngine.Random;

namespace SnowXR.MassInjury
{
    public class DialogueFunctions : MonoBehaviour
    {

        [Header("Patient Responses")]
        [SerializeField] private List<AudioClip> imAwakeMale = new List<AudioClip>();
        [SerializeField] private List<AudioClip> imAwakeFemale = new List<AudioClip>();
        
        [Header("Police Responses")]
        [SerializeField] private List<AudioClip> numberPatientsMale = new List<AudioClip>();
        [SerializeField] private List<AudioClip> numberPatientsFemale = new List<AudioClip>();

        public void GoToReception()
        {
            Debug.Log("Go to reception");
            int layerMask = 1 << 9;
            Collider[] colliders = Physics.OverlapSphere(transform.position, 10f, layerMask);
            foreach (var c in colliders)
            {
                if (c.CompareTag("Patient"))
                {
                    Debug.Log("1 Agent");
                    MassInjuryAgent agent = c.GetComponent<MassInjuryAgent>();
                    if (!ReferenceEquals(agent, null))
                    {
                        Debug.Log("Calling Agent Script");
                        agent.GoToReception();
                    }
                    agent.transform.parent = null;
                }
            }
        }

        public void AskIfAwake()
        {
            DialogueResponder responder = DialogueController.instance.GetActiveResponder();
            
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
        
        public void RespondHowManyPatients()
        {
            DialogueResponder responder = DialogueController.instance.GetActiveResponder();
            
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
