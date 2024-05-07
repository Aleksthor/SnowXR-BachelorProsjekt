using System;
using System.Collections;
using System.Collections.Generic;
using SnowXR.MassInjury.Player;
using UnityEngine;

namespace SnowXR.MassInjury
{
    public class SpawnPoint : MonoBehaviour
    {
        // This is just a data class, where we can specify what type of spawnpoint we have
        [SerializeField] public GameDifficulty difficulty;
        [SerializeField] public int room;
        [SerializeField] public int slot;
    }


}
