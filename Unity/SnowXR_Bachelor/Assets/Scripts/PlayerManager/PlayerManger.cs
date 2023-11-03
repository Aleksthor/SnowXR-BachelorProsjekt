using System;
using UnityEngine;
using UnityEngine.Serialization;

namespace SnowXR.PlayerManager {
    
    /// <summary>
    /// Should be in systems
    /// </summary>
    [DefaultExecutionOrder(-1000)]
    public class PlayerManger : MonoBehaviour {

        public static PlayerManger Instance = null;

        public AbstractPlayer CurrentPlayer;
        public AbstractPlayer FreeFlyPlayer;
        public AbstractPlayer VRPlayer;
        public AbstractPlayer Rep2DPlayer;
        
        
        
        [RuntimeInitializeOnLoadMethod(RuntimeInitializeLoadType.BeforeSceneLoad)]
        private void reset() {
            Instance = null;
        }
        private void Awake() {
            // Singleton pattern
            if (Instance == null) {
                Instance = this;
                return;
            }
            
            Destroy(this);
        }

        public static void ChangePlayer(AbstractPlayer newCurrentPlayer) {
            if (Instance.CurrentPlayer != null) {
                Instance.CurrentPlayer.DePossess();
            }
            Instance.CurrentPlayer = newCurrentPlayer;
            Instance.CurrentPlayer.Posses();

        }
        
    }
}