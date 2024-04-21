using System;
using System.Collections;
using System.Collections.Generic;
using MassInjury.Player;
using UnityEngine;

namespace SnowXR.MassInjury
{
    public class SpawnPoint : MonoBehaviour
    {
        [SerializeField] public GameDifficulty difficulty;
        [SerializeField] public int room;
        [SerializeField] public int slot;
    }


}
