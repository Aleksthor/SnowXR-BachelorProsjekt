// using System;
// using System.Collections;
// using UnityEngine;
// using UnityEngine.SceneManagement;
//
// #if UNITY_ANDROID
// using UnityEngine.Android;
// #endif
// using UnityEngine.Android;
//
//
// namespace Snow.Bootstrapper
// {
//     /// <summary>
//     /// Behaviour that bootstraps both required systems always, but also handles loading initial game start
//     /// </summary>
//     public class Bootstrapper : MonoBehaviour
//     {
//         private bool hasInitializedGame = false;
//         private static bool hasInitializedExtras = false;
//         private bool bootstrapped = false;
//
//         [Tooltip("The scene to load as the first scene/level of the game")]
//         [SerializeField/*, Scene*/]
//         private string sceneReference;
//
//
// #if UNITY_EDITOR
//         [RuntimeInitializeOnLoadMethod(RuntimeInitializeLoadType.SubsystemRegistration)]
//         static void EditorBootstrap()
//         {
//             hasInitializedExtras = false;
//             LoadAlwaysNeeded();
//         }
// #endif
//
//         private void Start()
//         {
//             
//             //#endif
//             StartCoroutine(BootstrapRoutine());
//         }
//
//         private IEnumerator BootstrapRoutine()
//         {
//             
//             //string androidInternet = "android.permission.INTERNET";
//             string internet = "INTERNET";
//             //#if ANDROID
//             //var aiPerm = Permission.HasUserAuthorizedPermission(androidInternet);
//             //Logging.Log(Logging.LogGroup.DEBUG, "Has AAINternet:" + aiPerm);
//             var iPerm = Permission.HasUserAuthorizedPermission(internet);
//             Logging.Log(Logging.LogGroup.DEBUG, "Has internet:" + iPerm);
//
//             var callbacks = new PermissionCallbacks();
//             callbacks.PermissionDenied += s => Logging.Log(Logging.LogGroup.DEBUG, $"Denied: {s}");
//             callbacks.PermissionGranted += s => Logging.Log(Logging.LogGroup.DEBUG, $"Granted: {s}");
//             callbacks.PermissionDeniedAndDontAskAgain += s => Logging.Log(Logging.LogGroup.DEBUG, $"DDA: {s}");
//             //if (!aiPerm)
//             {
//                 //Permission.RequestUserPermission(androidInternet);
//                 
//             }
//
//             if (!iPerm)
//             {
//                 //Permission.RequestUserPermission(internet);
//             }
//
//             yield return new WaitForSeconds(0.1f);
//             
//             
//             
//             
//             Logging.Log(Logging.LogGroup.DEBUG, "Has internet NOW?:" + iPerm);
//             
//             
//             
//             
//             Logging.Log(Logging.LogGroup.DEBUG, "Waiting a bit before loading always needed...");
//             yield return new WaitForSeconds(0.1f);
//             Logging.Log(Logging.LogGroup.DEBUG, "Loading always needed");
//             bootstrapped = true;
//             LoadAlwaysNeeded();
//             Logging.Log(Logging.LogGroup.DEBUG, "Waiting a bit before game bootstrapping...");
//             yield return new WaitForSeconds(0.1f);
//             GameBootstrapping();
//
//             yield return new WaitForSeconds(0.1f);
//             // InstanceFinder.ServerManager.StartConnection();
//             yield return new WaitForSeconds(0.1f);
//             // InstanceFinder.ClientManager.StartConnection();
//         }
//
//         
//         private void Update()
//         {
//             return;
//             // VR devices aren't detected (at least the way I check for them) at the very start, so we wait a bit to
//             // ensure the device will be detected if connected
//             if (bootstrapped || Time.time < 1f)
//             {
//                 return;
//             }
//
//             Logging.Log(Logging.LogGroup.INITIALIZATION, "Bootstrapping");
//             bootstrapped = true;
//             
//             LoadAlwaysNeeded();
//             GameBootstrapping();
//         }
//
//
//         /// <summary>
//         /// Bootstraps things that are needed generally only for builds, like loading the correct scene
//         /// </summary>
//         private void GameBootstrapping()
//         {
//             if (hasInitializedGame)
//             {
//                 return;
//             }
//
//             hasInitializedGame = true;
//
//             // Load the scene we want to use as the initial "real" scene for this specific build
//             SceneManager.LoadScene(sceneReference, LoadSceneMode.Additive);
//             
//             // Allows other behaviours on the gameobject to take part in the bootstrapping process. Could do a better
//             // system for this later on
//             SendMessage("OnBootstrap");
//         }
//
//         /// <summary>
//         /// Bootstraps things that always need to be initialized on game start, even in unity editor in any scene
//         /// </summary>
//         private static void LoadAlwaysNeeded()
//         {
//             if (hasInitializedExtras)
//             {
//                 return;
//             }
//
//             hasInitializedExtras = true;
//
//             Logging.Log(Logging.LogGroup.INITIALIZATION, "Load Always needed scene");
//             SceneManager.LoadScene("AlwaysNeeded", LoadSceneMode.Additive);
//             
//             // Might not be good to rely on always having the multiplayer scene active but for now I'm assuming the game
//             // will mostly be "multiplayer" or at least actively looking for server/broadcasting so there's no need for
//             // menus
//             // Logging.Log(Logging.LogGroup.INITIALIZATION, "Load multiplayer scene");
//             // SceneManager.LoadScene("Multiplayer", LoadSceneMode.Additive);
//         }
//     }
// }