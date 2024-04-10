using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.UI;

namespace MassInjury.Dialogue
{
    public class DialogueButton : MonoBehaviour
    {
        public Dialogue events;
        public bool destroyOnUse = false;

        [SerializeField] private List<Image> images = new List<Image>();
        [SerializeField] private List<Text> texts = new List<Text>();

        private bool waitForAudio = false;

        public void Activate()
        {
            DialogueController.instance.GetActiveResponder();
            
            if (!ReferenceEquals(events.dialogueFemale, null))
            {
                // Play Sound
                DialogueController.instance.PlayAudio(events.dialogueFemale);

                waitForAudio = true;
                return;
            }
            
            events.onLineExit.Invoke();
            
            DialogueController.instance.Activate(events);
            DialogueController.instance.LoadOptions();
            
            if (destroyOnUse)
            {
                Destroy(gameObject);
            }
        }

        private void Update()
        {
            if (waitForAudio)
            {
                if (!ReferenceEquals(DialogueController.instance.dialogueAudioSource.clip, null))
                {
                    if (DialogueController.instance.dialogueAudioSource.time >=
                        DialogueController.instance.dialogueAudioSource.clip.length)
                    {
                        events.onLineExit.Invoke();
            
                        DialogueController.instance.Activate(events);
                        DialogueController.instance.LoadOptions();
                        waitForAudio = false;
                    
                        if (destroyOnUse)
                        {
                            Destroy(gameObject);
                        }
                    }
                }
                else
                {
                    events.onLineExit.Invoke();
            
                    DialogueController.instance.Activate(events);
                    DialogueController.instance.LoadOptions();
                    waitForAudio = false;
                    
                    if (destroyOnUse)
                    {
                        Destroy(gameObject);
                    }
                }
                
            }
        }

        public void Fade(float fade)
        {
            foreach (var image in images)
            {
                Color color = image.color;
                color.a = fade;
                image.color = color;
            }
            
            foreach (var text in texts)
            {
                Color color = text.color;
                color.a = fade;
                text.color = color;
            }
        }
    }
}
