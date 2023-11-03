using System.Collections.Generic;
using Descriptor.UnitType;
using SnowXR.Sim.Descriptor;
using UnityEngine;
using UnityEngine.AddressableAssets;
using UnityEngine.AI;
using UnityEngine.Events;
using UnityEngine.PlayerLoop;

namespace SnowXR.Represent2D.Scenario {
    public class VehicleSpawnWorkers : MonoBehaviour {
        
        [SerializeField] private List<Transform> workerSpawnPoints = new();
        [SerializeField] private List<AssetReferenceGameObject> workers = new List<AssetReferenceGameObject>();

        // TODO this should be its own class
        [SerializeField] private int healthWorkersToSpawn = 2;

        private static List<UnitType> _spawnedUnitTypes = new();
        [SerializeField] private AssetReferenceGameObject firstTypeAssetReference;
        
        public static bool bFirst = true;

        [RuntimeInitializeOnLoadMethod(RuntimeInitializeLoadType.BeforeSceneLoad)]
        private void Initialize() {
            _spawnedUnitTypes = new();
        }
        
        private void Start() {
            // Spawn immedeatly if present at start of game
            if (Time.time < 0.1f) {
                SpawnAndDestroy();
                return;
            }
            Representation2DManager.instance.onNextClick.onSuccessfulClick += OnSuccessfulClick;
        }
        
        public void SpawnAndDestroy()
        {
            int toSpawn = bFirst ? 1 : healthWorkersToSpawn;
            bFirst = true;
            
            SpawnWorkers(toSpawn);
            Representation2DManager.instance.onNextClick.onSuccessfulClick -= OnSuccessfulClick;
            Destroy(this);
        }

        private void OnSuccessfulClick(Vector3 pos,  OnNextClickHandler<Vector3> handler) {
            SpawnWorkers(healthWorkersToSpawn);
            if (handler != null) {
                handler.onSuccessfulClick -= OnSuccessfulClick;
            }
                
            Destroy(this);
        }

        private void SpawnWorkers(int workersToSpawn) {
            UnitType spawnerUnitType = GetComponent<GenericDescriptor>().UnitType;
            
            // TODO make spaned worker spawn with the ambulance as their ambulance target
            
            
            for (int i = 0; i < workersToSpawn; i++) {
                Transform targetTransform = workerSpawnPoints[i % workerSpawnPoints.Count];
                GameObject go = workers[i % workers.Count].InstantiateAsync().WaitForCompletion();
                if (go.TryGetComponent(out NavMeshAgent agent)) {
                    agent.Warp(targetTransform.position);
                }
                go.transform.rotation = targetTransform.rotation;
                
                // Extra 2DRepSetup
                UnitType unitType = go.GetComponent<GenericDescriptor>().UnitType;
                if (_spawnedUnitTypes.Contains(unitType)) 
                    continue;

                var rep2D = go.GetComponent<Represent2D>();
                rep2D.enabled = false;
                rep2D._represent2DAssetReference = firstTypeAssetReference;
                rep2D.enabled = true;
                _spawnedUnitTypes.Add(unitType);

            }
        }
    }
}