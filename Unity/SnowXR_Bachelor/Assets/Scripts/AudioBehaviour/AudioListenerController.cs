using System.Linq;
using UnityEngine;

namespace Unity.Template.VR.AudioBehaviour
{
    public class AudioListenerController : MonoBehaviour
    {
        private void OnEnable()
        {
#if UNITY_EDITOR
            if (FindObjectsOfType<AudioListenerController>().Length > 1)
                Debug.LogError("Too many audio listener controllers somehow!");
#endif

            VirtualAudioListener.onPriorityChange = OnPriorityChange;
        }

        private void OnDisable()
        {
            VirtualAudioListener.onPriorityChange -= OnPriorityChange;
        }

        private void OnPriorityChange()
        {
            var listener = VirtualAudioListener.virtualListeners.OrderByDescending(v => v.priority).FirstOrDefault();

            if (listener == null) Debug.LogError("Delegate invoked with no behaviours?");

            transform.SetParent(listener.transform);
        }
    }
}