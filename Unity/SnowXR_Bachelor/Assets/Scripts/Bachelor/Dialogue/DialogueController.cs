using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

namespace Bachelor.Dialogue
{
    public class DialogueController : MonoBehaviour
    {
        public static DialogueController instance;

        [Header("Dialogue Options")] [SerializeField]
        private List<Dialogue> playerOptions = new List<Dialogue>();
        

        [SerializeField] RectTransform dialogueOptionsParent;
        [SerializeField] private GameObject buttonPrefab;
        
        private List<Text> dialogueTextList = new List<Text>();
        
        [HideInInspector] DialogueResponder activeResponder;
        private List<Dialogue> playerResponderOptions = new List<Dialogue>();

        private void Awake()
        {
            if (instance == null)
            {
                instance = this;
            }
        }

        // Start is called before the first frame update
        void Start()
        {
            LoadOptions();
        }

        // Update is called once per frame
        void Update()
        {



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

                button.GetComponent<DialogueButton>().events = option.onLineExit;
                button.GetComponent<DialogueButton>().destroyOnUse = option.removeOnUse;
                button.GetComponent<Button>().onClick.AddListener(button.GetComponent<DialogueButton>().Activate);
                
                button.GetComponentInChildren<Text>().text = option.line;

                dialogueTextList.Add(button.GetComponentInChildren<Text>());
            }

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
    }
}
