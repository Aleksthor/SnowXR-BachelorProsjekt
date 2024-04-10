using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace MassInjury.Person
{
    public class GenderComponent : MonoBehaviour
    {
        [Header("Gender")]
        [SerializeField] Gender gender;
        
        [Header("Spawning Body")] 
        [SerializeField] private GameObject malePrefab;
        [SerializeField] private GameObject femalePrefab;
        
        private GameObject mesh;
        private static readonly int Color1 = Shader.PropertyToID("_Color");
        
        // Start is called before the first frame update
        void Awake()
        {
            gender = (Gender)Random.Range(0, 2);
            switch (gender)
            {
                case Gender.Male:
                    mesh = Instantiate(malePrefab, transform);
                    break;
                case Gender.Female:
                    mesh = Instantiate(femalePrefab, transform);
                    break;
            }
        }
        
        
        public GameObject GetMesh()
        {
            return mesh;
        }
        
        public Gender GetGender()
        {
            return gender;
        }
        
        
        public void SetColor(Color color)
        {
            if (gender == Gender.Female)
            {
                mesh.transform.Find("mesh").Find("F_Outfit").GetComponent<SkinnedMeshRenderer>().materials[0].SetVector(Color1, color);
            }
            else
            {
                mesh.transform.Find("mesh").Find("M_Outfit").GetComponent<SkinnedMeshRenderer>().materials[0].SetVector(Color1, color);
            }
        }
        
    }
    
    [System.Serializable]
    public enum Gender
    {
        Male, Female
    }
}
