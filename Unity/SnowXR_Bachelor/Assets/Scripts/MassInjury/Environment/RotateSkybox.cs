using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace SnowXR.MassInjury.Environment
{
    public class RotateSkybox : MonoBehaviour
    {
        void Update () {
            RenderSettings.skybox.SetFloat("_Rotation", Time.time * 0.4f);
        }
    }
}
