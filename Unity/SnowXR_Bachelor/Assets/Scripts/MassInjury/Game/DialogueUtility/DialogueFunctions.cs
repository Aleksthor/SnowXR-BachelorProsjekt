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
        [Header("Patient Responses for canBreathe")]
        [SerializeField] private List<AudioClip> canBreatheMale = new List<AudioClip>();
        [SerializeField] private List<AudioClip> canBreatheFemale = new List<AudioClip>();
        [Header("Patient Responses for cannotBreathe")]
        [SerializeField] private List<AudioClip> cannotBreatheMale = new List<AudioClip>();
        [SerializeField] private List<AudioClip> cannotBreatheFemale = new List<AudioClip>();
        [Header("Patient Responses for WhereHurt")]
        [SerializeField] private List<AudioClip> whereHurtMale = new List<AudioClip>();
        [SerializeField] private List<AudioClip> whereHurtFemale = new List<AudioClip>();

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

        public void AskIfCanBreathe()
        {
            // Get the current patient we are interacting with
            DialogueResponder responder = DialogueController.instance.GetActiveResponder();
            if (responder.GetComponent<BleedingInjury>().Concious())
            {
                //If patient is concious, play male/female clip based on gender
                if (responder.GetComponent<BleedingInjury>().BreathStatus() == BreathingStatus.Normal)
                {
                    switch (responder.GetComponent<GenderComponent>().GetGender())
                    {
                        case Gender.Male:
                            if (canBreatheMale.Count > 0)
                                responder.PlayClip(canBreatheMale[Random.Range(0, imAwakeMale.Count)]);
                            break;
                        case Gender.Female:
                            if (canBreatheFemale.Count > 0)
                                responder.PlayClip(canBreatheFemale[Random.Range(0, imAwakeFemale.Count)]);
                            break;
                    }
                }
                else if (responder.GetComponent<BleedingInjury>().BreathStatus() == BreathingStatus.LungInjury)
                {
                    switch (responder.GetComponent<GenderComponent>().GetGender())
                    {
                        case Gender.Male:
                            if (cannotBreatheMale.Count > 0)
                                responder.PlayClip(cannotBreatheMale[Random.Range(0, imAwakeMale.Count)]);
                            break;
                        case Gender.Female:
                            if (cannotBreatheMale.Count > 0)
                                responder.PlayClip(cannotBreatheMale[Random.Range(0, imAwakeFemale.Count)]);
                            break;
                    }
                }
            }
        }
        public void AskWhereHurt()
        {
            // Get the current patient we are interacting with
            DialogueResponder responder = DialogueController.instance.GetActiveResponder();

            if (responder.GetComponent<BleedingInjury>().Concious())
            {
                switch ((BleedingArea)responder.GetComponent<BleedingInjury>().GetBleedingArea())
                {
                    case BleedingArea.None:
                        switch (responder.GetComponent<GenderComponent>().GetGender())
                        {
                            case Gender.Male:
                                if (whereHurtMale.Count > 0)
                                    responder.PlayClip(whereHurtMale[0]);
                                break;
                            case Gender.Female:
                                if (whereHurtFemale.Count > 0)
                                    responder.PlayClip(whereHurtFemale[0]);
                                break;
                        }
                        break;
                    case BleedingArea.Arms:
                        if (responder.GetComponent<BleedingInjury>().Side() == Comparative.Right)
                        {
                            switch (responder.GetComponent<GenderComponent>().GetGender())
                            {
                                case Gender.Male:
                                    if (whereHurtMale.Count > 0)
                                        responder.PlayClip(whereHurtMale[1]);
                                    break;
                                case Gender.Female:
                                    if (whereHurtFemale.Count > 0)
                                        responder.PlayClip(whereHurtFemale[1]);
                                    break;
                            }
                        }
                        else
                        {
                            switch (responder.GetComponent<GenderComponent>().GetGender())
                            {
                                case Gender.Male:
                                    if (whereHurtMale.Count > 0)
                                        responder.PlayClip(whereHurtMale[2]);
                                    break;
                                case Gender.Female:
                                    if (whereHurtFemale.Count > 0)
                                        responder.PlayClip(whereHurtFemale[2]);
                                    break;
                            }
                        }
                        break;
                    case BleedingArea.Torso:
                        switch (responder.GetComponent<GenderComponent>().GetGender())
                        {
                            case Gender.Male:
                                if (whereHurtMale.Count > 0)
                                    responder.PlayClip(whereHurtMale[3]);
                                break;
                            case Gender.Female:
                                if (whereHurtFemale.Count > 0)
                                    responder.PlayClip(whereHurtFemale[3]);
                                break;
                        }
                        break;
                    case BleedingArea.Legs:
                        if (responder.GetComponent<BleedingInjury>().Side() == Comparative.Right)
                        {
                            switch (responder.GetComponent<GenderComponent>().GetGender())
                            {
                                case Gender.Male:
                                    if (whereHurtMale.Count > 0)
                                        responder.PlayClip(whereHurtMale[4]);
                                    break;
                                case Gender.Female:
                                    if (whereHurtFemale.Count > 0)
                                        responder.PlayClip(whereHurtFemale[4]);
                                    break;
                            }
                        }
                        else
                        {
                            switch (responder.GetComponent<GenderComponent>().GetGender())
                            {
                                case Gender.Male:
                                    if (whereHurtMale.Count > 0)
                                        responder.PlayClip(whereHurtMale[5]);
                                    break;
                                case Gender.Female:
                                    if (whereHurtFemale.Count > 0)
                                        responder.PlayClip(whereHurtFemale[5]);
                                    break;
                            }
                        }
                        break;
                    case BleedingArea.Thighs:
                        if (responder.GetComponent<BleedingInjury>().Side() == Comparative.Right)
                        {
                            switch (responder.GetComponent<GenderComponent>().GetGender())
                            {
                                case Gender.Male:
                                    if (whereHurtMale.Count > 0)
                                        responder.PlayClip(whereHurtMale[4]);
                                    break;
                                case Gender.Female:
                                    if (whereHurtFemale.Count > 0)
                                        responder.PlayClip(whereHurtFemale[4]);
                                    break;
                            }
                        }
                        else
                        {
                            switch (responder.GetComponent<GenderComponent>().GetGender())
                            {
                                case Gender.Male:
                                    if (whereHurtMale.Count > 0)
                                        responder.PlayClip(whereHurtMale[5]);
                                    break;
                                case Gender.Female:
                                    if (whereHurtFemale.Count > 0)
                                        responder.PlayClip(whereHurtFemale[5]);
                                    break;
                            }
                        }
                        break;
                }
            }
        
        }
    }
}
