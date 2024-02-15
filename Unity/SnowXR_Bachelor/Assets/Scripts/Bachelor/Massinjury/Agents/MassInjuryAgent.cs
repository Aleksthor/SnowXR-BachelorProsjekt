using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;
using SnowXR.MassInjury;
using BA.GOAP;
using Random = UnityEngine.Random;

[RequireComponent(typeof(NavMeshAgent), typeof(BleedingInjury))]
public class MassInjuryAgent : GoapAgent
{
    [SerializeField] private Vector3 receptionGatherLocation = new Vector3();

    public GameObject inspector;

    // Start is called before the first frame update
    new void Start()
    {
        base.Start();
        NavMeshAgent agent = GetComponent<NavMeshAgent>();

        // Declare all actions
        Dictionary<string, int> goToReceptionPreCond = new Dictionary<string, int>();
        goToReceptionPreCond.Add("canWalk", 1);
        goToReceptionPreCond.Add("goToReception", 1);

        Dictionary<string, int> goToReceptionAfterEffects = new Dictionary<string, int>();
        goToReceptionAfterEffects.Add("gatherInReception", 1);

        actions.Add(new GoToReception("Go To Reception", 1, null,
            receptionGatherLocation + new Vector3(Random.Range(-3, 3), 0, Random.Range(-3, 3)), "", 1f,
            agent, goToReceptionPreCond, goToReceptionAfterEffects, beliefes, inventory));


        // Declare all Goals
        //SubGoal s1 = new SubGoal("getClearance", 1, true);
        //goals.Add(s1, 1);


        BleedingInjury injury = GetComponent<BleedingInjury>();

        if (injury.CanWalk() && !injury.Sitting())
        {
            beliefes.AddState("canWalk", 1);
        }

        beliefes.AddState("notCleared", 1);
    }

    private void FixedUpdate()
    {
        if (!ReferenceEquals(inspector, null))
        {
            if (Vector3.Distance(transform.position, inspector.transform.position) < 5f)
            {
                beliefes.SetState("inspectorClose", 1);
                beliefes.RemoveState("inspectorNotClose");
            }
            else
            {
                beliefes.SetState("inspectorNotClose", 1);
                beliefes.RemoveState("inspectorClose");
            }
        }
    }


    public void GoToReception()
    {
        if (beliefes.GetStates().ContainsKey("goToReception")) return;
        
        
        SubGoal s1 = new SubGoal("gatherInReception", 1, true);
        goals.Add(s1, 1);

        beliefes.AddState("goToReception", 1);
    }
}

