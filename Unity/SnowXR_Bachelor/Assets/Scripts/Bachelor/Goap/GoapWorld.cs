using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace MassInjury.Goap
{
    public sealed class GoapWorld
    {
        private static readonly GoapWorld instance = new GoapWorld();
        private static WorldStates world;

        
        static GoapWorld()
        {
            world = new WorldStates();
            
        }

        private GoapWorld()
        {
        }
        
        public static GoapWorld Instance => instance;
        
        public WorldStates GetWorld()
        {
            return world;
        }
    }
    
    
}
