using System;
using HalfLifeUI;
using UnityEngine;

namespace SnowXR.Represent2D
{
    public class Represent2DUIAmbulance : Represent2DUIVehicleBase
    {
        protected override void SetupUI(GameObject uiGameObject)
        {
            base.SetupUI(uiGameObject);
            
            SubWindowManager manager = uiGameObject.GetComponentInChildren<SubWindowManager>();
            manager.StartSubWindow.SetTitle("Ambulance");
            
            AddOnClickThisButton(manager, "Drive to Hospital", DriveToHospital);
        }

        private void DriveToHospital()
        {
            gameObject.SetActive(false);
        }
    }
}