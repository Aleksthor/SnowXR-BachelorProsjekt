using System.Collections;
using System.Collections.Generic;
using System.IO.MemoryMappedFiles;
using UnityEngine;

namespace BA.Prototype
{
    public class PInjuryVisualizer : MonoBehaviour
    {
        [Header("Materials")]
        [SerializeField] Material moderate;
        [SerializeField] Material major;
        [Header("Person We Are Visualizing")]
        [SerializeField] PInjuredPerson injuredPerson;

        [Header("Injuries")]
        [SerializeField] GameObject head;
        [SerializeField] GameObject neck;
        [SerializeField] GameObject rightArm;
        [SerializeField] GameObject leftArm;
        [SerializeField] GameObject torso;
        [SerializeField] GameObject rightThigh;
        [SerializeField] GameObject leftThigh;
        [SerializeField] GameObject rightLeg;
        [SerializeField] GameObject leftLeg;

        private void Start()
        {
            SetupVisualizer();
        }
        private void SetupVisualizer()
        {
            if (injuredPerson != null)
            {
                switch((int)injuredPerson.headBleeding)
                {
                    case 0:
                        head.SetActive(true);
                        head.GetComponent<MeshRenderer>().material = major;
                        break;
                    case 1:
                        head.SetActive(true);
                        head.GetComponent<MeshRenderer>().material = moderate;
                        break;
                    case 2:
                        head.SetActive(false);
                        break;
                }
                switch ((int)injuredPerson.neckBleeding)
                {
                    case 0:
                        neck.SetActive(true);
                        neck.GetComponent<MeshRenderer>().material = major;
                        break;
                    case 1:
                        neck.SetActive(true);
                        neck.GetComponent<MeshRenderer>().material = moderate;
                        break;
                    case 2:
                        neck.SetActive(false);
                        break;
                }
                switch ((int)injuredPerson.rightArmBleeding)
                {
                    case 0:
                        rightArm.SetActive(true);
                        rightArm.GetComponent<MeshRenderer>().material = major;
                        break;
                    case 1:
                        rightArm.SetActive(true);
                        rightArm.GetComponent<MeshRenderer>().material = moderate;
                        break;
                    case 2:
                        rightArm.SetActive(false);
                        break;
                }
                switch ((int)injuredPerson.leftArmBleeding)
                {
                    case 0:
                        leftArm.SetActive(true);
                        leftArm.GetComponent<MeshRenderer>().material = major;
                        break;
                    case 1:
                        leftArm.SetActive(true);
                        leftArm.GetComponent<MeshRenderer>().material = moderate;
                        break;
                    case 2:
                        leftArm.SetActive(false);
                        break;
                }
                switch ((int)injuredPerson.torsoBleeding)
                {
                    case 0:
                        torso.SetActive(true);
                        torso.GetComponent<MeshRenderer>().material = major;
                        break;
                    case 1:
                        torso.SetActive(true);
                        torso.GetComponent<MeshRenderer>().material = moderate;
                        break;
                    case 2:
                        torso.SetActive(false);
                        break;
                }
                switch ((int)injuredPerson.rightThighBleeding)
                {
                    case 0:
                        rightThigh.SetActive(true);
                        rightThigh.GetComponent<MeshRenderer>().material = major;
                        break;
                    case 1:
                        rightThigh.SetActive(true);
                        rightThigh.GetComponent<MeshRenderer>().material = moderate;
                        break;
                    case 2:
                        rightThigh.SetActive(false);
                        break;
                }
                switch ((int)injuredPerson.leftThighBleeding)
                {
                    case 0:
                        leftThigh.SetActive(true);
                        leftThigh.GetComponent<MeshRenderer>().material = major;
                        break;
                    case 1:
                        leftThigh.SetActive(true);
                        leftThigh.GetComponent<MeshRenderer>().material = moderate;
                        break;
                    case 2:
                        leftThigh.SetActive(false);
                        break;
                }
                switch ((int)injuredPerson.rightLegBleeding)
                {
                    case 0:
                        rightLeg.SetActive(true);
                        rightLeg.GetComponent<MeshRenderer>().material = major;
                        break;
                    case 1:
                        rightLeg.SetActive(true);
                        rightLeg.GetComponent<MeshRenderer>().material = moderate;
                        break;
                    case 2:
                        rightLeg.SetActive(false);
                        break;
                }
                switch ((int)injuredPerson.leftLegBleeding)
                {
                    case 0:
                        leftLeg.SetActive(true);
                        leftLeg.GetComponent<MeshRenderer>().material = major;
                        break;
                    case 1:
                        leftLeg.SetActive(true);
                        leftLeg.GetComponent<MeshRenderer>().material = moderate;
                        break;
                    case 2:
                        leftLeg.SetActive(false);
                        break;
                }
            }
        }
    }
}
