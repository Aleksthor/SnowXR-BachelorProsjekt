using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

namespace BA.Prototype
{
    public class HideUIOnDistance : MonoBehaviour
    {
        [Header("Distance to start hiding object")]
        [SerializeField] float distance = 7.5f;
        [SerializeField] float fadeInRange = 0.33f;
        [Header("Transform of the player")]
        [SerializeField] Transform playerTransform;
        [Header("UI Objects to Fade")]
        [SerializeField] List<Image> images;
        [SerializeField] List<Text> texts;

        // Cache this for later use
        private float full_transparency;

        private void Awake()
        {
            full_transparency = distance - (distance * fadeInRange);
        }
        private void FixedUpdate()
        {
            // Cache the distance since we use it several times
            float dist = Vector3.Distance(playerTransform.position, transform.position);
            //Check the distance and whether we should show or hide the object
            if (dist > distance)
            {
                transform.GetChild(0).gameObject.SetActive(false);
            }
            else
            {
                transform.GetChild(0).gameObject.SetActive(true);
                // Fade in this range
                if (dist > full_transparency)
                {
                    // Fade all images
                    foreach(var image in images)
                    {
                        Color color = image.color;
                        color.a = map(dist, 7.5f, full_transparency, 0f, 1f);
                        image.color = color;
                    }
                    // Fade all texts
                    foreach (var text in texts)
                    {
                        Color color = text.color;
                        color.a = map(dist, 7.5f, full_transparency, 0f, 1f);
                        text.color = color;
                    }
                }
                
            }
        }

        float map(float s, float a1, float a2, float b1, float b2)
        {
            return b1 + (s - a1) * (b2 - b1) / (a2 - a1);
        }
    }
}
