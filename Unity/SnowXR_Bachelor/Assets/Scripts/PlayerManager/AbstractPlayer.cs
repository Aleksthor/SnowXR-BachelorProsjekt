using System;
using UnityEngine;

public abstract class AbstractPlayer : MonoBehaviour {
    [SerializeField]
    protected Camera _camera;
    public virtual void Posses() {
        _camera.enabled = true;
    }

    public virtual void DePossess() {
        _camera.enabled = false;
    }

    protected virtual void Awake() {
        DePossess();
        
    }
}