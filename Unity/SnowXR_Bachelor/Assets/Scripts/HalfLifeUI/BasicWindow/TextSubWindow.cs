using TMPro;
using UnityEngine;

namespace HalfLifeUI {
    public class TextSubWindow : SubWindow {

        [SerializeField] private TMP_Text TMPText;

        protected override void Awake() {
            base.Awake();
        }

        public string Text {
            set { TMPText.text = value;  }
        }
    }
}