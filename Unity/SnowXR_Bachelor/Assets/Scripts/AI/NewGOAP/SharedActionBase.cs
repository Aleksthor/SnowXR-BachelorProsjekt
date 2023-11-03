using System.Collections.Generic;
using System.Runtime.CompilerServices;
using CrashKonijn.Goap.Behaviours;
using CrashKonijn.Goap.Interfaces;

namespace AI.NewGOAP
{
    // class with funcionality for shared actions
    public abstract class SharedActionBase<TActionData> : ActionBase<TActionData>
        where TActionData : IActionData , new()
    {
        protected static Dictionary<string, Wrapper> Dictionary = new();
        protected static bool actionCompleted = false;
        protected void CreateNewGroup(string key, int id, float duration, int minimumWorkersPresent)
        {
            Wrapper wrapper = new Wrapper();
            wrapper.list = new List<int>(new[] { id });
            wrapper.duration = duration;
            wrapper.minimumWorkersRequired = minimumWorkersPresent;
            Dictionary.Add(key, wrapper);
        }

        protected void RemoveFromGroup(string key, int id)
        {
            if (!Dictionary.ContainsKey(key))
                return;

            Dictionary[key].list.Remove(id);
            // Dictionary.Remove(key);
        }

        /// <summary>
        /// Will add self if not present
        /// </summary>
        /// <param name="key"></param>
        /// <param name="id"></param>
        protected void AddToGroup(string key, int id)
        {
            if (!Dictionary.ContainsKey(key))
                return;
            if (Dictionary[key].list.Contains(id))
                return;
            
            // Logging.Log(Logging.LogGroup.GAME_LOGIC, "Added to group");
            Dictionary[key].list.Add(id);
        }

        public void TryTickDuration(string key, float deltaTime)
        {
            if (!Dictionary.ContainsKey(key))
                return;
            
            int workersPresent = Dictionary[key].list.Count;
            if (workersPresent >= Dictionary[key].minimumWorkersRequired)
            {
                // Logging.Log(Logging.LogGroup.GAME_LOGIC, "TickDownSuccess");
                Dictionary[key].Subtract(deltaTime / (float)workersPresent);
            }
        }

        public float GetDuration(string key)
        {
            if (!Dictionary.ContainsKey(key))
                return -1f;
            
            return Dictionary[key].duration;
        }

        public class Wrapper
        {
            public List<int> list;
            public float duration;
            public int minimumWorkersRequired;

            public void Subtract(float f)
            {
                duration -= f;
            }
        }
    }

}