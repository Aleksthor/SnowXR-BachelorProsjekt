using KBCore.Refs;
using SnowXR.PlayerManager;
using UnityEngine;
using UnityEngine.AddressableAssets;
using UnityEngine.AI;
using UnityEngine.UIElements;

namespace SnowXR {
    public class DesktopUIHandler : MonoBehaviour {
        [SerializeField, Self()] private UIDocument _document;

        [SerializeField] AssetReferenceGameObject _ambulanceVehicle = new AssetReferenceGameObject("AmbulanceVehicle");
        [SerializeField] AssetReferenceGameObject _policeVehicle = new AssetReferenceGameObject("PoliceVehicle");
        [SerializeField] AssetReferenceGameObject _fireVehicle = new AssetReferenceGameObject("FireVehicle");
        [SerializeField] AssetReferenceGameObject _helicopterVehicle = new AssetReferenceGameObject("HelicopterVehicle");

        private GameObject _representCamera;

        private GameObject RepresentCamera
        {
            get
            {
                if (_representCamera == null)
                {
                    _representCamera = GameObject.FindWithTag("2DRepresentCamera").transform.GetChild(0).gameObject;
                }
                return _representCamera;
            }
        }

        T TestGeneric<T>(string visualElementName) where T : VisualElement
        {
            return _document.rootVisualElement.Q<T>(visualElementName);
        }
        
        private void OnEnable() {
            Button spectatePlayerButton   = _document.rootVisualElement.Q<Button>("SpectatePlayer");
            Button freeCameraViewButton   = _document.rootVisualElement.Q<Button>("FreeCameraView");
            Button representation2dButton = _document.rootVisualElement.Q<Button>("2DRepresentation");
            Button togglePausedButton = _document.rootVisualElement.Q<Button>("ToggleTime");
           
            spectatePlayerButton.clicked   += OnClickSpectatePlayer;
            freeCameraViewButton.clicked   += OnClickFreeCameraView;
            representation2dButton.clicked += OnClick2DRepresentation;

            // Place X Vehicle buttons
            TestGeneric<Button>("PlaceAmbulanceVehicle").clicked += () => { PlaceVehicle(_ambulanceVehicle); };
            TestGeneric<Button>("PlacePoliceVehicle").clicked += () => { PlaceVehicle(_policeVehicle); };
            TestGeneric<Button>("PlaceFireVehicle").clicked += () => { PlaceVehicle(_fireVehicle); };
            TestGeneric<Button>("PlaceHelicopter").clicked += () => { PlaceVehicle(_helicopterVehicle); };
            
            // Toggle time
            togglePausedButton.clicked += TimeManager.Instance.ToggleTime;
        }

        public GameObject SpawnVehicleWithAddressable(Vector3 position, AssetReferenceGameObject assetReferenceGameObject)
        {
            // TODO @Sebastian: Implement this function to work with the internets!

            var go = assetReferenceGameObject.InstantiateAsync().WaitForCompletion();
            go.transform.position = position;
            return go;
        }

        
        private void PlaceVehicle(AssetReferenceGameObject assetReferenceGameObject)
        {
            GameObject go = null;
            Representation2DManager.instance.onNextClick.CreateNewStack(x =>
            {
                return OnNextClick2PlaceVehicle(x, assetReferenceGameObject, out go);
            });
            Representation2DManager.instance.onNextClick.AddToSequence(x =>
            {
                return OnNextClickSetRotation(x, go);
            });
        }

        private bool OnNextClick2PlaceVehicle(Vector3 arg, AssetReferenceGameObject assetReferenceGameObject, out GameObject go)
        {
            // if is in placeable zone
            // not to close to other vehicles
            // Spawn vehicle
            NavMesh.SamplePosition(arg, out var hit, 100f, NavMesh.AllAreas);
            go = SpawnVehicleWithAddressable(hit.position, assetReferenceGameObject);
            
            return true;
        }

        private bool OnNextClickSetRotation(Vector3 arg, GameObject go)
        {
            if (go == null)
                return false;

            go.transform.rotation = Quaternion.LookRotation((arg - go.transform.position).RemoveY(), Vector3.up);

            return true;
        }

        private void OnClickPlacePoliceVehicle()
        {
        }

        private void OnClickPlaceFireVehicle()
        {
        }
        
        private void OnClickPlaceHelicopter()
        {
        }

        private void OnClickSpectatePlayer() {
            Logging.Log(Logging.LogGroup.CONTROLLER, "SpectatePlayer clicked");

            //AbstractPlayerManager.SpectateNextVRPlayer();
            // AbstractPlayerManager.ToggleVRViewOnDesktop();
            PlayerManger.ChangePlayer(PlayerManger.Instance.VRPlayer);
                            
        }
        private void OnClickFreeCameraView() {
            Logging.Log(Logging.LogGroup.CONTROLLER, "FreeCameraView clicked");
            
            PlayerManger.ChangePlayer(PlayerManger.Instance.FreeFlyPlayer);
            
            // Turn off VR camera being displayed to desktop
            /*
            if (AbstractPlayerManager._VRPlayerIsBeingSpectated())
            {
                AbstractPlayerManager.ToggleVRViewOnDesktop();
            }
            */
            // RepresentCamera.SetActive(false);
        }
        private void OnClick2DRepresentation() {
            Logging.Log(Logging.LogGroup.CONTROLLER, "2DRepresentation clicked");
            
            // Turn off VR camera being displayed to desktop
                    /*
            if (AbstractPlayerManager._VRPlayerIsBeingSpectated())
            {
                AbstractPlayerManager.ToggleVRViewOnDesktop();
            }
            */
            PlayerManger.ChangePlayer(PlayerManger.Instance.Rep2DPlayer);
            // RepresentCamera.SetActive(true);
        }

#if UNITY_EDITOR
        private void OnValidate() {
            this.ValidateRefs();
        }
#endif
    }
}