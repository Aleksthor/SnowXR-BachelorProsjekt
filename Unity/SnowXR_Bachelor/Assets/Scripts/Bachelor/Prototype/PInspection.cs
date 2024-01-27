using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using SnowXR.MassInjury;
using BA.GOAP;


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
                BleedingInjury bleedingInjury = TryToFindInjuredPerson();
                if (bleedingInjury)
                {
                    bleedingInjury.Inspect(Zone.Green);
                    bleedingInjury.transform.GetComponent<GoapAgent>().beliefes.AddState("cleared", 1);
                }
            }
            if (Input.GetKeyDown(KeyCode.Keypad2))
            {
                BleedingInjury bleedingInjury = TryToFindInjuredPerson();
                if (bleedingInjury)
                {
                    bleedingInjury.Inspect(Zone.Yellow);
                    bleedingInjury.transform.GetComponent<GoapAgent>().beliefes.AddState("cleared", 1);
                }
            }
            if (Input.GetKeyDown(KeyCode.Keypad3))
            {
                BleedingInjury bleedingInjury = TryToFindInjuredPerson();
                if (bleedingInjury)
                {
                    bleedingInjury.Inspect(Zone.Red);
                    bleedingInjury.transform.GetComponent<GoapAgent>().beliefes.AddState("cleared", 1);
                }
            }
            if (Input.GetKeyDown(KeyCode.Keypad4))
            {
                BleedingInjury bleedingInjury = TryToFindInjuredPerson();
                if (bleedingInjury)
                {
                    bleedingInjury.Inspect(Zone.Black);
                    bleedingInjury.transform.GetComponent<GoapAgent>().beliefes.AddState("cleared", 1);
                }
            }
        }

        // ReSharper disable Unity.PerformanceAnalysis
        private BleedingInjury TryToFindInjuredPerson()
        {
            int layerMask = 1 << 9;
            if(Physics.Raycast(transform.position, transform.forward, out RaycastHit hitInfo, 5, layerMask))
            {
                if (!hitInfo.transform.CompareTag("Agent")) return null;
                return hitInfo.transform.GetComponent<BleedingInjury>();
            }

            return null;
        }
    }
}
