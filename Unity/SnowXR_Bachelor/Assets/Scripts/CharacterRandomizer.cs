using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Random = UnityEngine.Random;

namespace SnowXR.Sim
{
    public class CharacterRandomizer : MonoBehaviour
    {
        [SerializeField] private SkinnedMeshRenderer hairMesh;
        [SerializeField] private Material[] hairMaterials;

        private void Start()
        {
            hairMesh.sharedMaterial = hairMaterials[Random.Range(0, hairMaterials.Length - 1)];
        }
    }
}
