namespace SnowXR.PlayerManager {
    public class Rep2DPlayer : AbstractPlayer {
        
        public override void Posses() {
            base.Posses();
        }

        public override void DePossess() {
            base.DePossess();
        }


        protected override void Awake() {
            base.Awake();

            PlayerManger.Instance.Rep2DPlayer = this;
        }
    }
}