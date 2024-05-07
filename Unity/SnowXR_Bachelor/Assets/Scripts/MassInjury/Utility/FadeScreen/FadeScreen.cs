using System;
using System.Collections;
using System.Collections.Generic;
using System.Threading;
using UnityEngine;

namespace SnowXR.MassInjury.Utility
{
    public class FadeScreen : MonoBehaviour
    {
        public bool fadeOnStart = true;
        public float fadeDuration = 2;
        public Color fadeColor;
        private Renderer renderer;
        
        
        // Start is called before the first frame update
        void Awake()
        {
            renderer = GetComponent<Renderer>();
        }

        private void Start()
        {
            if (fadeOnStart)
            {
                FadeIn();
            }
        }

        public void FadeIn()
        {
            Fade(1,0);
        }
        public void FadeOut()
        {
            Fade(0,1);
        }
        
        public void Fade(float alphaIn, float alphaOut)
        {
            StartCoroutine(FadeRoutine(alphaIn, alphaOut));
        }

        private IEnumerator FadeRoutine(float alphaIn, float alphaOut)
        {
            float timer = 0;
            while (timer <= fadeDuration)
            {
                Color newColor = fadeColor;
                newColor.a = Mathf.Lerp(alphaIn, alphaOut, timer / fadeDuration);
                renderer.materials[0].SetColor("_BaseColor", newColor);
                
                timer += Time.deltaTime;
                yield return null;
            }
            
            Color newColor2 = fadeColor;
            newColor2.a = alphaOut;
            renderer.material.SetColor("_Color", newColor2);
        }
    }
}
