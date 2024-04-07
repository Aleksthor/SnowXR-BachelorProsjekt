using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace SnowXR.MassInjury
{
    public class DialogueFunctions : MonoBehaviour
    {
        public void GoToReception()
        {
            int layerMask = 1 << 9;
            Collider[] colliders = Physics.OverlapSphere(transform.position, 10f, layerMask);
            foreach (var c in colliders)
            {
                if (c.CompareTag("Patient"))
                {
                    MassInjuryAgent agent = c.GetComponent<MassInjuryAgent>();
                    if (!ReferenceEquals(agent, null))
                    {
                        agent.GoToReception();
                    }
                }
            }
        }
        
    }
}
