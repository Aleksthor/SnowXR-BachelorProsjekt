using HalfLifeUI;
using UnityEngine;
using UnityEngine.AI;

namespace SnowXR.Represent2D
{
    public class Represent2DUIVehicleBase : Represent2DUI
    {
        
        
        private void Start()
        {
            _represent2D.onClickRepresentation.AddListener(OnClick2DRepresent);
        }

        private void OnClick2DRepresent()
        {
            if (UIGameObject == null) {
                UIGameObject = SpawnUI();
                SetupUI(UIGameObject);
                return;
            }
            
            UIGameObject.GetComponentInChildren<SubWindowManager>().Open();
        }
        
        protected virtual void SetupUI(GameObject uiGameObject)
        {
            SubWindowManager manager = uiGameObject.GetComponentInChildren<SubWindowManager>();
            manager.StartSubWindow.SetTitle("Ambulance");

            AddOnNextClickButton(manager, "Move Vehicle", MoveVehicle, RotateVehicle);
        }
        
        private bool MoveVehicle(Vector3 clickPos)
        {
            NavMesh.SamplePosition(clickPos, out NavMeshHit hit, 100f, NavMesh.AllAreas);
            
            transform.position = hit.position;
            return true;
        }

        private bool RotateVehicle(Vector3 clickPos)
        {
            transform.rotation = Quaternion.LookRotation((clickPos - transform.position).RemoveY(), Vector3.up);
            return true;
        }
    }
}