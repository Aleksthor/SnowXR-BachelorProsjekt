using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

namespace SnowXR.MassInjury
{
    public class PageFour : MonoBehaviour
    {
        [SerializeField] private StepProgress progress;
        
        [SerializeField] private Transform header;
        [SerializeField] private Transform skip;
        [SerializeField] private Transform page5;
        
        [SerializeField] private Transform step1Text;
        [SerializeField] private Transform step2Text;
        [SerializeField] private Transform step3Text;
        [SerializeField] private Transform step1Progress;
        [SerializeField] private Transform step2Progress;
        [SerializeField] private Transform step3Progress;
        
        [SerializeField] private Transform patient;
        [SerializeField] private PulsePlayer rightHand;
        [SerializeField] private PulsePlayer leftHand;
        
        
        [SerializeField] private Color doneColor;
        
        private float timer = 0f;
        
        private void Awake()
        {
            foreach (Transform child in transform)
            {
                child.gameObject.SetActive(false);
            }
            header.gameObject.SetActive(false);
            patient.gameObject.SetActive(false);
            skip.gameObject.SetActive(false);

            progress = StepProgress.NotStarted;
        }
        
        public void OpenPage()
        {
            step1Text.gameObject.SetActive(true);
            header.gameObject.SetActive(true);
            skip.gameObject.SetActive(true);
            
            patient.gameObject.SetActive(true);
            
            step1Progress.gameObject.SetActive(true);
            step2Progress.gameObject.SetActive(true);
            step3Progress.gameObject.SetActive(true);
            
            rightHand.onListenWrist.AddListener(CheckWrist);
            leftHand.onListenWrist.AddListener(CheckWrist);

            progress++;
        }

        private void CheckWrist()
        {
            rightHand.onListenWrist.RemoveAllListeners();
            leftHand.onListenWrist.RemoveAllListeners();
            
            rightHand.onListenNeck.AddListener(CheckNeck);
            leftHand.onListenNeck.AddListener(CheckNeck);
            
            step1Text.gameObject.SetActive(false);
            step2Text.gameObject.SetActive(true);
            step1Progress.GetComponent<Image>().color = doneColor;
            
            progress++;
        }

        private void CheckNeck()
        {
            rightHand.onListenNeck.RemoveAllListeners();
            leftHand.onListenNeck.RemoveAllListeners();
            
            patient.GetComponent<BleedingInjury>().onRecievePressure.AddListener(StopBleeding);
            
            step2Text.gameObject.SetActive(false);
            step3Text.gameObject.SetActive(true);
            step2Progress.GetComponent<Image>().color = doneColor;
            
            progress++;
        }

        private void StopBleeding()
        {
            patient.GetComponent<BleedingInjury>().onRecievePressure.RemoveAllListeners();
            
            step3Progress.GetComponent<Image>().color = doneColor;

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
                    page5.GetComponent<PageFive>().OpenPage();
                    
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
            patient.GetComponent<BleedingInjury>().onRecievePressure.RemoveAllListeners();
            rightHand.onListenWrist.RemoveAllListeners();
            leftHand.onListenWrist.RemoveAllListeners();
            rightHand.onListenNeck.RemoveAllListeners();
            leftHand.onListenNeck.RemoveAllListeners();
            
            
            header.gameObject.SetActive(false);
            page5.GetComponent<PageFive>().OpenPage();
            gameObject.SetActive(false);
        }
    }
}
