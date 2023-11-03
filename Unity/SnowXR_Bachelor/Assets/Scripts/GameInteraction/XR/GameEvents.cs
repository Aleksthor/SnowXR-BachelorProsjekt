using System.Collections.Generic;
using BNG;
using RCEvents;
using UnityEngine;
using UnityEngine.Events;

/*
GUIDE TO USE GAMEEVENTS:
Example to listen for when player1 jumps

class SampleClass {
    void Start(){
        GameEvents.instance.onPlayerJump.AddListener(Player_OnJunped); 
    }

    private void Player_OnJumped(int playerIndex) { // param name can be different, as long as its the same type (int) as event Action<int> (onPLayerJump event)
        Debug.Log($"Player {playerIndex} has jumped!!!")
    } 
}


Example invoke an event
    void SomeFunc(){
        GameEvents.instance.onPlayerJump.Invoke(1); // where 1 is the player index
    }

 */


public class GameEvents : MonoBehaviour {
    // singleton
    public static GameEvents instance = null;

    [RuntimeInitializeOnLoadMethod(RuntimeInitializeLoadType.BeforeSceneLoad)]
    public void reset()
    {
        onPlayerHooverGround.RemoveAllListeners();
        onPlayerPointGeneral.RemoveAllListeners();
        instance = null;
    }
    
    private void Awake() {
        // singleton pattern
        if (instance == null)
            instance = this;
        else 
            Destroy(this);
    }

    // Events
    //----------------------------
    
    // bool true = inAir, int = player index
    public readonly Evt<bool, int> onPlayerChangeAirMode = new Evt<bool, int>(); // bool = air
    public readonly Evt onHealthPersonellSendRadioNotification = new Evt();
    public readonly Evt<RaycastHit, ControllerHand> onPlayerPointGeneral = new Evt<RaycastHit, ControllerHand>();
    public readonly Evt<RaycastHit, ControllerHand> onPlayerHooverGround = new Evt<RaycastHit, ControllerHand>();


}


