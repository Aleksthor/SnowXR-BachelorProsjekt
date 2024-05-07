using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace SnowXR.MassInjury.Goap
{
    public class GoapInventory
    {
        private List<GameObject> items = new List<GameObject>();

        public void AddItem(GameObject item)
        {
            items.Add(item);
        }
        
        public GameObject FindItemWithTag(string tag)
        {
            foreach (var i in items)
            {
                if (i.CompareTag(tag))
                {
                    return i;
                }
            }

            return null;
        }

        public void RemoveItem(GameObject go)
        {
            if (items.Contains(go))
            {
                items.Remove(go);
            }
        }

        public List<GameObject> Items
        {
            get => items;
            set => items = value;
        }
    }
}
