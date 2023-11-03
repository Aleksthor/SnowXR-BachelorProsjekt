using System;
using UnityEngine;
using UnityEngine.Events;


namespace RCEvents {
    [Serializable]
    public class Evt {
        [SerializeField]
        public event Action _action = delegate { };

        public void Invoke() {
            _action?.Invoke();
        }

        public void AddListener(Action listener) {
            _action -= listener;
            _action += listener;
        }

        public void RemoveListener(Action listener) {
            _action -= listener;
        }

        // /// <summary>
        // /// subscribes as normal, but at the next invoke
        // /// </summary>
        // /// <param name="listener"></param>
        // public void AddListnerSingular(Action listener)
        // {
        //     AddListener(listener);
        //     // removes itself on nect invoke
        //     Action a = () =>
        //     {
        //         _action -= listener;
        //         _action -= this;
        //     };
        //     _action += a;
        // }
    }

    public class Evt<T> {
        private event Action<T> _action = delegate { };

        public void Invoke(T param) {
            _action?.Invoke(param);
        }

        public void AddListener(Action<T> listener) {
            _action -= listener;
            _action += listener;
        }

        public void RemoveListener(Action<T> listener) {
            _action -= listener;
        }
    }


    public class Evt<T0, T1> {
        private event Action<T0, T1> _action = delegate { };

        public void Invoke(T0 param1, T1 param2) {
            _action?.Invoke(param1, param2);
        }

        public void AddListener(Action<T0, T1> listener) {
            _action -= listener;
            _action += listener;
        }

        public void RemoveListener(Action<T0, T1> listener) {
            _action -= listener;
        }
        
        public void RemoveAllListeners() {
            _action = delegate { };
        }
    }


    public class Evt<T0, T1, T2> {
        private event Action<T0, T1, T2> _action = delegate { };

        public void Invoke(T0 param1, T1 param2, T2 param3) {
            _action?.Invoke(param1, param2, param3);
        }

        public void AddListener(Action<T0, T1, T2> listener) {
            _action -= listener;
            _action += listener;
        }

        public void RemoveListener(Action<T0, T1, T2> listener) {
            _action -= listener;
        }
    }
    
    
    
    // functors, events that return something to the caller, like a psudo propertyfield
    //------------------------------------------------
    
    
    public class FEvt<T> {
        private Func<T> _functor = null;

        public void SetFunctor(Func<T> functor ) {
            _functor = functor;
        }

        public T RequestFunctor() {
            if (_functor != null) {
                return _functor();
            }

            return default; // this means that if its a int return 0, if class return null
        }
    }

    // public class FEvt<T0, T1> {
    //     
    //     private Func<T0, T1> _functor = null;
    //
    //     public void SetFunctor(Func<T0, T1> functor ) {
    //         _functor = functor;
    //     }
    //
    //     public Tuple<T0, T1> RequestFunctor() {
    //         if (_functor != null) {
    //             return _functor();
    //         }
    //
    //         return default; // this means that if its a int return 0, if class return null
    //     }
    // }
}