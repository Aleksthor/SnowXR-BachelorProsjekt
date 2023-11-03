﻿using HalfLifeUI;
using UnityEngine;

namespace SnowXR.Represent2D {
    public class Represent2dUIHelicopter : Represent2DUIVehicleBase
    {
        protected override void SetupUI(GameObject uiGameObject) {
            base.SetupUI(uiGameObject);
            
            SubWindowManager manager = uiGameObject.GetComponentInChildren<SubWindowManager>();
            manager.StartSubWindow.SetTitle("Helicopter");
        }
    }
}