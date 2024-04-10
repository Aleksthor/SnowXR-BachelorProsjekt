using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using MassInjury.Person;

namespace SnowXR.MassInjury
{
    [RequireComponent(typeof(GenderComponent), typeof(BleedingInjury))]
    public class PaleSkinComponent : MonoBehaviour
    {
        private BleedingInjury injuryScript;
        private SkinnedMeshRenderer head;
        private SkinnedMeshRenderer hands;
        
        private static readonly int Saturation = Shader.PropertyToID("_Saturation");


        private void Awake()
        {
            injuryScript = GetComponent<BleedingInjury>();
        }

        // Start is called before the first frame update
        void Start()
        {
            Gender gender = GetComponent<GenderComponent>().GetGender();
            GameObject mesh = GetComponent<GenderComponent>().GetMesh();
            
            if (gender == Gender.Male)
            {
                head = mesh.transform.Find("mesh").Find("M_Head").GetComponent<SkinnedMeshRenderer>();
                hands = mesh.transform.Find("mesh").Find("M_Hands").GetComponent<SkinnedMeshRenderer>();
            }
            else
            {
                head = mesh.transform.Find("mesh").Find("F_Head").GetComponent<SkinnedMeshRenderer>();
                hands = mesh.transform.Find("mesh").Find("F_Hands").GetComponent<SkinnedMeshRenderer>();
            }
        }

        // Update is called once per frame
        void Update()
        {
            if (injuryScript.Dead())
            {
                head.material.SetFloat(Saturation, 0.4f);
                hands.material.SetFloat(Saturation, 0.4f);
            }
            else
            {
                head.material.SetFloat(Saturation, map(injuryScript.bloodLossML, 4000f,0f, 0.4f,1f));
                hands.material.SetFloat(Saturation, map(injuryScript.bloodLossML, 4000f,0f, 0.4f,1f));
            }
        }
        
        float map(float s, float a1, float a2, float b1, float b2)
        {
            return b1 + (s-a1)*(b2-b1)/(a2-a1);
        }
    }
}
