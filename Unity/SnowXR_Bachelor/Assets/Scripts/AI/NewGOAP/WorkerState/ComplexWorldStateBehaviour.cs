using System;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.Serialization;

namespace SnowXR.State
{
    [DisallowMultipleComponent]
    public class ComplexWorldStateBehaviour : MonoBehaviour
    {
        public UnityEvent<IWorkerState> onStateAdded = new ();
        public UnityEvent<IWorkerState> onStateRemoved = new ();
        
        [SerializeReference] private List<IWorkerState> items = new();
        // [SerializeField] private List<string> test = new ();
        
        private void Add<T>(T addedWorkerState)
            where T : IWorkerState
        {
            if (!this.items.Contains(addedWorkerState))
            {
                this.items.Add(addedWorkerState);
                // Invoke events
                addedWorkerState.SelfAddedOnState(GetComponentInChildren<Animator>(), transform);
                onStateAdded?.Invoke(addedWorkerState);
            }
        }

        public void Add(Type type)
        {
            bool any =items.Any(state =>
            {
                if (state.GetType() == type)
                    return true;
                return false;
            });
            if (!any)
            {
                
                var instance = (IWorkerState)Activator.CreateInstance(type);
                Add(instance);
            }
        }
        public void Add<T>()
            where T : IWorkerState, new()
        {
            bool hasComplexState = Has<T>();
            if (hasComplexState)
                return;
            
            T addedWorkerState = new T();
            Add(addedWorkerState);
            
        } 
        
        
        public T[] Get<T>()
        {
            return this.items.Where(x => x is T).Cast<T>().ToArray();
            
        }

        public void Remove<T>() 
            where T : class, IWorkerState {
            bool hasState = Has<T>();
            Logging.Log(Logging.LogGroup.GAME_LOGIC, $"Has : {hasState}");
            if (hasState) {
                T item = items.Find((state => state is T)) as T;
                
                Remove<T>(item);
            }
        }

        public void Remove(Type type)
        {
            
            var instance = (IWorkerState)Activator.CreateInstance(type);
            Remove(instance);
        }
        
        public void Remove<T>(T item)
            where T : IWorkerState
        {

            IWorkerState state = items.Find(x => x.GetType() == item.GetType());
            items.Remove(state);
            
            
            if (item == null )
                return;
            
            onStateRemoved?.Invoke(item);
            item.SelfRemovedFromState(GetComponentInChildren<Animator>(), transform);
        }
        
        public bool Has<T>()
            where T : IWorkerState
        {
            return items.Any(x => x is T);
        }
        public bool Has(Type type, int amount)
        {
            return items.Count(x => x.GetType() == type) >= amount;
            return this.items.Count(x => x.GetType().IsInstanceOfType(type)) >= amount;
        }
        
        public int Count<T>()
            where T : IWorkerState
        {
            return this.items.Count(x => x is T);
        }
        

        [ContextMenu("PrintItems")]
        private void DEBUG_PrintItems()
        {
            string s = "";
            foreach (var item in items)
            {
                s += item.DebugName + "\n";
            }
            
        }

        [ContextMenu("AddState")]
        private void AddTestItem()
        {
            Add<IsProne>();
        }
        public List<string> ToString()
        {
            List<string> list =  new();

            for (int i = 0; i < items.Count; i++)
            {
                list.Add(items[i].DebugNameE());
            }

            return list;
        }
    }
    
    
}