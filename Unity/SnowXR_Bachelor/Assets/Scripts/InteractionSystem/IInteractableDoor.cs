using UnityEngine;

namespace BNG
{
    public interface IInteractableDoor
    {
        public void OpenDoor();
        public void CloseDoor();
        public void UnlockDoor();
        public void LockDoor();

        public bool IsOpen { get; }

    }
}