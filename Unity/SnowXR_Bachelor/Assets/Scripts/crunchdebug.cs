using System;
using System.Text;
using TMPro;
using UnityEngine;

namespace SnowXR.Sim
{
    public class crunchdebug : MonoBehaviour
    {
        public TextMeshProUGUI text;

        private StringBuilder sb = new StringBuilder();

        private bool isDirty = false;
        private void OnEnable()
        {
            Logging.LoggedAnything += (s) =>
            {
                isDirty = true;
                sb.AppendLine(s);
            };
        }

        private void Update()
        {
            if (isDirty)
            {
                text.text = this.sb.ToString();
            }
        }
    }
}