using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

namespace BA.Prototype
{
    [System.Serializable]
    enum AIStatus
    {
        Idle,
        LayingDown,
        Sitting,
        Walking
    }

    [RequireComponent(typeof(PInjuredPerson), typeof(NavMeshAgent))]
    public class PInjuredPersonBrain : MonoBehaviour
    {
        PInjuredPerson injuredPerson;
        NavMeshAgent agent;
        [SerializeField] AIStatus status;

        [SerializeField] bool inspection = false;
        [SerializeField] bool clearance = false;

        [SerializeField] Vector3 idleRotation = Vector3.zero;

        float timer = 0;
        Collider[] overlapColliders = new Collider[1];

        // Start is called before the first frame update
        void Awake()
        {
            injuredPerson = GetComponent<PInjuredPerson>(); 
            agent = GetComponent<NavMeshAgent>();
        }

        // Update is called once per frame
        void Start()
        {
            status = SetStatus(injuredPerson);
            timer = Random.Range(2f, 5f); 
        }

        AIStatus SetStatus(PInjuredPerson injuredPerson)
        {
            if (!injuredPerson.CanWalk())
            {
                return AIStatus.LayingDown;
            }
            int severity = injuredPerson.Severity();
            if (severity > 20 || severity < 50)
            {
                int random = Random.Range(20,50);
                if (random > severity)
                {
                    return AIStatus.Sitting;
                }
            }
            return AIStatus.Idle;
        }

        private void Update()
        {
            if (inspection)
            {
                return;
            }

            timer -= Time.deltaTime;

            switch (status)
            {
                case AIStatus.Idle:
                    // Look for paramedics for help
                    

                    if (timer < 0)
                    {
                        timer = Random.Range(4f, 5f);
                    }
                    // If we got help we can walk
                    break;
                case AIStatus.LayingDown:
                    if (timer < 0)
                    {
                        if (Random.Range(0,16) == 15)
                        {
                            Debug.Log("Scream");
                        }
                        timer = Random.Range(5f, 10f);
                    }
                    // Try to Scream, To to stay conscious
                    break;
                case AIStatus.Sitting:
                    if (timer < 0)
                    {
                        if (Random.Range(0, 16) == 15)
                        {
                            Debug.Log("Scream");
                        }
                        timer = Random.Range(5f, 10f);
                    }
                    // Look for paramedics for help
                    // If we got help we can walk
                    break;
                case AIStatus.Walking:
                    if (timer < 0)
                    {

                    }
                    if (clearance)
                    {
                        NavMesh.SamplePosition(new Vector3(), out NavMeshHit hit, 5f, NavMesh.AllAreas);
                        agent.SetDestination(hit.position);
                    }
                    // Walk out of the area
                    break;

            }
        }
    }
}
