using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AddressableAssets;

public class BootStrapLoader : MonoBehaviour
{
    [RuntimeInitializeOnLoadMethod(RuntimeInitializeLoadType.BeforeSceneLoad)]
    public static void Initialize()
    {
        GameObject systems = Addressables.InstantiateAsync("Systems").WaitForCompletion();
        Object.DontDestroyOnLoad(systems);
    }
}