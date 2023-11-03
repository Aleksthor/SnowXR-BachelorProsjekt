using System.Collections;
using System.Collections.Generic;
using UnityEngine;


[System.Serializable]
public class EquippableItem
{
    //[SerializeField]
    public GameObject ItemToSpawn;
   // [HideInInspector]
    public string IDName {
        get { return ItemToSpawn.name; }
    }
    /// <summary>
    /// The parent which the item should be attached to.
    /// </summary>
    [Tooltip("The parent which the item should be attached to.")]
    public Transform ParentAttacher;
    [SerializeField]
    private Vector3 OffsetPosition;
    [SerializeField]
    private Vector3 OffsetRotation;
    [SerializeField]
    private Vector3 Size = new Vector3(1,1,1);

    [HideInInspector]
    public GameObject ItemRef;

    public Vector3 GetOffsetPos() { return OffsetPosition; }
    public Vector3 GetOffsetRotation() { return OffsetRotation; }
    public Vector3 GetSize() { return Size; }


}

public class ItemHandlerGOAP : MonoBehaviour
{
    [SerializeField]
    private List<EquippableItem> equippableItems;


    public void AttachItemGOAP (string _ItemID)
    {
        EquippableItem itemFound = equippableItems.Find((x) => x.IDName == _ItemID);

        if (!equippableItems.Contains(itemFound))
            return;

        if (itemFound.ItemToSpawn && !itemFound.ItemRef)
        {
            // Calculate the rotation of the item to spawn
            Quaternion newItemRot = itemFound.ParentAttacher.rotation;
            Vector3 euler = newItemRot.eulerAngles;
            Vector3 eulerOffset = itemFound.GetOffsetRotation();
            newItemRot = Quaternion.Euler(euler.x + eulerOffset.x, euler.y + eulerOffset.y, euler.z + eulerOffset.z);

            // Spawn object
            itemFound.ItemRef = Instantiate(itemFound.ItemToSpawn,
                itemFound.ParentAttacher.position,
                newItemRot, 
                itemFound.ParentAttacher
                );
            itemFound.ItemRef.transform.localPosition = itemFound.GetOffsetPos();
            itemFound.ItemRef.transform.localEulerAngles = itemFound.GetOffsetRotation();
            itemFound.ItemRef.transform.localScale = itemFound.GetSize();
        }
    }

    public void RemoveItemGOAP(string _ItemID)
    {
        EquippableItem itemFound = equippableItems.Find((x) => x.IDName == _ItemID);

        if (!equippableItems.Contains(itemFound))
            return;

        if (itemFound.ItemRef)
        {
            Destroy(itemFound.ItemRef);
            itemFound.ItemRef = null;
        }
    }
}
