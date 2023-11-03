using CrashKonijn.Goap.Behaviours;
using HalfLifeUI;
using UnityEngine;

namespace SnowXR.Represent2D {
    public class Rep2DUIWorkerBase : Represent2DUI {
        
        private void Start() {
            _represent2D.onClickRepresentation.AddListener(OnClick2DRepresent);
        }
        private void OnClick2DRepresent() {
            if (UIGameObject == null) {
                UIGameObject = SpawnUI();
                SubWindowManager manager = UIGameObject.GetComponentInChildren<SubWindowManager>();
                SetupUI(manager);    
                return;
            }
            
            UIGameObject.GetComponentInChildren<SubWindowManager>().Open();
        }
        protected static void Stop(AgentBehaviour agent)
        {
            agent.SetGoal(null, true);
        }

        protected virtual void SetupUI(SubWindowManager manager) {
            manager.StartSubWindow.SetTitle("N/A DEFINE");
            
        }
        protected void SetupBasicWorkerUI(SubWindowManager manager)
        {
            AddOnNextClickButton(manager, "Move To Position", OnNextClick_MoveTo);
            AddOnClickThisButton(manager, "Stop", () =>
            {
                Stop();
                Debug.Log("Tried to Stop Action");
            });
        }
        protected void Stop()
        {
            Stop(GetComponent<AgentBehaviour>());
        }
        protected bool OnNextClick_MoveTo(Vector3 position) {
            GetComponent<WorkerBrain>().MoveTo(position);
            return true;
        }
    }
}