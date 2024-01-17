using System;
using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.UI;

namespace Bachelor.Dialogue
{
    public class DialogueController : MonoBehaviour
    {

        public static DialogueController instance;
        
        [Header("Dialogue Options")] 
        [SerializeField] private List<Dialogue> playerOptions = new List<Dialogue>();
        
        [Header("Set In Editor")] 
        [SerializeField] private Transform systemParent;
        [SerializeField] RectTransform dialogueOptionsParent;
        [SerializeField] RectTransform pointerListParent;
        [SerializeField] private GameObject uiTextPrefab;
        [SerializeField] private GameObject pointerPrefab;

        private int currentPointer = 0;
        private List<string> options = new List<string>();
        private List<TextMeshProUGUI> dialogueTextList = new List<TextMeshProUGUI>();
        private List<Image> pointerImageList = new List<Image>();

        private List<Image> activeImages = new List<Image>();

        private float fade = 0f;
        private float fadeSpeed = 1.5f;
        private float activationDelay = 3f;
        private float activationTimer = 0f;

        public DialogueResponder activeResponder;
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
            List<string> playerLines = new List<string>();
            foreach (var dialogue in playerOptions)
            {
                playerLines.Add(dialogue.line);
            }
            foreach (var dialogue in playerResponderOptions)
            {
                playerLines.Add(dialogue.line);
            }
            
            LoadOptions(playerLines);
        }

        // Update is called once per frame
        void Update()
        {
            
            FadeDialogue();
            HandleInputs();

            if (activeResponder)
            {
                
            }
            
        }


        private void ChangeOption(int option)
        {
            currentPointer = option % dialogueTextList.Count;
            if (currentPointer < 0) currentPointer = dialogueTextList.Count - 1;
            for (int i = 0; i < pointerImageList.Count; i++)
            {
                pointerImageList[i].enabled = i == currentPointer;
            }
        }

        private void Activate()
        {
            if (currentPointer < playerOptions.Count)
            {
                playerOptions[currentPointer].onLineExit.Invoke();
                if (playerOptions[currentPointer].removeOnUse)
                {
                    playerOptions[currentPointer].onLineExit.RemoveAllListeners();  
                    playerOptions.RemoveAt(currentPointer);
                    List<string> playerLines = new List<string>();
                    foreach (var dialogue in playerOptions)
                    {
                        playerLines.Add(dialogue.line);
                    }
                    foreach (var dialogue in playerResponderOptions)
                    {
                        playerLines.Add(dialogue.line);
                    }
            
                    LoadOptions(playerLines);
                }
            }
            else
            {
                int error = playerOptions.Count;
                playerResponderOptions[currentPointer - error].onLineExit.Invoke();
                if (playerResponderOptions[currentPointer - error].removeOnUse)
                {
                    playerResponderOptions[currentPointer - error].onLineExit.RemoveAllListeners();
                    playerResponderOptions.RemoveAt(currentPointer - error);
                    List<string> playerLines = new List<string>();
                    foreach (var dialogue in playerOptions)
                    {
                        playerLines.Add(dialogue.line);
                    }
                    foreach (var dialogue in playerResponderOptions)
                    {
                        playerLines.Add(dialogue.line);
                    }
            
                    LoadOptions(playerLines);
                }
            }
            
           
            activationTimer = activationDelay;
        }


        public void LoadOptions(List<string> _options)
        {
            options = _options;
            foreach (Transform child in dialogueOptionsParent)
            {
                Destroy(child.gameObject);
            }
            foreach (Transform child in pointerListParent)
            {
                Destroy(child.gameObject);
            }

            activeImages.Clear();
            pointerImageList.Clear();
            dialogueTextList.Clear();
            foreach (string option in options)
            {
                GameObject text = Instantiate(uiTextPrefab, dialogueOptionsParent);
                GameObject pointer = Instantiate(pointerPrefab, pointerListParent);

                activeImages.Add(pointer.GetComponentInChildren<Image>());
                activeImages.Add(text.GetComponent<Image>());
                activeImages.Add(text.transform.Find("Background").GetComponent<Image>());
                
                text.GetComponentInChildren<TextMeshProUGUI>().text = option;
                pointer.GetComponentInChildren<Image>().enabled = false;
                
                dialogueTextList.Add(text.GetComponentInChildren<TextMeshProUGUI>());
                pointerImageList.Add(pointer.GetComponentInChildren<Image>());
            }

            currentPointer = currentPointer % pointerImageList.Count;
            for (int i = 0; i < pointerImageList.Count; i++)
            {
                pointerImageList[i].enabled = i == currentPointer;
            }



        }


        // ReSharper disable Unity.PerformanceAnalysis
        private void HandleInputs()
        {
            if (Input.GetKeyDown(KeyCode.DownArrow))
            {
                ChangeOption(currentPointer + 1);
            }
            if (Input.GetKeyDown(KeyCode.UpArrow))
            {
                ChangeOption(currentPointer - 1);
            }
            if (Input.GetKeyDown(KeyCode.Return))
            {
                Activate();
            }
        }

        private void FadeDialogue()
        {
            systemParent.gameObject.SetActive(fade != 0f);

            if (activationTimer > 0f)
            {
                fade = 0f;
                activationTimer -= Time.deltaTime;
                return;
            }

            if (Input.GetKey(KeyCode.Tab))
            {
                fade = Mathf.Clamp(fade + (Time.deltaTime * fadeSpeed), 0f, 1f);
            }
            else
            {
                fade = Mathf.Clamp(fade - (Time.deltaTime * fadeSpeed), 0f, 1f);
            }
            foreach (var image in activeImages)
            {
                Color color = image.color;
                color.a = fade;
                image.color = color;
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
            List<string> playerLines = new List<string>();
            foreach (var dialogue in playerOptions)
            {
                playerLines.Add(dialogue.line);
            }
            foreach (var dialogue in playerResponderOptions)
            {
                playerLines.Add(dialogue.line);
            }
            
            LoadOptions(playerLines);
        }
    }
}
