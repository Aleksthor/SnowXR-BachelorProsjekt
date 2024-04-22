using System.Collections;
using System.Collections.Generic;
using Unity.Netcode;
using UnityEngine;

namespace SnowXR.Netcode
{
    public class NetworkPlayer : NetworkBehaviour
    {
        public Transform root;
        public Transform body;
        public Transform rightHand;
        public Transform leftHand;
        public Transform bandHolder;
        public Transform plivo;

        public Renderer[] meshToDisable;

        public override void OnNetworkSpawn()
        {
            base.OnNetworkSpawn();
            if (!IsOwner) return;

            foreach (Renderer r in meshToDisable)
            {
                r.enabled = false;
            }
        }

        // Update is called once per frame
        void Update()
        {
            if (!IsOwner) return; 

            root.position = VRRigReferences.instance.root.position;
            root.rotation = VRRigReferences.instance.root.rotation;

            body.position = VRRigReferences.instance.body.position;
            body.rotation = VRRigReferences.instance.body.rotation;

            rightHand.position = VRRigReferences.instance.rightHand.position;
            rightHand.rotation = VRRigReferences.instance.rightHand.rotation;

            leftHand.position = VRRigReferences.instance.leftHand.position;
            leftHand.rotation = VRRigReferences.instance.leftHand.rotation;

            bandHolder.position = VRRigReferences.instance.bandHolder.position;
            bandHolder.rotation = VRRigReferences.instance.bandHolder.rotation;

            plivo.position = VRRigReferences.instance.plivo.position;
            plivo.rotation = VRRigReferences.instance.plivo.rotation;
        }
    }
}
