using System.Collections;
using System.Collections.Generic;
using MassInjury.Person;
using UnityEngine;
using UnityEngine.UI;

namespace SnowXR.MassInjury
{
    public class PageSix : MonoBehaviour
    {
        [SerializeField] private StepProgress progress;
        
        [SerializeField] private Transform header;
        [SerializeField] private Transform skip;
        [SerializeField] private Transform page7;
        
        [SerializeField] private Transform step1Text;
        [SerializeField] private Transform step2Text;
        [SerializeField] private Transform step3Text;
        [SerializeField] private Transform step4Text;
        [SerializeField] private Transform step5Text;
        
        [SerializeField] private Transform step1Button;
        
        [SerializeField] private Transform step2Progress;
        [SerializeField] private Transform step3Progress;
        [SerializeField] private Transform step4Progress;
        [SerializeField] private Transform step5Progress;
        
        [SerializeField] private Transform patient;
        [SerializeField] private Transform tourniquetParent;
        
        
        [SerializeField] private Color doneColor;

        private List<TourniquetPlacement> tourniques = new List<TourniquetPlacement>();
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
            
            step1Button.gameObject.SetActive(true);
            patient.gameObject.SetActive(true);
            

            progress++;
        }

        public void Understood()
        {
            step1Text.gameObject.SetActive(false);
            step1Button.gameObject.SetActive(false);
            step2Text.gameObject.SetActive(true);
            
            step2Progress.gameObject.SetActive(true);
            step3Progress.gameObject.SetActive(true);
            step4Progress.gameObject.SetActive(true);
            step5Progress.gameObject.SetActive(true);

            foreach (Transform child in tourniquetParent)
            {
                tourniques.Add(child.GetComponent<TourniquetPlacement>());
                tourniques[^1].onPickup.AddListener(GrabTourniquet);
            }
            
            
            progress++;
        }

        private void GrabTourniquet()
        {
            foreach (TourniquetPlacement tourniquet in tourniques)
            {
                tourniquet.onPickup.RemoveAllListeners();
                tourniquet.onPlacement.AddListener(PlaceTourniquet);
            }
            
            step2Text.gameObject.SetActive(false);
            step2Progress.GetComponent<Image>().color = doneColor;
            step3Text.gameObject.SetActive(true);
            progress++;
        }
        
        private void PlaceTourniquet()
        {
            step3Text.gameObject.SetActive(false);
            step3Progress.GetComponent<Image>().color = doneColor;
            step4Text.gameObject.SetActive(true);
            
            progress++;

            IEnumerator coroutine = WaitAndSetupStrapTourniquet();
            StartCoroutine(coroutine);
        }
        
        IEnumerator WaitAndSetupStrapTourniquet()
        {
            // suspend execution for 5 seconds
            yield return new WaitForSeconds(0.1f);
            List<Transform> sockets =
                patient.GetComponent<GenderComponent>().GetMesh()
                    .GetComponent<TourniquetSockets>().GetSockets();
            
            foreach (Transform parent in sockets)
            {
                if (parent.childCount > 0)
                {
                    parent.GetChild(0).Find("Strap_Interactable 1").GetComponent<TourniquetStrapSlider>().onStrapTourniquet.AddListener(StrapTourniquet);
                }
            }
        }
        
        private void StrapTourniquet()
        {
            
            step4Text.gameObject.SetActive(false);
            step4Progress.GetComponent<Image>().color = doneColor;
            step5Text.gameObject.SetActive(true);
            
            progress++;
            
            IEnumerator coroutine = WaitAndSetupPinTourniquet();
            StartCoroutine(coroutine);
        }
        
        IEnumerator WaitAndSetupPinTourniquet()
        {
            // suspend execution for 5 seconds
            yield return new WaitForSeconds(0.1f);
            List<Transform> sockets =
                patient.GetComponent<GenderComponent>().GetMesh().GetComponent<BleedingSockets>()
                    .GetComponent<TourniquetSockets>().GetSockets();
            
            foreach (Transform parent in sockets)
            {
                if (parent.childCount > 0)
                {
                    parent.GetChild(0).Find("PositionOffset").Find("Collider").GetComponent<TourniquetPinSlider>().onPinStrap.AddListener(PinStrap);
                }
            }
        }
        
        private void PinStrap()
        {
            step5Progress.GetComponent<Image>().color = doneColor;
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
                    page7.GetComponent<PageSeven>().OpenPage();
                    
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
            page7.GetComponent<PageSeven>().OpenPage();
            gameObject.SetActive(false);
        }
    }
}
