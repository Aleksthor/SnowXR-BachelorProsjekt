using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using SnowXR.MassInjury;

namespace Bachelor.Dialogue
{
    [RequireComponent(typeof(BleedingInjury))]
    public class DialogueResponder : MonoBehaviour
    {
        [SerializeField] private List<Dialogue> playerOptions = new List<Dialogue>();

        private BleedingInjury bleedingInjury;
        
        // Start is called before the first frame update
        void Awake()
        {
            bleedingInjury = GetComponent<BleedingInjury>();
        }

        public void RespondHarDuSkader()
        {
            string response = "";

            if (!bleedingInjury.Concious())
            {
                response += "Ikke noe svar ..";
                DialogueController.instance.ShowResponse(response);
                return;
            }

            if (bleedingInjury.BreathStatus() == BreathingStatus.CriticalProblem)
            {
                response += ".. Du kan høre at pasienten sliter med å snakke ..";
                DialogueController.instance.ShowResponse(response);
                return;
            }
            
            BleedingArea area = (BleedingArea)bleedingInjury.GetBleedingArea();
            if (area == BleedingArea.None)
            {
                response += "Nei, jeg har ingen skader";
            }
            else
            {

                BleedingInjuryStatus status = (BleedingInjuryStatus)bleedingInjury.GetBleedingSeverity();
                switch (status)
                {
                    case BleedingInjuryStatus.Minimal:
                        response += "Ja, jeg har fått ";
                        response += "små ";
                        break;
                    case BleedingInjuryStatus.Moderate:
                        response += "Ja, jeg har fått ";
                        break;
                    case BleedingInjuryStatus.Severe:
                        response += "Ja, jeg har fått ";
                        response += "store ";
                        break;
                    default:
                        response += "Nei, jeg har ingen blødninger. ";
                        break;
                }

                switch (area)
                {
                    case BleedingArea.Head:
                        response += "skader i hodet.";
                        break;
                    case BleedingArea.Neck:
                        response += "skader i nakken.";
                        break;
                    case BleedingArea.Arms:
                        response += "skader i ";
                        response += bleedingInjury.Side() == Comparative.Right ? "høyre arm." : "ventre arm";
                        break;
                    case BleedingArea.Torso:
                        response += "skader i magen.";
                        break;
                    case BleedingArea.Thighs:
                        response += "skader i ";
                        response += bleedingInjury.Side() == Comparative.Right ? "høyre lår." : "ventre lår";
                        break;
                    case BleedingArea.Legs:
                        response += "skader i ";
                        response += bleedingInjury.Side() == Comparative.Right ? "høyre legg." : "ventre legg";
                        break;
                    default:
                        break;
                }

                response += "\n \n";

                if (bleedingInjury.BreathStatus() == BreathingStatus.MinimalProblem)
                {
                    response += "Jeg sliter også med å puste.";
                }
            }
            
            DialogueController.instance.ShowResponse(response);
        }

        public List<Dialogue> GetPlayerOptions()
        {
            return playerOptions;
        }
        
    }
}
