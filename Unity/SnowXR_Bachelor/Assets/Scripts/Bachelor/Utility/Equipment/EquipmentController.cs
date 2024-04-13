using System.Collections;
using System.Collections.Generic;
using BNG;
using UnityEngine;

namespace SnowXR.Sim
{
    public class EquipmentController : MonoBehaviour
    {
        [SerializeField] private ControllerBinding input = ControllerBinding.YButtonDown;

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
        void FixedUpdate()
        {
            if (input.GetDown() || Input.GetKeyDown(KeyCode.Q))
            {
                foreach (var gameObject in equipment)
                {
                    gameObject.SetActive(!gameObject.activeSelf);
                }
            }
        }
    }
}
