using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

namespace SnowXR.MassInjury
{
    public class PatientZoneVisualizer : MonoBehaviour
    {
        [SerializeField] private Text name;
        [SerializeField] private Image guess;
        [SerializeField] private Image initial;
        [SerializeField] private Image correct;
        [SerializeField] private Image border;
        [SerializeField] private Image tourniquetNeed;
        [SerializeField] private Image pharyngealTubeNeed;
        [SerializeField] private Image pressureReliefNeed;
        [SerializeField] private Image tourniquetRecieved;
        [SerializeField] private Image pharyngealTubeRecieved;
        [SerializeField] private Image pressureReliefRecieved;

        private Button button;
        private BleedingInjury injury;

        private void Awake()
        {
            button = GetComponent<Button>();
        }

        public void SetupZoneButton(BleedingInjury i)
        {
            injury = i;
            
            button.onClick.AddListener(delegate
            {
                string text = "";
                foreach (var s in injury.GetZoneReasoning())
                {
                    text += s;
                    text += "\n";
                }
                ResultsUI.instance.SetZoneReasoning(text);
                
            });
        }

        public void SetValues(string name, Color guess, Color correct, Color initial, Color border,
            Color needTourniquet, Color reviecedTourniquet, Color needPharyngealTube, Color reviecedPharyngealTube,Color needPressureRelief, Color reviecedPressureRelief)
        {
            this.name.text = name;
            this.guess.color = guess;
            this.correct.color = correct;
            this.border.color = border;
            this.initial.color = initial;
            tourniquetNeed.color = needTourniquet;
            tourniquetRecieved.color = reviecedTourniquet;
            pharyngealTubeNeed.color = needPharyngealTube;
            pharyngealTubeRecieved.color = reviecedPharyngealTube;
            pressureReliefNeed.color = needPressureRelief;
            pressureReliefRecieved.color = reviecedPressureRelief;


        }
    }
}
