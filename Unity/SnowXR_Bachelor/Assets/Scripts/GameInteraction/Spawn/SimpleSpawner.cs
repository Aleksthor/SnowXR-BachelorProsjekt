using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AddressableAssets;
using UnityEngine.Events;
using UnityEngine.ResourceManagement.AsyncOperations;

/*
public class SimpleSpawner : MonoBehaviour// NetworkBehaviour
{
    [RuntimeInitializeOnLoadMethod(RuntimeInitializeLoadType.BeforeSceneLoad)]
    void reset()
    {
        instance = null;
    }
        
    public static SimpleSpawner instance { get; private set; } = null;

    private void Awake()
    {
        if (instance == null)
        {
            instance = this;
        }
        else
        {
            Destroy(this);
        }
        
        _addressableIds.Add("TestSpawn", 2519);
    }

    /// <summary>
    /// Remember object has to have a NetworkObject component.
    /// </summary>
    /// <param name="go"></param>
    [ServerRpc(RequireOwnership = false)]
    public void AddToNetwork(GameObject go)
    {
        NetworkManager networkManager = InstanceFinder.NetworkManager;
        networkManager.ServerManager.Spawn(go);
    }   
        
    private AsyncOperationHandle<IList<GameObject>> _asyncHandle;
    //Dictionary used to store the Id of each addressables package.
    //This is a representation of you tracking Ids.
    private Dictionary<string, ushort> _addressableIds = new Dictionary<string, ushort>();

    /// <summary>
    /// Load an addressables package for key.
    /// Mabye this can be improved by not reloading the package every time. (Or mabye Addressables does this allready under the hood) 
    /// </summary>
    /// <param name="key"></param>
    /// <param name="callback"></param>
    /// <returns></returns>
    public IEnumerator LoadAddressables(string key, UnityAction<GameObject> callback)
    {
        //Get the Id of your addressables package.
        ushort id = _addressableIds["TestSpawn"];
        /* GetPrefabObjects will return the prefab
         * collection to use for Id. Passing in true
         * will create the collection if needed. #1#
        NetworkManager networkManagerReference = InstanceFinder.NetworkManager;
        SinglePrefabObjects spawnablePrefabs = (SinglePrefabObjects)networkManagerReference.GetPrefabObjects<SinglePrefabObjects>(id, true);
        List<NetworkObject> cache = new List<NetworkObject>();

        _asyncHandle = Addressables.LoadAssetsAsync<GameObject>(key, addressable =>
        {
            NetworkObject nob = addressable.GetComponent<NetworkObject>();
            if (nob != null)
            {
                callback.Invoke(addressable);
                cache.Add(nob);
            }
        });

        /* Add cache to spawnablePrefabs. By adding as a collection
         * a little performance is saved. #1#
        spawnablePrefabs.AddObjects(cache);

        yield return _asyncHandle;
    }

//Unload an addressables package for key.
    public void UnoadAddressables(string key)
    {
        //Get the Id of your addressables package.
        ushort id = _addressableIds[key];
        //Once again get the prefab collection for Id.
        NetworkManager networkManagerReference = InstanceFinder.NetworkManager;
        SinglePrefabObjects spawnablePrefabs = (SinglePrefabObjects)networkManagerReference.GetPrefabObjects<SinglePrefabObjects>(id, true);
        spawnablePrefabs.Clear();

        Addressables.Release(_asyncHandle);
    }
}*/