using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;

using UnityEngine.XR.Interaction.Toolkit;

namespace Snow.UI.Cursor
{
    public class HandPointerAdjuster : MonoBehaviour
    {
        public GameObject CursorRef;

        [SerializeField]
        protected Color colorBase = Color.white;
        [SerializeField]
        protected Color colorOnHover = Color.blue;
        [SerializeField]
        protected Color colorOnClick = Color.yellow;

        private Color colorClear = Color.clear;


        GraphicRaycaster m_Raycaster;
        PointerEventData m_PointerEventData;
        EventSystem m_EventSystem;

        private void Start()
        {
            //Fetch the Raycaster from the GameObject (the Canvas)
            m_Raycaster = GetComponent<GraphicRaycaster>();
            //Fetch the Event System from the Scene
            m_EventSystem = GetComponent<EventSystem>();
        }


        // Update is called once per frame
        void Update()
        {
            XRRayInteractor RayInteractor = transform.GetComponent<XRRayInteractor>();
            if (!RayInteractor)
            { Debug.LogError("XRRayInteractor component not found. XR Interaction manager, Input Bridge, or Event System might be missing from the scene",this); return; }

            // Get hit result
            RaycastResult rayResult;
            RayInteractor.TryGetCurrentUIRaycastResult(out rayResult);

            float rayDistance = rayResult.isValid ? rayResult.distance : 0;

            // Update Cursor
            UpdateCursorColor(rayResult);
            UpdateCursorPosition(rayDistance);
        }

        public void OnHover()
        {
            UpdateColor(colorOnHover);
        }

        public void OnUnhover()
        {
            UpdateColor(colorClear);
        }

        public void OnPressed()
        {
            UpdateColor(colorOnClick);
        }

        public void OnReleased()
        {
            UpdateColor(colorBase);
        }

        void UpdateCursorColor(RaycastResult _rayResult)
        {
            if (!_rayResult.isValid)
            {
                UpdateColor(colorClear);
                return;
            }

            UpdateColor(colorBase);
        }


        void UpdateCursorPosition(float _hitDistance)
        {

            RectTransform cursorTransform = CursorRef.GetComponent<RectTransform>();
            if (!cursorTransform) { Debug.LogError("Cursor GameObject is missing a RectTransform component"); return; }

            cursorTransform.localPosition = new Vector3(0, 0, _hitDistance);
        }
        void UpdateColor(Color _color)
        {
            Text textRef = CursorRef.GetComponent<Text>();

            textRef.color = _color;
        }
    }
}