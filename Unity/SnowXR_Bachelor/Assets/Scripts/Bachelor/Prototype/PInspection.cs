using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using SnowXR.MassInjury;

namespace BA.Prototype
{
    public class PInspection : MonoBehaviour
    {
        // Start is called before the first frame update
        void Start()
        {
        
        }

        // Update is called once per frame
        void Update()
        {
            if (Input.GetKeyDown(KeyCode.Keypad1))
            {
                InjuredPerson injuredPerson = TryToFindInjuredPerson();
                if (injuredPerson)
                {
                    injuredPerson.Inspect(Zone.Green);
                }
            }
            if (Input.GetKeyDown(KeyCode.Keypad2))
            {
                InjuredPerson injuredPerson = TryToFindInjuredPerson();
                if (injuredPerson)
                {
                    injuredPerson.Inspect(Zone.Yellow);
                }
            }
            if (Input.GetKeyDown(KeyCode.Keypad3))
            {
                InjuredPerson injuredPerson = TryToFindInjuredPerson();
                if (injuredPerson)
                {
                    injuredPerson.Inspect(Zone.Red);
                }
            }
            if (Input.GetKeyDown(KeyCode.Keypad4))
            {
                InjuredPerson injuredPerson = TryToFindInjuredPerson();
                if (injuredPerson)
                {
                    injuredPerson.Inspect(Zone.Black);
                }
            }
        }

        // ReSharper disable Unity.PerformanceAnalysis
        private InjuredPerson TryToFindInjuredPerson()
        {
            int layerMask = 1 << 9;
            if(Physics.Raycast(transform.position, transform.forward, out RaycastHit hitInfo, 5, layerMask))
            {
                if (!hitInfo.transform.CompareTag("Agent")) return null;
                return hitInfo.transform.GetComponent<InjuredPerson>();
            }

            return null;
        }
    }
}
