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
        [SerializeField] private Image correct;
        [SerializeField] private Image border;

        public void SetValues(string name, Color guess, Color correct, Color border)
        {
            this.name.text = name;
            this.guess.color = guess;
            this.correct.color = correct;
            this.border.color = border;
        }
    }
}
