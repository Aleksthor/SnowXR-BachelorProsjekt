using System;
using System.Collections;
using System.Collections.Generic;
using MassInjury.Person;
using UnityEngine;
using UnityEngine.UI;

namespace SnowXR.MassInjury
{
    public class PageFive : MonoBehaviour
    {
        [SerializeField] private StepProgress progress;
        
        [SerializeField] private Transform header;
        [SerializeField] private Transform skip;
        [SerializeField] private Transform page6;
        
        [SerializeField] private Transform step1Text;
        [SerializeField] private Transform step2Text;
        [SerializeField] private Transform step3Text;
        [SerializeField] private Transform step4Text;
        [SerializeField] private Transform step5Text;
        [SerializeField] private Transform step1Progress;
        [SerializeField] private Transform step2Progress;
        [SerializeField] private Transform step3Progress;
        [SerializeField] private Transform step4Progress;
        [SerializeField] private Transform step5Progress;
        
        [SerializeField] private Transform patient;
        private OpenAirways openAirways;
        private SideLease sideLease;
        
        
        [SerializeField] private Color doneColor;

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
            Transform openMouthParent = patient.GetComponent<GenderComponent>().GetMesh().GetComponent<BleedingSockets>().openAirways;

            foreach (Transform child in openMouthParent)
            {
                openAirways = child.GetComponent<OpenAirways>();
            }

            sideLease = patient.GetComponent<GenderComponent>().GetMesh().transform.Find("SideLease")
                .GetComponent<SideLease>();
            patient.gameObject.SetActive(false);
        }

        public void OpenPage()
        {
            step1Text.gameObject.SetActive(true);
            header.gameObject.SetActive(true);
            skip.gameObject.SetActive(true);
            
            step1Progress.gameObject.SetActive(true);
            step2Progress.gameObject.SetActive(true);
            step3Progress.gameObject.SetActive(true);
            step4Progress.gameObject.SetActive(true);
            step5Progress.gameObject.SetActive(true);
            
            patient.gameObject.SetActive(true);
            
            openAirways.onGrabHead.AddListener(GrabHead);
            openAirways.onGrabChin.AddListener(GrabChin);
            patient.GetComponent<BleedingInjury>().onRecieveOpenAirways.AddListener(ClosedMouth);

            progress = StepProgress.One;
        }

        private void GrabHead()
        {
            step1Text.gameObject.SetActive(false);
            step2Text.gameObject.SetActive(true);
            step1Progress.GetComponent<Image>().color = doneColor;
            progress = StepProgress.Two;
        }
        
        private void GrabChin()
        {
            step2Text.gameObject.SetActive(false);
            step3Text.gameObject.SetActive(true);
            step2Progress.GetComponent<Image>().color = doneColor;
            progress = StepProgress.Three;
        }
        private void ClosedMouth()
        {
            foreach (Transform child in transform)
            {
                child.gameObject.SetActive(false);
            }
            skip.gameObject.SetActive(true);
            step4Text.gameObject.SetActive(true);
            step2Progress.GetComponent<Image>().color = doneColor;
            step3Progress.GetComponent<Image>().color = doneColor;
            progress = StepProgress.Four;
            
            openAirways.onGrabChin.RemoveAllListeners();
            openAirways.onGrabHead.RemoveAllListeners();
            patient.GetComponent<BleedingInjury>().onRecieveOpenAirways.RemoveAllListeners();
            
            sideLease.onStartSideLease.AddListener(StartSideLease);
            patient.GetComponent<BleedingInjury>().onRecieveSideLease.AddListener(SideLease);
        }

        private void StartSideLease()
        {
            step4Text.gameObject.SetActive(false);
            step5Text.gameObject.SetActive(true);
            step4Progress.GetComponent<Image>().color = doneColor;
            progress = StepProgress.Five;
        }
        private void SideLease()
        {
            step4Progress.GetComponent<Image>().color = doneColor;
            step5Progress.GetComponent<Image>().color = doneColor;
            sideLease.onStartSideLease.RemoveAllListeners();
            patient.GetComponent<BleedingInjury>().onRecieveSideLease.RemoveAllListeners();
            progress = StepProgress.Completed;
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
                    page6.GetComponent<PageSix>().OpenPage();
                    
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
            
            openAirways.onGrabChin.RemoveAllListeners();
            openAirways.onGrabHead.RemoveAllListeners();
            patient.GetComponent<BleedingInjury>().onRecieveOpenAirways.RemoveAllListeners();
            sideLease.onStartSideLease.RemoveAllListeners();
            patient.GetComponent<BleedingInjury>().onRecieveSideLease.RemoveAllListeners();
            
            header.gameObject.SetActive(false);
            page6.GetComponent<PageSix>().OpenPage();
            gameObject.SetActive(false);
        }
    }
}
