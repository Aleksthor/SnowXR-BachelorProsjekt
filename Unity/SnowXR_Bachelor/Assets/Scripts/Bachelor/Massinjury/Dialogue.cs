using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

namespace SnowXR.MassInjury
{
    [CreateAssetMenu(fileName = "DialogueAsset", menuName = "DialogueSO")]
    public class Dialogue : ScriptableObject
    {
        [SerializeField] public string dialogue;
        [SerializeField] public List<Dialogue> replies = new List<Dialogue>();
        [SerializeField] private UnityEvent onDialogueExit = new UnityEvent();
        
        
    }
}
