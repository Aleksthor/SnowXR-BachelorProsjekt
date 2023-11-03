using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

namespace  HalfLifeUI {
    
    [RequireComponent(typeof(Button))]
    public class YesNoComponent : MonoBehaviour {
        public SubWindowManager SubWindowManager;

        public string text = "";
        public string b1;
        public string b2;
        public SubWindow returnSubwindow;


        private void Awake() {
            GetComponent<Button>().onClick.AddListener(() => {
                SubWindowManager.CreateYesNoConfirm(text, returnSubwindow, b1, b2);
            });
        }
    }
}