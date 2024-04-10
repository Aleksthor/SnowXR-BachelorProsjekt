using System.Collections;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using UnityEngine;
using BA.GOAP;
using MassInjury.Person;

namespace SnowXR.MassInjury
{
    public class SpawnManager : MonoBehaviour
    {
        public static SpawnManager instance;
        
        private List<Transform> cachedSpawnPoints = new List<Transform>();

        [SerializeField] private GameDifficulty gameDifficulty = GameDifficulty.Easy;

        [Header("Injured Person Prefab")] 
        [SerializeField] private GameObject injuredPerson;
        
        [Header("Spawn Preferences")] 
        [SerializeField] public int easySize = 4;
        [SerializeField] public int mediumSize = 7;
        [SerializeField] public int hardSize = 10;
        [SerializeField] public int examSize = 15;
        
        
        [SerializeField] private Transform agentParent;

        private List<GameObject> spawnedAgents = new List<GameObject>();

        [SerializeField] private List<Color> shirtColors = new List<Color>();
        
        
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
                if (gameDifficulty < GameDifficulty.Hard)
                {
                    if (sp.GetComponent<SpawnPoint>().difficulty == gameDifficulty)
                    {
                        cachedSpawnPoints.Add(sp.transform);
                    }
                }
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
                case GameDifficulty.Exam:
                    size = examSize;
                    break;
                default:
                    StartTutorial();
                    return;
            }
            for (int i = 0; i < size; i++)
            {
                Transform spawnPoint = GetRandomSpawnPoint(cachedSpawnPoints);
                cachedSpawnPoints.Remove(spawnPoint);
                spawnedAgents.Add(Instantiate(injuredPerson,spawnPoint.position,spawnPoint.rotation,agentParent));
                spawnedAgents[i].GetComponent<GenderComponent>().SetColor(shirtColors[i % 15]);
            }
        }

        private void StartTutorial()
        {
            
            
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

    [System.Serializable]
    public enum GameDifficulty
    {
        Tutorial,
        Easy,
        Medium,
        Hard,
        Exam
    }
}
