using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace SnowXR.Sim
{
    public class TestScript : MonoBehaviour
    {
        [SerializeField] Camera cam;
        [SerializeField] float fov;


        IEnumerator Start()
        {
            yield return new WaitForEndOfFrame();
            cam.fieldOfView = fov;
        }
    }
}
