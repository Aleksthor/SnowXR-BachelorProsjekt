namespace SnowXR.PlayerManager {
    public class VRPlayer : AbstractPlayer {
        public override void Posses() {
            // base.Posses();
        }

        public override void DePossess() {
            // base.DePossess();
        }

        protected override void Awake() {
            base.Awake();

            PlayerManger.Instance.VRPlayer = this;
        }
    }
}