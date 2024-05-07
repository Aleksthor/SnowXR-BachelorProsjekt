using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

namespace BA.Prototype
{
    public class PInjuryGuesser : MonoBehaviour
    {
        [Header("Person We Are Guessing")]
        [SerializeField] PInjuredPerson injuredPerson;

        [Header("Buttons")]
        [SerializeField] Button greenButton;
        [SerializeField] Button yellowButton;
        [SerializeField] Button redButton;
        [SerializeField] Button blackButton;

        [Header("ResultText")]
        [SerializeField] Text resultText;

        private void Start()
        {
            greenButton.onClick.AddListener(delegate { Guess(PZones.Green); });
            yellowButton.onClick.AddListener(delegate { Guess(PZones.Yellow); });
            redButton.onClick.AddListener(delegate { Guess(PZones.Red); });
            blackButton.onClick.AddListener(delegate { Guess(PZones.Black); });
        }


        void Guess(PZones zone)
        {
            if (injuredPerson == null)
            {
                return;
            }


            PZones correctZone = injuredPerson.GetCorrectZone();

            if (zone == correctZone )
            {
                resultText.text = "Correct Zone!";
                return;
            }


            switch(correctZone)
            {
                case PZones.Green:
                    resultText.text = "The correct zone was: \n Green";
                    return;
                case PZones.Yellow:
                    resultText.text = "The correct zone was: \n Yellow";
                    return;
                case PZones.Red:
                    resultText.text = "The correct zone was: \n Red";
                    return;
                case PZones.Black:
                    resultText.text = "The correct zone was: \n Black";
                    return;
            }
        }
    }
}
