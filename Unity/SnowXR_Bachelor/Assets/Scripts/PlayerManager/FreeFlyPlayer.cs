using UnityEngine.Rendering;

namespace SnowXR.PlayerManager {
    public class FreeFlyPlayer : AbstractPlayer {
        public override void Posses() {
            base.Posses();
            GetComponent<FreeFlyCamera>().enabled = true;
        }

        public override void DePossess() {
            base.DePossess();
            GetComponent<FreeFlyCamera>().enabled = false;
        }

        protected override void Awake() {
            base.Awake();

            PlayerManger.Instance.FreeFlyPlayer = this;
        }
    }
}