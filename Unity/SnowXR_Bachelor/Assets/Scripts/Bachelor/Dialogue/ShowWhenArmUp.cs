using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Bachelor.Dialogue
{
    public class ShowWhenArmUp : MonoBehaviour
    {
        private void Update()
        {
            float slope = Vector3.Dot(transform.right, Vector3.up);
            transform.GetChild(0).gameObject.SetActive(slope < 0.3f && slope > -0.3f);
        }
    }
}
