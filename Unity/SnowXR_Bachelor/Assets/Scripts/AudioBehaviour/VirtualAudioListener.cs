using System;
using System.Collections.Generic;
using UnityEngine;

namespace Unity.Template.VR.AudioBehaviour
{
    public class VirtualAudioListener : MonoBehaviour
    {
        public static List<VirtualAudioListener> virtualListeners = new();

        public static int currentPriority = int.MinValue;

        public static Action onPriorityChange;

        public int priority;

        private void OnEnable()
        {
            virtualListeners.Add(this);

            if (priority > currentPriority) onPriorityChange?.Invoke();
        }

        private void OnDisable()
        {
            virtualListeners.Remove(this);

            if (priority == currentPriority) onPriorityChange.Invoke();
        }

        [RuntimeInitializeOnLoadMethod(RuntimeInitializeLoadType.SubsystemRegistration)]
        private static void OnReset()
        {
            virtualListeners.Clear();
            currentPriority = int.MinValue;
        }
    }
}