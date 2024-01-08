using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace SnowXR.Sim
{
    public class CameraOutlineComponent : MonoBehaviour
    {
        [SerializeField] List<Outline> allOutlines = new List<Outline>();
        // Update is called once per frame
        void FixedUpdate()
        {

            for (int i = 0; i < allOutlines.Count; i++)
            {
                allOutlines[i].enabled = false;
            }

            int layermask = 1 << 7;
            if(Physics.Raycast(transform.position, transform.forward, out RaycastHit hitInfo, 5, layermask))
            {
                hitInfo.transform.GetComponent<Outline>().enabled = true;
            }
        }
    }
}
