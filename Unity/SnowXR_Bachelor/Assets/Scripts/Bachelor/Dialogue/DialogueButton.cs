using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

namespace Bachelor.Dialogue
{
    public class DialogueButton : MonoBehaviour
    {
        public Dialogue events;
        public bool destroyOnUse = false;

        public void Activate()
        {
            events.onLineExit.Invoke();
            if (destroyOnUse)
            {
                Destroy(gameObject);
            }
            
            DialogueController.instance.Activate(events);
            DialogueController.instance.LoadOptions();
        }
    }
}
