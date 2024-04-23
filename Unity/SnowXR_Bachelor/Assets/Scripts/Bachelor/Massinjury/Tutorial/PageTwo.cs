using System;
using System.Collections;
using System.Collections.Generic;
using BNG;
using UnityEngine;
using UnityEngine.UI;

namespace SnowXR.MassInjury
{
    public class PageTwo : MonoBehaviour
    {
        [SerializeField] private StepProgress progress;
        
        [SerializeField] private Transform header;
        [SerializeField] private Transform skip;
        [SerializeField] private Transform page3;
        
        [SerializeField] private Transform step1Text;
        [SerializeField] private Transform step2Text;
        [SerializeField] private Transform step3Text;
        [SerializeField] private Transform step4Text;
        
        [SerializeField] private Transform step1Progress;
        [SerializeField] private Transform step2Progress;
        [SerializeField] private Transform step3Progress;
        [SerializeField] private Transform step4Progress;

        
        [SerializeField] private ControllerBinding bandInput = ControllerBinding.YButtonDown;
        [SerializeField] private ControllerBinding bandInput2 = ControllerBinding.BButtonDown;
        [SerializeField] private ControllerBinding settingsInput = ControllerBinding.AButtonDown;
        [SerializeField] private ControllerBinding settingsInput2 = ControllerBinding.XButtonDown;

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
        

        public void OpenPage()
        {
            step1Text.gameObject.SetActive(true);
            header.gameObject.SetActive(true);
            step1Progress.gameObject.SetActive(true);
            step2Progress.gameObject.SetActive(true);
            step3Progress.gameObject.SetActive(true);
            step4Progress.gameObject.SetActive(true);
            
            skip.gameObject.SetActive(true);
            
            progress = StepProgress.One;
        }


        private void Update()
        {
            switch (progress)
            {
                case StepProgress.NotStarted:
                    return;
                case StepProgress.One:
                    if (bandInput.GetDown() || bandInput2.GetDown())
                    {
                        step1Text.gameObject.SetActive(false);
                        step2Text.gameObject.SetActive(true);
                        step1Progress.GetComponent<Image>().color = doneColor;
                        progress = StepProgress.Two;
                    }
                    break;
                case StepProgress.Two:
                    if (bandInput.GetDown() || bandInput2.GetDown())
                    {
                        step2Text.gameObject.SetActive(false);
                        step3Text.gameObject.SetActive(true);
                        step2Progress.GetComponent<Image>().color = doneColor;
                        progress = StepProgress.Three;
                    }
                    break;
                case StepProgress.Three:
                    if (settingsInput.GetDown() || settingsInput2.GetDown())
                    {
                        step3Text.gameObject.SetActive(false);
                        step4Text.gameObject.SetActive(true);
                        step3Progress.GetComponent<Image>().color = doneColor;
                        progress = StepProgress.Four;
                    }
                    break;
                case StepProgress.Four:
                    if (settingsInput.GetDown() || settingsInput2.GetDown()) 
                    {
                        step4Progress.GetComponent<Image>().color = doneColor;
                        progress = StepProgress.Completed;
                    }
                    break;
                case StepProgress.Five:
                    break;
                case StepProgress.Completed:
                    timer += Time.deltaTime;
                    if (timer > 2f)
                    {
                        foreach (Transform child in transform)
                        {
                            child.gameObject.SetActive(false);
                        }
                        header.gameObject.SetActive(false);
                        page3.GetComponent<PageThree>().OpenPage();
                        gameObject.SetActive(false);
                        timer = -1000f;
                    }
                    
                    
                    return;
            }
        }


        public void Skip()
        {
            foreach (Transform child in transform)
            {
                child.gameObject.SetActive(false);
            }
            header.gameObject.SetActive(false);
            
            
            page3.GetComponent<PageThree>().OpenPage();
            gameObject.SetActive(false);
        }
    }


    public enum StepProgress
    {
        NotStarted,
        One,
        Two,
        Three,
        Four,
        Five,
        Completed
    }
}
