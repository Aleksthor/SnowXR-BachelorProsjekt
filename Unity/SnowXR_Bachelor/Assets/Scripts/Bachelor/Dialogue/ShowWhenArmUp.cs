using System;
using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.UI;

namespace MassInjury.Dialogue
{
    public class ShowWhenArmUp : MonoBehaviour
    {
        [SerializeField] private Transform playerController;
        [SerializeField] private Transform leftHand;

        [HideInInspector] public UnityEvent onShowDialogue = new UnityEvent();

        private bool shown = false;
        private void Update()
        {
            Transform child = transform.GetChild(0);
            
            float slope = Vector3.Dot(child.right, Vector3.up);
            float angle = Vector3.Dot(child.right, playerController.forward);

            float slopeFade = GetSlopeFade(slope);
            float angleFade = GetAngleFade(angle);

            float fade = Mathf.Clamp(slopeFade * angleFade, 0f, 1f);

            if (fade > 0f && !shown)
            {
                shown = true;
                onShowDialogue?.Invoke();
            }
            if (fade <= 0f && shown)
            {
                shown = false;
            }
            
            
            foreach (Transform granChild in child)
            {
                granChild.GetComponent<DialogueButton>().Fade(fade);
            }
            
            float rotation = Vector3.Dot(transform.up, Vector3.up);

            Vector3 localScale = child.localScale;
            localScale.y = rotation > 0f ? 1f : -1f;
            child.localScale = localScale;

        }

        private float GetSlopeFade(float slope)
        {
            float map = 0f;
            if (slope > 0f)
            {
                map = remap(slope, 0.3f, 0f, 0f, 1.2f);
                return Mathf.Clamp(map, 0f, 1.2f);
            }
            map = remap(slope, -0.3f, 0f, 0f, 1.2f);
            return Mathf.Clamp(map, 0f, 1.2f);
        }
        
        private float GetAngleFade(float angle)
        {
            float map = 0f;
            if (angle > 0f)
            {
                map = remap(angle, 0.8f, 0f, 0f, 1f);
                return Mathf.Clamp(map, 0f, 1f);
            }
            map = remap(angle, -0.8f, 0f, 0f, 1f);
            return Mathf.Clamp(map, 0f, 1f);
        }
        
        public static float remap(float val, float in1, float in2, float out1, float out2)
        {
            return out1 + (val - in1) * (out2 - out1) / (in2 - in1);
        }
    }
}
