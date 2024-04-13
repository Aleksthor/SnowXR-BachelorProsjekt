using System.Collections;
using System.Collections.Generic;
using MassInjury.Dialogue;
using UnityEngine;
using UnityEngine.UI;

namespace SnowXR.MassInjury
{
    public class PageEight : MonoBehaviour
    {
        [SerializeField] private StepProgress progress;
        
        [SerializeField] private Transform header;
        [SerializeField] private Transform skip;
        [SerializeField] private Transform menu;
        
        [SerializeField] private Transform step1Text;
        [SerializeField] private Transform step2Text;
        [SerializeField] private Transform step3Text;
        
        
        [SerializeField] private Transform step1Progress;
        [SerializeField] private Transform step2Progress;

        [SerializeField] private Transform step3Button;
        
        [SerializeField] private Transform patient;
        [SerializeField] private ShowWhenArmUp armUp;
        
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
            patient.gameObject.SetActive(false);
        }
        
        public void OpenPage()
        {
            skip.gameObject.SetActive(true);
            patient.gameObject.SetActive(true);
            
            step1Text.gameObject.SetActive(true);
            step1Progress.gameObject.SetActive(true);
            step2Progress.gameObject.SetActive(true);

            armUp.onShowDialogue.AddListener(ShowDialogue);
            
            progress++;
        }
        
        public void ShowDialogue()
        {
            step1Text.gameObject.SetActive(false);
            step2Text.gameObject.SetActive(true);
            step1Progress.GetComponent<Image>().color = doneColor;

            armUp.onShowDialogue.RemoveAllListeners();
            
            patient.GetComponent<DialogueResponder>().GetPlayerOptions()[0].onLineExit.AddListener(AskIfAwake);
            
            progress++;
        }
        
        public void AskIfAwake()
        {
            progress = StepProgress.Completed;
            step2Progress.GetComponent<Image>().color = doneColor;
            
            
            progress = StepProgress.Completed;
        }
        
        public void FixedUpdate()
        {
            if (progress == StepProgress.Completed)
            {
                timer += Time.deltaTime;
                if (timer > 2f)
                {
                    Three();
                    timer = -1000f;
                }
            }
        }

        private void Three()
        {
            step1Progress.gameObject.SetActive(false);
            step2Progress.gameObject.SetActive(false);
            step2Text.gameObject.SetActive(false);
            step3Text.gameObject.SetActive(true);
            step3Button.gameObject.SetActive(true);
        }

        public void Completed()
        {
            foreach (Transform child in transform)
            {
                child.gameObject.SetActive(false);
            }
            header.gameObject.SetActive(false);
                    
            patient.gameObject.SetActive(false);
            menu.gameObject.SetActive(true);
                    
            gameObject.SetActive(false);
        }
        
        public void Skip()
        {
            foreach (Transform child in transform)
            {
                child.gameObject.SetActive(false);
            }
            patient.gameObject.SetActive(false);
            

            armUp.onShowDialogue.RemoveAllListeners();
            
            header.gameObject.SetActive(false);
            
            menu.gameObject.SetActive(true);
            
            gameObject.SetActive(false);
        }
    }
}
