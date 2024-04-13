using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace SnowXR.MassInjury
{
    public class PageOne : MonoBehaviour
    {
        [SerializeField] private StepProgress progress;
        
        [SerializeField] private Transform header;
        
        [SerializeField] private Transform page2;
        [SerializeField] private Transform menu;

        private void Awake()
        {
            foreach (Transform child in transform)
            {
                child.gameObject.SetActive(true);
            }

            header.gameObject.SetActive(true);

            progress = StepProgress.NotStarted;
        }


        public void YesButton()
        {
            header.gameObject.SetActive(false);
            page2.GetComponent<PageTwo>().OpenPage();
            gameObject.SetActive(false);
        }

        public void NoButton()
        {
            header.gameObject.SetActive(false);
            menu.gameObject.SetActive(true);
            gameObject.SetActive(false);
        }
    }
}
