using System;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

namespace SnowXR.Represent2D
{
    public class OnNextClickHandler<T>
    {
        private Queue<Func<T, bool>> _stack = new Queue<Func<T, bool>>();
        
        // Todo make onSuccessfulClick logic encapsulated in class
        // Called after the stack is popped and then calls the callback
        public UnityAction<Vector3, OnNextClickHandler<T>> onSuccessfulClick;
        public int Count => _stack.Count;
        
        public OnNextClickHandler<T> AddToSequence(Func<T, bool> callback)
        {
            _stack.Enqueue(callback);
            return this;
        }

        public OnNextClickHandler<T> CreateNewStack(Func<T, bool> callback)
        {
            _stack.Clear();
            _stack.Enqueue(callback);
            return this;
        }
        
        public Func<T, bool> Pop()
        {
            if (_stack.Count == 0)
                return null;
            
            return _stack.Dequeue();
        }

        public Func<T, bool> Peek()
        {
            return _stack.Peek();
        }
        
        public void Clear()
        {
            _stack.Clear();
        }
        
        
    }
    
    
}