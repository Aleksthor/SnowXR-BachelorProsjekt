using System;
using System.Collections;
using System.Collections.Generic;
using Descriptor;
using Descriptor.UnitType;
using KBCore.Refs;
using SnowXR.Faction;
using SnowXR.Sim.Descriptor;
using UnityEditor;
using UnityEngine;
using UnityEngine.AddressableAssets;
using UnityEngine.Animations;
using UnityEngine.Events;

namespace SnowXR.Represent2D {
    [DefaultExecutionOrder(10000)] // late execution
    public class Represent2D : MonoBehaviour {
        
        public Sprite Sprite {
            get => _sprite;
            set => _sprite = value;
        }
        [SerializeField] public Sprite _sprite;
        
        public Vector2 Size {
            get => _size;
            set => _size = value;
        }
        
        [SerializeField] public Vector2 _size = Vector2.one;
        
        public Color Color {
            get => _color;
            set => _color = value;
        }
        [SerializeField] public Color _color = Color.white;

        [SerializeField] public int priority = 0;

        [SerializeField] public string representKey = "N/A";

        [SerializeField] public AssetReferenceGameObject _represent2DAssetReference; 
        
        // Called when 2DRepresentation is in NormalMode
        public UnityEvent onClickRepresentation = new UnityEvent();

        private void OnEnable()
        {
            if (TryGetComponent(out GenericDescriptor genericDescriptor))
            {
                SetValues(genericDescriptor.representType, genericDescriptor.factionType, ref _sprite, ref _color, ref _size, ref priority, ref representKey);
                genericDescriptor.onChangeVisibility += OnVisibiltyChanged;
                if (genericDescriptor.UnitType == UnitType.NONE) {
                    Representation2DManager.AddGenericRepresentation(GetInstanceID(), this, _sprite, _color, priority, representKey);
                    return;
                }
                if (_represent2DAssetReference != null) {
                    Representation2DManager.AddCustomRepresentation(GetInstanceID(), this, _represent2DAssetReference, priority, representKey);
                }
                else {
                    
                }
                
                
            }
            
        }


        private void OnVisibiltyChanged(bool bVisible)
        {
            enabled = bVisible;
        }



        protected void OnDisable() {
            Representation2DManager.RemoveRepresentation(GetInstanceID());
        }
        
        
        
        static void SetValues(RepresentType representType, FactionType factionType, ref Sprite sprite, ref Color color, ref Vector2 size, ref int priority,  ref string representKey)
        {
            if (representType != RepresentType.Custom)
                sprite = Addressables.LoadAssetAsync<Sprite>(DescriptorUtility.GetSprite(representType)).WaitForCompletion();
            color = DescriptorUtility.GetColor(factionType, representType);
            size = DescriptorUtility.GetSize(representType);
            priority = representType.ToPriority();
            representKey = DescriptorUtility.GetRepresentKey(representType, factionType);


        }
        
        
#if UNITY_EDITOR
        // TODO this assembly should be generic / package, not specific to SnowXR, consider making a package or sub assembly
        private void OnValidate()
        {
            // this.ValidateRefs();
            // if (TryGetComponent(out GenericDescriptor genericDescriptor))
            // {
            //     SetValues(genericDescriptor.representType, genericDescriptor.factionType, ref _sprite, ref _color, ref _size, ref priority);
            // }
        }
#endif
        
        // Editor
        protected virtual void OnDrawGizmosSelected() {
            Vector3 forward = transform.forward;
            forward.y = 0;
            forward.Normalize();
            
            Gizmos.matrix = Matrix4x4.TRS(transform.position + Vector3.down * 0.11f, Quaternion.LookRotation(forward, Vector3.up), Vector3.one) ;

            Gizmos.color = _color;
            
            Gizmos.DrawCube(Vector3.zero, new Vector3(_size.x, 0.1f, _size.y));
        }
    }
}