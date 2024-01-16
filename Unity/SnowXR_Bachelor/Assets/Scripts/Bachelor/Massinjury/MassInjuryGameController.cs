using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;

namespace SnowXR.MassInjury
{
    public class MassInjuryGameController : MonoBehaviour
    {
        [Header("Game Main Spawn Manager")]
        [SerializeField] private SpawnManager spawnManager;
        private List<BleedingInjury> agents = new List<BleedingInjury>();
        
        [Header("Results")]
        [SerializeField] private int correctZones = 0;
        [SerializeField] private int errorScore = 0;
        [SerializeField] private float timePerPatient = 0f;
        
        // Logic Variables
        private float timer = 0f;
        private float updateFrequency = 3f;
        private float gameTimer = 0f;
        private bool gameOver = false;

        
        private void Start()
        {
            if (spawnManager == null) return;

            List<GameObject> spawnedAgents = spawnManager.GetAgents();

            foreach (var injuredPerson in spawnedAgents)
            {
                agents.Add(injuredPerson.GetComponent<BleedingInjury>());
            }
        }
        
        // Update is called once per frame
        private void Update()
        {
            if (gameOver) return;
            
            timer += Time.deltaTime;
            gameTimer += Time.deltaTime;

            if (!(timer > updateFrequency)) return;
            
            timer -= updateFrequency;
                
            // Update Slow Mode
            SlowUpdate();
        }

        private void SlowUpdate()
        {
            bool isDone = true;

            // Check if all agents have been inspected
            foreach (var injuredPerson in agents.Where(injuredPerson => !injuredPerson.InspectionDone()))
            {
                isDone = false;
            }
            
            if (!isDone) return;
            
            // Finish the Game
            gameOver = true;
            CalculateScore();
        }

        private void CalculateScore()
        {
            correctZones = 0;
            errorScore = 0;
            foreach (var injuredPerson in agents)
            {
                ValueTuple<Zone, Zone> inspectionResult = injuredPerson.GuessedZone();
                // Comparing the Correct Zone (Item1) to the Guessed Zone (Item2)
                if (inspectionResult.Item1 == inspectionResult.Item2)
                {
                    correctZones++;
                    continue;
                }

                errorScore += CalculateError(inspectionResult);
            }

            timePerPatient = gameTimer / 15;

        }

        private int CalculateError(ValueTuple<Zone, Zone> inspectionResult)
        {
            int diff = 0;
            // Comparing the Correct Zone (Item1) to the Guessed Zone (Item2)
            switch (inspectionResult.Item1)
            {
                case Zone.Black:
                    diff = inspectionResult.Item1 - inspectionResult.Item2;
                    return Mathf.Abs(diff) * 50;
                
                
                case Zone.Red:
                    diff = inspectionResult.Item1 - inspectionResult.Item2;
                    return Mathf.Abs(diff) * 40;
                
                
                case Zone.Yellow:
                    diff = inspectionResult.Item1 - inspectionResult.Item2;
                    return Mathf.Abs(diff) * 30;
                
                
                case Zone.Green:
                    diff = inspectionResult.Item1 - inspectionResult.Item2;
                    return Mathf.Abs(diff) * 25;
                
                
                default:
                    diff = inspectionResult.Item1 - inspectionResult.Item2;
                    return Mathf.Abs(diff) * 40;
            }
        }
    }
}
