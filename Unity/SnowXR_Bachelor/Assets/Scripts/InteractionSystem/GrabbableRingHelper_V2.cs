using System.Collections;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;

namespace BNG
{
    /// <summary>
    /// Show a ring helper on an object. This class makes sure the ring helper is added to the object
    /// </summary>
    public class GrabbableRingHelper_V2 : GrabbableEvents
    {

        public bool RingOnValidPickup = true;
        public bool RingOnValidRemotePickup = true;

        public float RingHelperScale = 0.2f;

        [Header("Custom Position")]
        public bool UseCustomTransform = false;
        public Transform SnapToTransform;

        void Start()
        {
            // Set up Ring
            if (RingOnValidPickup)
            {
                RingHelper rh = GetComponentInChildren<RingHelper>();
                if (rh == null)
                {
                    GameObject go = Instantiate(Resources.Load("RingHelper", typeof(GameObject))) as GameObject;
                    go.transform.SetParent(this.transform, false);
                    go.transform.name = "Ring Helper";
                    go.transform.localPosition = grab.GrabPositionOffset;

                    // Use GrabPoint if set
                    if (grab.GrabPoints != null && grab.GrabPoints.Count > 0)
                    {
                        if (UseCustomTransform)
                            go.transform.position = SnapToTransform.position;
                        else
                            go.transform.localPosition = grab.GrabPoints.FirstOrDefault().localPosition;
                    }

                    RectTransform rt = go.GetComponent<RectTransform>();
                    rt.localScale = new Vector3(RingHelperScale, RingHelperScale, RingHelperScale);
                }
            }
        }
    }
}