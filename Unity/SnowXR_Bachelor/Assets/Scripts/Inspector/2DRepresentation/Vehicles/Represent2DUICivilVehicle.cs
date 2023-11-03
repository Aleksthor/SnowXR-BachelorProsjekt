using HalfLifeUI;
using UnityEngine;
using UnityEngine.AI;

namespace SnowXR.Represent2D {
    public class Represent2DUICivilVehicle : Represent2DUIVehicleBase {
        protected override void SetupUI(GameObject uiGameObject) {
            // base.SetupUI(uiGameObject);
            
            SubWindowManager manager = uiGameObject.GetComponentInChildren<SubWindowManager>();
            manager.StartSubWindow.SetTitle("CivilVehicle");
            AddOnNextClickButton(manager, "Move", MoveVehicle, RotateVehicle);
            
        }

        private bool MoveVehicle(Vector3 arg) {
            if (NavMesh.SamplePosition(arg, out NavMeshHit hit, 100000f, NavMesh.AllAreas)) {
                GetComponent<Rigidbody>().MovePosition(hit.position);
                
                return true;
            }
            return false;
        }
        private bool RotateVehicle(Vector3 clickPos) {
            Rigidbody rb = GetComponent<Rigidbody>();
            Quaternion targetRot = Quaternion.LookRotation((clickPos - transform.position).RemoveY(), Vector3.up);
            rb.MoveRotation(targetRot);
            return true;
        }
    }
}