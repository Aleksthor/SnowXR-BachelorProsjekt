using System;
using CrashKonijn.Goap.Behaviours;
using CrashKonijn.Goap.Interfaces;
using Descriptor.UnitType;
using KBCore.Refs;
using SnowXR.Faction;
using SnowXR.Sim.Descriptor;
using UnityEngine;
using UnityEngine.Serialization;

namespace SnowXR
{
    [DisallowMultipleComponent]
    [RequireComponent(typeof(GenericDescriptor))]
    public class WorkerSetBinder : MonoBehaviour
    {
        [FormerlySerializedAs("_descriptor")] [SerializeField, Self()] private GenericDescriptor descriptor;

        private void Awake()
        {
            var runner = FindObjectOfType<GoapRunnerBehaviour>();
            var agent = GetComponent<AgentBehaviour>();
            IGoapSet a = runner.GetGoapSet(descriptor.UnitType.ToString());
            if (a != null) {
                agent.GoapSet = a;
                return;
            }

            agent.GoapSet = runner.GetGoapSet(UnitType.NONE.ToString());

            /*
            switch (descriptor.factionType)
            {
                case FactionType.Custom:
                    agent.GoapSet = runner.GetGoapSet(WorkerSetIds.CustomId);
                    break;
                case FactionType.Ambulance:
                    agent.GoapSet = runner.GetGoapSet(WorkerSetIds.HealthWorkerId);
                    break;
                case FactionType.Fire:
                    agent.GoapSet = runner.GetGoapSet(WorkerSetIds.FireWorkerId);
                    break;
                case FactionType.Police:
                    agent.GoapSet = runner.GetGoapSet(WorkerSetIds.PoliceWorkerId);
                    break;
                case FactionType.Civil:
                    agent.GoapSet = runner.GetGoapSet(WorkerSetIds.CivilianWorkerId);
                    break;
                case FactionType.ActionLeader:
                    agent.GoapSet = runner.GetGoapSet(WorkerSetIds.ActionLeaderId);
                    break;
                case FactionType.BackBoard:
                    agent.GoapSet = runner.GetGoapSet(WorkerSetIds.BackBoardWorkerId);
                    break;
                case FactionType.Stretcher:
                    agent.GoapSet = runner.GetGoapSet(WorkerSetIds.StretcherWorkerId);
                    break;
                default:
                    throw new ArgumentOutOfRangeException();
            }
             */

        }


#if UNITY_EDITOR
        private void OnValidate()
        {
            this.ValidateRefs();
        }
#endif
    }
}