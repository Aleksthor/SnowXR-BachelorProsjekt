

using UnityEngine;

namespace SnowXR.Injectors
{
    public interface ISnowXRInjectable
    {
        public void Inject(SnowXRGoapInjector injector);
    }
}