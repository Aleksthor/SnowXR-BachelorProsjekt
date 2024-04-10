using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

namespace MassInjury.Dialogue
{
    public class DialogueController : MonoBehaviour
    {
        public static DialogueController instance;

        [Header("Dialogue Options")] [SerializeField]
        private List<Dialogue> playerOptions = new List<Dialogue>();
        

        [SerializeField] RectTransform dialogueOptionsParent;
        [SerializeField] private GameObject buttonPrefab;
        
        private List<Text> dialogueTextList = new List<Text>();
        DialogueResponder activeResponder;
        private List<Dialogue> playerResponderOptions = new List<Dialogue>();

        [SerializeField] public AudioSource dialogueAudioSource;

        private void Awake()
        {
            if (instance == null)
            {
                instance = this;
            }
            else
            {
                Destroy(gameObject);
            }
        }

        // Start is called before the first frame update
        void Start()
        {
            LoadOptions();
        }
        

        


        public void LoadOptions()
        {
            List<Dialogue> _options = new List<Dialogue>();
            
            foreach (var dialogue in playerOptions)
            {
                _options.Add(dialogue);
            }

            foreach (var dialogue in playerResponderOptions)
            {
                _options.Add(dialogue);
            }
            
            
            foreach (Transform child in dialogueOptionsParent)
            {
                Destroy(child.gameObject);
            }
            
            dialogueTextList.Clear();
            foreach (var option in _options)
            {
                GameObject button = Instantiate(buttonPrefab, dialogueOptionsParent);

                button.GetComponent<DialogueButton>().events = option;
                button.GetComponent<DialogueButton>().destroyOnUse = option.removeOnUse;
                button.GetComponent<Button>().onClick.AddListener(button.GetComponent<DialogueButton>().Activate);
                
                button.GetComponentInChildren<Text>().text = option.line;

                dialogueTextList.Add(button.GetComponentInChildren<Text>());
            }

        }

        public void Activate(Dialogue dialoge)
        {
            if (!dialoge.removeOnUse) return;
            
            List<Dialogue> _options = new List<Dialogue>();
            
            foreach (var dialogue in playerOptions)
            {
                _options.Add(dialogue);
            }

            foreach (var dialogue in playerResponderOptions)
            {
                _options.Add(dialogue);
            }
            
            

            if (playerOptions.Contains(dialoge))
            {
                playerOptions.Remove(dialoge);
                return;
            }
            if (playerResponderOptions.Contains(dialoge))
            {
                playerResponderOptions.Remove(dialoge);
                return;
            }
        }

        public DialogueResponder GetActiveResponder()
        {
            return activeResponder;
        }
        

        public void SetActiveResponder(DialogueResponder responder)
        {
            if (activeResponder == responder) return;
            activeResponder = responder;

            playerResponderOptions = new List<Dialogue>();
            if (activeResponder)
            {
                playerResponderOptions = activeResponder.GetPlayerOptions();
            }
            

            LoadOptions();
        }

        public void PlayAudio(AudioClip clip)
        {
            if (ReferenceEquals(clip, null)) return;
            dialogueAudioSource.clip = clip;
            dialogueAudioSource.Play();
        }
        
        
    }
}
