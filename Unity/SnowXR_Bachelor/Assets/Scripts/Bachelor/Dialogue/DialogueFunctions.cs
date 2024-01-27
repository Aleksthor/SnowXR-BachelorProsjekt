using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using BA.GOAP;

namespace Bachelor.Dialogue
{
    public class DialogueFunctions : MonoBehaviour
    {
        public void GoToReseption()
        {
            int layerMask = 1 << 9;
            Collider[] colliders = Physics.OverlapSphere(transform.position, 5f, layerMask);
            foreach (var c in colliders)
            {
                if (c.CompareTag("Agent"))
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
