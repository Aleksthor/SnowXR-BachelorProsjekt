using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace SnowXR.MassInjury
{
    public class SpawnManager : MonoBehaviour
    {
        [Header("List of Spawn Points")]
        [SerializeField] private List<Transform> spawnPoints = new List<Transform>();

        [Header("Injured Person Prefab")] 
        [SerializeField] private GameObject injuredPerson;

        [Header("Spawn Preferences")] 
        [SerializeField] private int numberOfAgents = 15;
        [SerializeField] private Transform agentParent;

        private List<GameObject> spawnedAgents = new List<GameObject>();
        
        
        // Start is called before the first frame update
        private void Awake()
        {
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
            }
        }

        private Transform GetRandomSpawnPoint(List<Transform> list)
        {
            int random = Random.Range(0, list.Count);
            return list[random];
        }

        public List<GameObject> GetAgents()
        {
            return spawnedAgents;
        }
    }
}
