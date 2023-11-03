// using KBCore.Refs;
// using SnowXR.Faction;
// using UnityEngine;
// using UnityEngine.AddressableAssets;
// using UnityEngine.Serialization;
//
// namespace SnowXR.Represent2D {
//     [RequireComponent(typeof(Represent2D))]
//     public class RepresentHealthCommon : MonoBehaviour {
//         [FormerlySerializedAs("_represent2DBase")] [SerializeField, Self()] private Represent2D represent2D;
//         
//         [field:SerializeField]
//         public RepresentType RepresentType { get; internal set; } = RepresentType.Custom;
//         [field:SerializeField]
//         public FactionType FactionType { get; internal set; } = FactionType.Custom;
//
//
//         private static readonly Vector2 k_smallCarSize = new Vector2(3, 6);
//         private static readonly Vector2 k_personSize = new Vector2(2.2f, 2.2f);
//         
//         static void SetValues(RepresentType representType, FactionType factionType, ref Sprite sprite, ref Color color, ref Vector2 size) {
//             switch (representType) {
//                 case RepresentType.Custom:
//                     // do nothing, should be handled by user
//                     break;
//                 case RepresentType.Person:
//                     // Addressables.LoadAssetAsync<Sprite>("2DRepresentation/Person").Completed += handle => _sprite = handle.Result as Sprite;
//                     sprite = Addressables.LoadAssetAsync<Sprite>("2DRepresentation/Person").WaitForCompletion();
//                     size = k_personSize;
//                     color = FactionUtility.GetFactionColor(factionType);
//                     break;
//                 case RepresentType.SmallVehicle:
//                     sprite = Addressables.LoadAssetAsync<Sprite>("2DRepresentation/SmallCar").WaitForCompletion();
//                     size = k_smallCarSize;
//                     color = FactionUtility.GetFactionColor(factionType);
//                     break;
//                 case RepresentType.MediumVehicle:
//                     sprite = Addressables.LoadAssetAsync<Sprite>("2DRepresentation/MediumCar").WaitForCompletion();
//                     size = k_smallCarSize * 1.2f;
//                     color = FactionUtility.GetFactionColor(factionType);
//                     break;
//                 case RepresentType.LargeVehicle:
//                     sprite = Addressables.LoadAssetAsync<Sprite>("2DRepresentation/LargeCar").WaitForCompletion();
//                     size = k_smallCarSize * 1.2f * 1.2f;
//                     color = FactionUtility.GetFactionColor(factionType);
//                     break;
//                 default:
//                     
//                     break;
//             }
//         }
//         protected  void OnDrawGizmosSelected() {
//             
//             
//         }
//         
//         #if UNITY_EDITOR
//         private void OnValidate() {
//             this.ValidateRefs();
//             // SetValues(ref represent2D._sprite, ref represent2D._color, ref represent2D._size);
//         }
//         #endif
//     }
// }