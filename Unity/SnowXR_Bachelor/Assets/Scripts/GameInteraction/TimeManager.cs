using System;
using UnityEngine;

namespace SnowXR
{
    public class TimeManager : MonoBehaviour
    {
        private static TimeManager _instance;
        public static TimeManager Instance
        {
            get
            {
                if (_instance == null)
                {
                    var timeManagerGO = new GameObject("TimeManager");
                    _instance = timeManagerGO.AddComponent<TimeManager>();
                }
                return _instance;
            }
        }

        private float _savedTimeScale;

        private void Awake()
        {
            if (_instance == null)
            {
                _instance = this;
                _speedupHandler = new InputHandler(KeyCode.P, 3f);
                _slowDownHandler = new InputHandler(KeyCode.K, 0.1f);
                
                return;
            }
            
            Destroy(this);
        }

        private InputHandler _slowDownHandler;
        private InputHandler _speedupHandler;
        
        
        private void Update()
        {
            bool bUsingHandler = false;
            bUsingHandler = _speedupHandler.Update();
            if (!bUsingHandler)
                bUsingHandler = _slowDownHandler.Update();
            // if (!bUsingHandler)
            // bUsingHandler = someOtherHandler.Update();
            
            return;
            if(Input.GetKeyDown(KeyCode.P) || Input.GetKeyDown(KeyCode.K))
            {
                _savedTimeScale = Time.timeScale;
            }
        
            if (Input.GetKey(KeyCode.P))
            {
                Time.timeScale = 3f;
            }

            if (Input.GetKey(KeyCode.K))
            {
                Time.timeScale = 0.1f;
            }

            if (Input.GetKeyUp(KeyCode.P) || Input.GetKeyUp(KeyCode.K))
            {
                Time.timeScale = _savedTimeScale;
            }
        }

        public void ToggleTime()
        {
            bool paused = Time.timeScale < 0.001f;
            if (paused)
            {
                ResumeTime();
                return;
            }
            
            PauseTime();
        }

        public void PauseTime()
        {
            Time.timeScale = 0.0001f;
        }

        public void ResumeTime()
        {
            Time.timeScale = 1f;
        }

        private class InputHandler
        {
            private KeyCode _keyCode;

            private float _savedTimeScale;
            private float _pressTimeScale;

            public InputHandler(KeyCode keyCode, float pressTimeScale)
            {
                _keyCode = keyCode;
                _pressTimeScale = pressTimeScale;
            }
            public bool Update()
            {
                if (Input.GetKeyDown(_keyCode))
                {
                    _savedTimeScale = Time.timeScale;
                    return true;
                }
                if (Input.GetKey(_keyCode))
                {
                    Time.timeScale = _pressTimeScale;
                    return true;
                }
                if (Input.GetKeyUp(_keyCode))
                {
                    Time.timeScale = _savedTimeScale;
                    return true;
                }

                return false;
            }
        }
    }
}