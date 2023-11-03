using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace SnowXR
{
    public class CameraHider : MonoBehaviour
    {
        public List<Camera> PlayerCameras;

        void Start()
        {

        }

        public void HideFromCamera(int n)
        {
            foreach (var cam in PlayerCameras)
            {
                ;
            }
//           PlayerCameras
        }

    }
}