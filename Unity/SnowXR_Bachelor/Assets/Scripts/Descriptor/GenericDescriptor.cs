using System;
using System.ComponentModel;
using Descriptor.UnitType;
using SnowXR.Faction;
using SnowXR.Represent2D;
using UnityEngine;
using UnityEngine.Events;

namespace SnowXR.Sim.Descriptor
{
    [DisallowMultipleComponent]
    public class GenericDescriptor : MonoBehaviour
    {
         [field:SerializeField]public FactionType factionType { get; private set; }
         [field:SerializeField]public RepresentType representType { get; private set; }

         [field: SerializeField] public UnitType UnitType { get; private set; } = UnitType.NONE;

         [field: SerializeField]
         private bool _b2DVisible = true;
         public bool b2DVisible
         {
             get => _b2DVisible;
             set
             {
                 onChangeVisibility?.Invoke(value);
                 _b2DVisible = value;
             }
         }

         private void Start() {
             if (!_b2DVisible) {
                 onChangeVisibility?.Invoke(false);
             }
         }

         public UnityAction<bool> onChangeVisibility;

         [ContextMenu("Toggle Visibility")]
         private void ToggleVisibility() {
             b2DVisible = !b2DVisible;
         }
    }
}