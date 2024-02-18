using System.Collections;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;
using BA.GOAP;

namespace SnowXR.MassInjury
{
    public class SpawnManager : MonoBehaviour
    {
        public static SpawnManager instance;
        
        private List<Transform> spawnPoints = new List<Transform>();

        [Header("Injured Person Prefab")] 
        [SerializeField] private GameObject injuredPerson;

        [Header("Spawn Preferences")] 
        [SerializeField] public int numberOfAgents = 15;
        [SerializeField] private Transform agentParent;

        private List<GameObject> spawnedAgents = new List<GameObject>();

        [Header("PlayerTranform")] 
        [SerializeField] private GameObject player;
        
        
        // Start is called before the first frame update
        private void Awake()
        {
            if (instance == null)
            {
                instance = this;
            }
            else
            {
                Destroy(gameObject);
            }
            
            // Slower initialization for faster in-game performance
            GameObject[] spawns = GameObject.FindGameObjectsWithTag("SpawnPoint");

            foreach (var sp in spawns)
            {
                spawnPoints.Add(sp.transform);
            }
            StartGame();
        }


        private void StartGame()
        {
            List<Transform> spawnPointsCache = spawnPoints;
            for (int i = 0; i < numberOfAgents; i++)
            {
                Transform spawnPoint = GetRandomSpawnPoint(spawnPointsCache);
                spawnPointsCache.Remove(spawnPoint);
                spawnedAgents.Add(Instantiate(injuredPerson,spawnPoint.position,spawnPoint.rotation,agentParent));
                spawnedAgents[i].GetComponent<MassInjuryAgent>().inspector = player;
            }
        }

        private Transform GetRandomSpawnPoint(List<Transform> list)
        {
            int random = Random.Range(0, list.Count);
            return list[random];
        }

        public List<GameObject> GetPatients()
        {
            return spawnedAgents;
        }
    }
}
