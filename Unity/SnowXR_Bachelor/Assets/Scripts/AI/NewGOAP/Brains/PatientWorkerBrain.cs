using System;
using BNG;
using CrashKonijn.Goap.Classes;
using DG.Tweening;
using UnityEngine;
using UnityEngine.AI;
using UnityEngine.Serialization;

namespace SnowXR
{
    public class PatientWorkerBrain : WorkerBrain
    {
        // Todo add Mathias F door interaction, consider using new assembly to isolate code
        public Transform door;
        // Todo this is temporary and unvieldey
        public Vector3 requestMoveExitVehicleOffset;

        public Transform inCarTransform;

        private void OnDrawGizmosSelected()
        {
            Gizmos.DrawCube(transform.TransformPoint(requestMoveExitVehicleOffset), Vector3.one);
        }

        public void OnApplyNeckBrace()
        {
            
        }

        public void OnApplyHLR()
        {
            
        }

        public void OnApplyOxygen()
        {
            
        }

        public void TryExitVehicle()
        {
            // if (ComplexWorldState.Has<IsProne>())
                // return;
            GetComponent<NavMeshAgent>().enabled = false;
            transform
                .DOMove(transform.TransformPoint(requestMoveExitVehicleOffset), 1f)
                .OnComplete(() => {
                        GetComponent<NavMeshAgent>().enabled = true;
                    });
            
        }
        
    }
}