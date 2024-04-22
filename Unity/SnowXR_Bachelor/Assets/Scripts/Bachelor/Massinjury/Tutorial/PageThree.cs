using System;
using System.Collections;
using System.Collections.Generic;
using BNG;
using MassInjury.Person;
using UnityEngine;
using UnityEngine.UI;

namespace SnowXR.MassInjury
{
    public class PageThree : MonoBehaviour
    {
        [SerializeField] private StepProgress progress;
        
        [SerializeField] private Transform header;
        [SerializeField] private Transform skip;
        [SerializeField] private Transform page4;

        [SerializeField] private Transform step1Text;
        [SerializeField] private Transform step1Button;
        
        [SerializeField] private Transform step2Text;
        [SerializeField] private Transform step3Text;
        [SerializeField] private Transform step2Progress;
        [SerializeField] private Transform step3Progress;

        [SerializeField] private Grabber leftHand;
        [SerializeField] private Grabber rightHand;

        [SerializeField] private Transform bandParent;
        [SerializeField] private Transform patient;
        
        [SerializeField] private Color doneColor;
        

        private List<BandPlacement> bands = new List<BandPlacement>();
        private float timer = 0f;

        private void Awake()
        {
            foreach (Transform child in transform)
            {
                child.gameObject.SetActive(false);
            }
            header.gameObject.SetActive(false);
            skip.gameObject.SetActive(false);

            progress = StepProgress.NotStarted;
        }
        
        private void Start()
        {
            patient.gameObject.SetActive(false);
        }

        public void OpenPage()
        {
            step1Text.gameObject.SetActive(true);
            header.gameObject.SetActive(true);
            step1Button.gameObject.SetActive(true);
            skip.gameObject.SetActive(true);
           

            progress++;
        }

        public void Understand()
        {
            patient.gameObject.SetActive(true);
            step1Text.gameObject.SetActive(false);
            step1Button.gameObject.SetActive(false);
            
            step2Text.gameObject.SetActive(true);
            step2Progress.gameObject.SetActive(true);
            step3Progress.gameObject.SetActive(true);

            foreach (Transform child in bandParent)
            {
                bands.Add(child.GetComponent<BandPlacement>());
                    
                bands[^1].onPickup.AddListener(OnPickup);
            }
            
            progress++;
        }

        public void OnPickup()
        {
            BandPlacement band = null;
            if (leftHand.HeldGrabbable)
            {
                band = leftHand.HeldGrabbable.transform.GetComponent<BandPlacement>();
            }
            if (rightHand.HeldGrabbable)
            {
                band = rightHand.HeldGrabbable.transform.GetComponent<BandPlacement>();
            }
            
            if (band)
            {
                if (band.Zone() == Zone.Green)
                {
                    foreach (var b in bands)
                    {
                        b.onPickup.RemoveAllListeners(); 
                    }
                    step2Text.gameObject.SetActive(false);
                    step2Progress.GetComponent<Image>().color = doneColor;
                    step3Text.gameObject.SetActive(true);
                    
                    patient.GetComponent<BleedingInjury>().onPlaceBand.AddListener(PlaceBand);
                    progress++;
                }
            }
        }


        public void PlaceBand()
        {
            BleedingInjury injury = patient.GetComponent<BleedingInjury>();
            if (injury.GuessedZone() == Zone.Green)
            {
                injury.onPlaceBand.RemoveAllListeners();
                progress = StepProgress.Completed;
                step3Progress.GetComponent<Image>().color = doneColor;
            }
        }

        public void FixedUpdate()
        {
            if (progress == StepProgress.Completed)
            {
                timer += Time.deltaTime;
                if (timer > 2f)
                {
                    foreach (Transform child in transform)
                    {
                        child.gameObject.SetActive(false);
                    }
                    header.gameObject.SetActive(false);
                    page4.GetComponent<PageFour>().OpenPage();
                    
                    patient.gameObject.SetActive(false);
                    
                    gameObject.SetActive(false);
                    timer = -1000f;
                }
            }
        }
        
        public void Skip()
        {
            foreach (Transform child in transform)
            {
                child.gameObject.SetActive(false);
            }
            patient.gameObject.SetActive(false);
            patient.GetComponent<BleedingInjury>().onPlaceBand.RemoveAllListeners();
            foreach (var b in bands)
            {
                b.onPickup.RemoveAllListeners(); 
            }
            
            
            header.gameObject.SetActive(false);
            page4.GetComponent<PageFour>().OpenPage();
            gameObject.SetActive(false);
        }
    }
}
