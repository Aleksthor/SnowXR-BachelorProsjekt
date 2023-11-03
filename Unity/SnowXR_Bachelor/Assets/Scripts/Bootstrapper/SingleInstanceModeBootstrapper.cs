using UnityEngine;

namespace Snow.Bootstrapper
{
    public class SingleInstanceModeBootstrapper : MonoBehaviour
    {
        public GameObject vrPrefab, desktopPrefab;


        /*
        void OnBootstrap()
        {
            if (!enabled)
            {
                 return;
            }
            AbstractPlayerManager.SetMultipleAllowed(true);
            
            var vrPlayer = Instantiate(vrPrefab);
            vrPlayer.GetComponent<AbstractPlayer>().TakeControl();
            
            var desktopPlayer = Instantiate(desktopPrefab);
            desktopPlayer.GetComponent<AbstractPlayer>().TakeControl(null, 1);
        }
    */
    }
}