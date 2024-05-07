using System.Collections;
using System.Collections.Generic;
using SnowXR.MassInjury.Person;
using UnityEngine;
using UnityEngine.UI;

namespace SnowXR.MassInjury
{
    public class PageSeven : MonoBehaviour
    {
        [SerializeField] private StepProgress progress;
        
        [SerializeField] private Transform header;
        [SerializeField] private Transform skip;
        [SerializeField] private Transform page8;
        
        [SerializeField] private Transform step1Text;
        [SerializeField] private Transform step2Text;
        [SerializeField] private Transform step3Text;
        [SerializeField] private Transform step4Text;
        
        [SerializeField] private Transform step1Button;
        
        [SerializeField] private Transform step2Progress;
        [SerializeField] private Transform step3Progress;
        [SerializeField] private Transform step4Progress;
        
        [SerializeField] private Transform patient;
        [SerializeField] private Transform pressureReliefParent;
        
        
        [SerializeField] private Color doneColor;

        private List<PressureReliefPlacement> pressureReliefs = new List<PressureReliefPlacement>();
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
            skip.gameObject.SetActive(true);
            
            step1Button.gameObject.SetActive(true);
            

            progress++;
        }
        
        public void Understood()
        {
            patient.gameObject.SetActive(true);
            step1Text.gameObject.SetActive(false);
            step1Button.gameObject.SetActive(false);
            step2Text.gameObject.SetActive(true);
            
            step2Progress.gameObject.SetActive(true);
            step3Progress.gameObject.SetActive(true);
            step4Progress.gameObject.SetActive(true);

            foreach (Transform child in pressureReliefParent)
            {
                pressureReliefs.Add(child.GetComponent<PressureReliefPlacement>());
                pressureReliefs[^1].onPickup.AddListener(GrabPressureRelief);
            }
            
            patient.GetComponent<BleedingInjury>().onRecievePressureRelief.AddListener(PushPressureRelief);
            
            progress++;
        }
        
        private void GrabPressureRelief()
        {
            foreach (PressureReliefPlacement pressureRelief in pressureReliefs)
            {
                pressureRelief.onPickup.RemoveAllListeners();
                pressureRelief.onPlacement.AddListener(PlacePressureRelief);
            }
            
            step2Text.gameObject.SetActive(false);
            step2Progress.GetComponent<Image>().color = doneColor;
            step3Text.gameObject.SetActive(true);
            progress++;
        }
        
        private void PlacePressureRelief()
        {
            step3Text.gameObject.SetActive(false);
            step3Progress.GetComponent<Image>().color = doneColor;
            step4Text.gameObject.SetActive(true);
            
           
            progress++;
            
            IEnumerator coroutine = WaitAndSetupPressureRelief();
            StartCoroutine(coroutine);
        }
        
        IEnumerator WaitAndSetupPressureRelief()
        {
            // suspend execution for 5 seconds
            yield return new WaitForSeconds(0.1f);
            Transform sockets =
                patient.GetComponent<GenderComponent>().GetMesh()
                    .GetComponent<PressureReliefSockets>().GetSocket();
            
            sockets.GetChild(0).GetComponentInChildren<PressureReliefSlider>().onPush.AddListener(PushPressureRelief);
        }
        
        private void PushPressureRelief()
        {
            
            patient.GetComponent<BleedingInjury>().onRecievePressureRelief.RemoveAllListeners();
            
            step4Progress.GetComponent<Image>().color = doneColor;
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
                    page8.GetComponent<PageEight>().OpenPage();
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
            

            patient.GetComponent<BleedingInjury>().onPlaceTourniquet.RemoveAllListeners();
            
            header.gameObject.SetActive(false);
            page8.GetComponent<PageEight>().OpenPage();
            gameObject.SetActive(false);
        }
    }
}
