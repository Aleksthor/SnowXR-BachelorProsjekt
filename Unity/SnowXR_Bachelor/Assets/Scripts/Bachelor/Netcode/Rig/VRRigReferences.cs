using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace SnowXR.Netcode
{
    public class VRRigReferences : MonoBehaviour
    {
        public static VRRigReferences instance;


        public Transform root;
        public Transform body;
        public Transform rightHand;
        public Transform leftHand;
        public Transform bandHolder;
        public Transform plivo;

        private void Awake()
        {
            if (instance == null)
            {
                instance = this;
            }
        }
    }
}
