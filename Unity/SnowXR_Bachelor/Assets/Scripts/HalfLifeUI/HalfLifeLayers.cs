using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using UnityEditor;
using UnityEngine;

namespace  HalfLifeUI {
    
    public class HalfLifeLayers : MonoBehaviour
    {
        [Header("References")]
        public GameObject BackgroundLayer;
        public GameObject BackgroundBehindMain;
        public GameObject MainLayer;
        public GameObject ConfirmLayer;

        [Header("Config")] 
        [Tooltip("How far back should layers be placed when in confirm mode?")]
        [SerializeField]private float confirmDistance = 2f;

        [SerializeField] private float spacing = 10f;
        [SerializeField] private float radius = 10f;

        [SerializeField] private bool bGizmos = true;

        //private
        private List<GameObject> _slots = new List<GameObject>();
        private Vector3 _mainLayerStart;
        private Vector3 _backgroundLayerStart;

        private static bool _bStaticGizmos = false;
        
        private void Awake() {
            // get all childs
            _slots.Clear();
            for (int i = 0; i < MainLayer.transform.childCount; i++) {
                _slots.Add(MainLayer.transform.GetChild(i).gameObject);
            }
            
        
            UpdatePositions();
        
            SaveStartLocations();       
        }

        private void SaveStartLocations() {
        
            _mainLayerStart = MainLayer.transform.localPosition;
            _backgroundLayerStart = BackgroundLayer.transform.localPosition;
        }

        [ContextMenu("UpdatePositions")]
        private void UpdatePositions() {
            //removes and find all mains slots
            _slots.Clear();
            for (int i = 0; i < MainLayer.transform.childCount; i++) {
                _slots.Add(MainLayer.transform.GetChild(i).gameObject);
            }
            
            // finds center of theoretical circle the slots are placed on
            Vector3 center = MainLayer.transform.position - MainLayer.transform.forward * radius;
            
            //fonts and sets the position
            for (int i = 0; i < _slots.Count; i++) {
                // relevent math
                float surcomference = 2 * Mathf.PI * radius;
                float radians = 2 * Mathf.PI * spacing / surcomference;
                
                Vector3 newPos = center + MainLayer.transform.forward * Mathf.Cos(i * radians) * radius 
                                 - MainLayer.transform.right * Mathf.Sin(i * radians) * radius;
                
                // mains slots
                _slots[i].transform.position = newPos;
                _slots[i].transform.rotation = Quaternion.LookRotation(_slots[i].transform.position - center, transform.rotation * Vector3.up);
            }
            
            // background
            Vector3 behindMainPos =
                MainLayer.transform.position + MainLayer.transform.forward * Mathf.Abs(spacing) / 3f;

            BackgroundBehindMain.transform.position = behindMainPos;
            BackgroundLayer.transform.position = behindMainPos +
                                                 MainLayer.transform.right * spacing;
            
            // info slot
            
        }

        public Transform GetSlotTransform(int i) {
            if (i >= _slots.Count) {
                return _slots[^1].transform;
            }
            return _slots[i].transform;
        }

        private void OnDrawGizmos() {
            if (!_bStaticGizmos) {
                return;
            }
            
            DrawTransform(BackgroundLayer.transform);
            DrawTransform(ConfirmLayer.transform);

            List<Transform> slots = MainLayer.GetComponentsInChildren<Transform>().ToList();
            foreach (var slot in slots) {
                DrawTransform(slot.transform);
            }
        }

        private void OnDrawGizmosSelected() {
            if (!bGizmos) {
                return;
            }
            
            DrawTransform(BackgroundLayer.transform);
            DrawTransform(ConfirmLayer.transform);

            List<Transform> slots = MainLayer.GetComponentsInChildren<Transform>().ToList();
            foreach (var slot in slots) {
                DrawTransform(slot.transform);
            }
            
            
            
            // ensures that the transform of the layers are corrent
            transform.localPosition = Vector3.zero;
            transform.localRotation = Quaternion.identity;
            transform.localScale = Vector3.one;
            
        }
        
#if UNITY_EDITOR
        [MenuItem("Tools/ToggleLayerGizmos")]
        private static void ToggleGizmos() {
            _bStaticGizmos = !_bStaticGizmos;
        }
#endif
        private void DrawTransform(Transform t) {
            Gizmos.color = Color.blue;
            Gizmos.DrawRay(t.position, t.forward);
            Gizmos.color = Color.green;
            Gizmos.DrawRay(t.position, t.up);
            Gizmos.color  =Color.red;
            Gizmos.DrawRay(t.position, t.right);
        }


        public void SetConfirmPositions(bool bConfirmPosition) {
            if (bConfirmPosition) {
                MainLayer.transform.localPosition = _mainLayerStart + Vector3.forward * confirmDistance;
                BackgroundLayer.transform.localPosition = _backgroundLayerStart + Vector3.forward * confirmDistance; 
                return;
            }

            MainLayer.transform.localPosition = _mainLayerStart;
            BackgroundLayer.transform.localPosition = _backgroundLayerStart;
        }

        
        
        public void SwitchSide() {
            spacing *= -1f;
            UpdatePositions();
            SaveStartLocations();
        }


        private void OnValidate() {
            UpdatePositions();
            SaveStartLocations();
        }
    }
    

}