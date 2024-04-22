using System.Collections;
using System.Collections.Generic;
using BNG;
using UnityEngine;

namespace SnowXR.Sim
{
    public class EquipmentController : MonoBehaviour
    {
        [SerializeField] private ControllerBinding input = ControllerBinding.YButtonDown;
        [SerializeField] private ControllerBinding input2 = ControllerBinding.BButtonDown;

        [SerializeField] private List<GameObject> equipment = new List<GameObject>();
        // Start is called before the first frame update
        void Start()
        {
            foreach (var gameObject in equipment)
            {
                gameObject.SetActive(false);
            }
        }

        // Update is called once per frame
        void Update()
        {
            if (input.GetDown() || Input.GetKeyDown(KeyCode.Q) || input2.GetDown())
            {
                foreach (var gameObject in equipment)
                {
                    gameObject.SetActive(!gameObject.activeSelf);
                }
            }
        }
    }
}
