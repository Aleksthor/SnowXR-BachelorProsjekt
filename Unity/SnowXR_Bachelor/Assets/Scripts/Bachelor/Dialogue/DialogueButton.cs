using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

namespace Bachelor.Dialogue
{
    public class DialogueButton : MonoBehaviour
    {
        public UnityEvent events;
        public bool destroyOnUse = false;

        public void Activate()
        {
            events.Invoke();
            if (destroyOnUse)
            {
                Destroy(gameObject);
            }
            
            DialogueController.instance.LoadOptions();
        }
    }
}
