using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;

namespace  HalfLifeUI {
    
    public class InfoWindow : BasicWindow {

        public string Text {
            set => _text.text = value;
        }

        [SerializeField] private TMP_Text _text;
    
    }
}