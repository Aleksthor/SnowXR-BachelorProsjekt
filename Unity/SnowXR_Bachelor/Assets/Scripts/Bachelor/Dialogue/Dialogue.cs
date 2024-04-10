using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

namespace Bachelor.Dialogue
{
    [System.Serializable]
    public class Dialogue
    {
        [SerializeField] public string line;
        [SerializeField] public UnityEvent onLineExit = new UnityEvent();
        [SerializeField] public bool removeOnUse = false;
        [SerializeField] public AudioClip dialogueFemale;
        [SerializeField] public AudioClip dialogueMale;
    }
}