using System.Collections;
using System.Collections.Generic;
using BNG;
using UnityEngine;

namespace SnowXR.MassInjury
{
    public class LeftHolster : MonoBehaviour
    {
        [SerializeField] private Transform holster1;
        [SerializeField] private Transform holster2;
        
        [Tooltip("Input used to toggle between hands")]
        [SerializeField] private ControllerBinding ToggleHandsInput = ControllerBinding.RightThumbstickDown;
        // Start is called before the first frame update
        void Start()
        {
            holster1.gameObject.SetActive(true);
            holster2.gameObject.SetActive(false);
        }

        // Update is called once per frame
        void Update()
        {
            if (ToggleHandsInput.GetDown() || Input.GetKeyDown(KeyCode.Tab))
            {
                holster1.gameObject.SetActive(!holster1.gameObject.activeSelf);
                holster2.gameObject.SetActive(!holster2.gameObject.activeSelf);
            }
        }
    }
}
