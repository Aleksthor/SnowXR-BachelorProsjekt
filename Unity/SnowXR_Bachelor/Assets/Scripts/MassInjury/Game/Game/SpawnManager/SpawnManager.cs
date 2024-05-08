using System.Collections;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using UnityEngine;
using SnowXR.MassInjury.Goap;
using SnowXR.MassInjury.Person;
using SnowXR.MassInjury.Player;

namespace SnowXR.MassInjury
{
    public class SpawnManager : MonoBehaviour
    {
        public static SpawnManager instance;
        
        [Header("Injured Person Prefab")] 
        [SerializeField] private GameObject injuredPerson;
        
        [Header("Spawn Preferences")] 
        [SerializeField] public int easySize = 4;
        [SerializeField] public int mediumSize = 7;
        [SerializeField] public int hardSize = 10;
        [SerializeField] public int veryHardSize = 15;

        [SerializeField] private List<Color> shirtColors = new List<Color>();
        [SerializeField] private GameDifficulty gameDifficulty = GameDifficulty.Easy;

        private List<GameObject> spawnedAgents = new List<GameObject>();
        private List<Transform> cachedSpawnPoints = new List<Transform>();

        
        
        // Start is called before the first frame update
        private void Awake()
        {
            // This is a singleton
            if (instance == null)
            {
                instance = this;
            }
            else
            {
                Destroy(gameObject);
            }

            // If playersetting is spawned, get difficulty from it. 
            if (PlayerSettings.instance)
                gameDifficulty = PlayerSettings.instance.GetGameDifficulty();
            
            // Slower initialization for faster in-game performance
            GameObject[] spawns = GameObject.FindGameObjectsWithTag("SpawnPoint");

            foreach (var sp in spawns)
            {
                // If difficulty is hard or very hard, use all spawnpoints from all difficulties
                if (gameDifficulty < GameDifficulty.Hard)
                {
                    if (sp.GetComponent<SpawnPoint>().difficulty == gameDifficulty)
                    {
                        cachedSpawnPoints.Add(sp.transform);
                    }
                }
                // If difficulty is easy or very medium, use only spawnpoints with the same difficulty
                else
                {
                    if (sp.GetComponent<SpawnPoint>().difficulty <= gameDifficulty)
                    {
                        cachedSpawnPoints.Add(sp.transform);
                    }
                }
            }
            StartGame();
        }


        private void StartGame()
        {
            float size = 0;
            switch (gameDifficulty)
            {
                case GameDifficulty.Easy:
                    size = easySize;
                    break;
                case GameDifficulty.Medium:
                    size = mediumSize;
                    break;
                case GameDifficulty.Hard:
                    size = hardSize;
                    break;
                case GameDifficulty.VeryHard:
                    size = veryHardSize;
                    break;
            }
            // actually spawning all the patients with cached spawnpoints as parent
            for (int i = 0; i < size; i++)
            {
                Transform spawnPoint = GetRandomSpawnPoint(cachedSpawnPoints);
                cachedSpawnPoints.Remove(spawnPoint);
                spawnedAgents.Add(Instantiate(injuredPerson,spawnPoint.position,spawnPoint.rotation,spawnPoint));
                spawnedAgents[i].GetComponent<GenderComponent>().SetColor(shirtColors[i % 15]);
                spawnedAgents[i].GetComponent<BleedingInjury>().SetRoom(spawnPoint.GetComponent<SpawnPoint>().room, spawnPoint.GetComponent<SpawnPoint>().slot);
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

        public GameDifficulty Difficulty()
        {
            return gameDifficulty;
        }
    }

    
}
