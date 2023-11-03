using System;
using System.Collections.Generic;
using UnityEngine;

namespace SnowXR.Sim
{
    public class NpcCosmetics : MonoBehaviour
    {
        [SerializeField] private Animator anim;

        private readonly List<GameObject> _items = new();

        public void ApplyCosmetic(GameObject cosmeticObject, HumanBodyBones slot)
        {
            if (!anim)
            {
                Debug.Log("No Animator Assigned To NPC!");
                return;
            }
            
            GameObject go = Instantiate(cosmeticObject, 
                anim.GetBoneTransform(slot).transform.position, 
                anim.GetBoneTransform(slot).rotation,
                anim.GetBoneTransform(slot).transform);

            if (slot == HumanBodyBones.Head)
            {
                go.transform.position = go.transform.position + anim.GetBoneTransform(slot).forward * 0.15f +
                                        anim.GetBoneTransform(slot).up * 0.025f;
                go.transform.rotation = anim.GetBoneTransform(slot).rotation * Quaternion.Euler(90, 0, 0);
            }

            _items.Add(go);
        }

        public void RemoveCosmetic(GameObject cosmeticObject)
        {
            if (!_items.Contains(cosmeticObject))
            {
                Debug.Log("Could not find object");
                return;
            }

            Destroy(_items.Find(o => cosmeticObject), 1);
            _items.Remove(cosmeticObject);
        }

    }
}
