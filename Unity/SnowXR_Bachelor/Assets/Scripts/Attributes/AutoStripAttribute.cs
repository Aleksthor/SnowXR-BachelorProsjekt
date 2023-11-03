using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Snow.Attributes
{
    /// <summary>
    /// Apply this to <see cref="UnityEngine.MonoBehaviour"/> to automatically strip them from builds at build time
    /// </summary>
    [AttributeUsage(AttributeTargets.Class)]
    public class AutoStripAttribute : Attribute
    {
        
    }
    
}
