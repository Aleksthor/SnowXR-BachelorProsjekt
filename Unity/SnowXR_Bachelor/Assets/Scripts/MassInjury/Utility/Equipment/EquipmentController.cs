using System.Collections;
using System.Collections.Generic;
using BNG;
using UnityEngine;

namespace SnowXR.MassInjury.Utility
{
    public class EquipmentController : MonoBehaviour
    {
        [SerializeField] private ControllerBinding input = ControllerBinding.YButtonDown;
        [SerializeField] private ControllerBinding input2 = ControllerBinding.BButtonDown;
        [SerializeField] private ControllerBinding input3 = ControllerBinding.YButtonDown;
        [SerializeField] private ControllerBinding input4 = ControllerBinding.BButtonDown;

        [SerializeField] private List<GameObject> equipment = new List<GameObject>();
        [SerializeField] private Transform centreEye;
        // Start is called before the first frame update
        void Start()
        {
            foreach (var gameObject in equipment)
            {
                gameObject.SetActive(true);
            }
        }

        // Update is called once per frame
        void Update()
        {
            foreach (var gameObject in equipment)
            {
                gameObject.SetActive(input.GetDown() || Input.GetKey(KeyCode.Q) || input2.GetDown());
            }

            if (input3.GetDown() || Input.GetKeyDown(KeyCode.Q) || input4.GetDown())
            {
                transform.position = centreEye.position + new Vector3(centreEye.forward.x, 0f, centreEye.forward.z).normalized 
                    * 0.33f - Vector3.up * 0.25f;
                transform.rotation = Quaternion.LookRotation(new Vector3(centreEye.forward.x, 0f, centreEye.forward.z).normalized);
            }
        }
    }
}
