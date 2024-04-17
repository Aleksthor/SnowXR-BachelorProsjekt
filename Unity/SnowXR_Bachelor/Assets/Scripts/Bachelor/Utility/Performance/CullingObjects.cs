using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace MassInjury.Utility
{
    public class CullingObjects : MonoBehaviour
    {
        public static CullingObjects instance;

        [SerializeField] private Transform reception;
        [SerializeField] private Transform downStairs;
        [SerializeField] private Transform stairs;
        [SerializeField] private Transform roomA;
        [SerializeField] private Transform roomB;
        [SerializeField] private Transform roomC;
        [SerializeField] private Transform roomD;
        [SerializeField] private Transform roomE;
        
        [SerializeField] private Transform receptionDecor;
        [SerializeField] private Transform stairsDecor;
        [SerializeField] private Transform roomADecor;
        [SerializeField] private Transform roomBDecor;
        [SerializeField] private Transform roomCDecor;
        [SerializeField] private Transform roomDDecor;
        [SerializeField] private Transform roomEDecor;

        [SerializeField] private List<Transform> receptionPolice = new List<Transform>();
        
        [SerializeField] private List<Transform> roomAPatients = new List<Transform>();
        [SerializeField] private List<Transform> roomBPatients = new List<Transform>();
        [SerializeField] private List<Transform> roomCPatients = new List<Transform>();
        [SerializeField] private List<Transform> roomDPatients = new List<Transform>();
        [SerializeField] private List<Transform> roomEPatients = new List<Transform>();


        [SerializeField] private CullingSpace currentSpace;
        
        private bool done = false;

        private void Awake()
        {
            if (instance == null)
            {
                instance = this;
            }
            done = false;
        }

        private void Update()
        {

            if (!done)
            {
                done = true;
                NewSpace(CullingSpace.DownStairs);
            }
        }


        public void EnterDownStairs()
        {
            downStairs.gameObject.SetActive(true);
            
            reception.gameObject.SetActive(false);
            receptionDecor.gameObject.SetActive(false);
            
            stairs.gameObject.SetActive(true);
            stairsDecor.gameObject.SetActive(true);
            
            roomA.gameObject.SetActive(false);
            roomADecor.gameObject.SetActive(false);
            
            roomB.gameObject.SetActive(false);
            roomBDecor.gameObject.SetActive(false);
            
            roomC.gameObject.SetActive(false);
            roomCDecor.gameObject.SetActive(false);
            
            roomD.gameObject.SetActive(false);
            roomDDecor.gameObject.SetActive(false);
            
            roomE.gameObject.SetActive(false);
            roomEDecor.gameObject.SetActive(false);

            foreach (var police in receptionPolice)
            {
                police.gameObject.SetActive(false);
            }
            foreach (var patient in roomAPatients)
            {
                patient.gameObject.SetActive(false);
            }
            foreach (var patient in roomBPatients)
            {
                patient.gameObject.SetActive(false);
            }
            foreach (var patient in roomCPatients)
            {
                patient.gameObject.SetActive(false);
            }
            foreach (var patient in roomDPatients)
            {
                patient.gameObject.SetActive(false);
            }
            foreach (var patient in roomEPatients)
            {
                patient.gameObject.SetActive(false);
            }
        }

        public void EnterStairs()
        {
            downStairs.gameObject.SetActive(true);
            
            reception.gameObject.SetActive(true);
            receptionDecor.gameObject.SetActive(true);
            

            stairs.gameObject.SetActive(true);
            stairsDecor.gameObject.SetActive(true);
            
            roomA.gameObject.SetActive(true);
            roomADecor.gameObject.SetActive(false);
            
            roomB.gameObject.SetActive(false);
            roomBDecor.gameObject.SetActive(false);
            
            roomC.gameObject.SetActive(false);
            roomCDecor.gameObject.SetActive(false);
            
            roomD.gameObject.SetActive(false);
            roomDDecor.gameObject.SetActive(false);
            
            roomE.gameObject.SetActive(true);
            roomEDecor.gameObject.SetActive(false);
            
            foreach (var police in receptionPolice)
            {
                police.gameObject.SetActive(false);
            }
            foreach (var patient in roomAPatients)
            {
                patient.gameObject.SetActive(false);
            }
            foreach (var patient in roomBPatients)
            {
                patient.gameObject.SetActive(false);
            }
            foreach (var patient in roomCPatients)
            {
                patient.gameObject.SetActive(false);
            }
            foreach (var patient in roomDPatients)
            {
                patient.gameObject.SetActive(false);
            }
            foreach (var patient in roomEPatients)
            {
                patient.gameObject.SetActive(false);
            }
        }

        public void EnterReception()
        {
            downStairs.gameObject.SetActive(false);
            
            reception.gameObject.SetActive(true);
            receptionDecor.gameObject.SetActive(true);

            stairs.gameObject.SetActive(true);
            stairsDecor.gameObject.SetActive(true);
            
            roomA.gameObject.SetActive(true);
            roomADecor.gameObject.SetActive(true);
            
            roomB.gameObject.SetActive(false);
            roomBDecor.gameObject.SetActive(false);
            
            roomC.gameObject.SetActive(false);
            roomCDecor.gameObject.SetActive(false);
            
            roomD.gameObject.SetActive(false);
            roomDDecor.gameObject.SetActive(false);
            
            roomE.gameObject.SetActive(true);
            roomEDecor.gameObject.SetActive(true);
            
            foreach (var police in receptionPolice)
            {
                police.gameObject.SetActive(true);
            }
            foreach (var patient in roomAPatients)
            {
                patient.gameObject.SetActive(true);
            }
            foreach (var patient in roomBPatients)
            {
                patient.gameObject.SetActive(false);
            }
            foreach (var patient in roomCPatients)
            {
                patient.gameObject.SetActive(false);
            }
            foreach (var patient in roomDPatients)
            {
                patient.gameObject.SetActive(false);
            }
            foreach (var patient in roomEPatients)
            {
                patient.gameObject.SetActive(true);
            }
        }
        
        public void EnterUpStairs()
        {
            downStairs.gameObject.SetActive(false);
            
            reception.gameObject.SetActive(false);
            receptionDecor.gameObject.SetActive(false);
            

            stairs.gameObject.SetActive(true);
            stairsDecor.gameObject.SetActive(true);
            
            roomA.gameObject.SetActive(false);
            roomADecor.gameObject.SetActive(false);
            
            roomB.gameObject.SetActive(false);
            roomBDecor.gameObject.SetActive(false);
            
            roomC.gameObject.SetActive(false);
            roomCDecor.gameObject.SetActive(false);
            
            roomD.gameObject.SetActive(false);
            roomDDecor.gameObject.SetActive(false);
            
            roomE.gameObject.SetActive(false);
            roomEDecor.gameObject.SetActive(false);
            
            
        }
        
        public void EnterRoomA()
        {
            downStairs.gameObject.SetActive(false);
            
            reception.gameObject.SetActive(true);
            receptionDecor.gameObject.SetActive(true);

            stairs.gameObject.SetActive(true);
            stairsDecor.gameObject.SetActive(false);
            
            roomA.gameObject.SetActive(true);
            roomADecor.gameObject.SetActive(true);
            
            roomB.gameObject.SetActive(true);
            roomBDecor.gameObject.SetActive(true);
            
            roomC.gameObject.SetActive(false);
            roomCDecor.gameObject.SetActive(false);
            
            roomD.gameObject.SetActive(true);
            roomDDecor.gameObject.SetActive(true);
            
            roomE.gameObject.SetActive(true);
            roomEDecor.gameObject.SetActive(false);
            
            foreach (var police in receptionPolice)
            {
                police.gameObject.SetActive(true);
            }
            
            foreach (var patient in roomAPatients)
            {
                patient.gameObject.SetActive(true);
            }
            foreach (var patient in roomBPatients)
            {
                patient.gameObject.SetActive(true);
            }
            foreach (var patient in roomCPatients)
            {
                patient.gameObject.SetActive(false);
            }
            foreach (var patient in roomDPatients)
            {
                patient.gameObject.SetActive(true);
            }
            foreach (var patient in roomEPatients)
            {
                patient.gameObject.SetActive(false);
            }
        }
        
        public void EnterRoomB()
        {
            downStairs.gameObject.SetActive(false);
            
            reception.gameObject.SetActive(false);
            receptionDecor.gameObject.SetActive(false);
            

            stairs.gameObject.SetActive(false);
            stairsDecor.gameObject.SetActive(false);
            
            roomA.gameObject.SetActive(true);
            roomADecor.gameObject.SetActive(true);
            
            roomB.gameObject.SetActive(true);
            roomBDecor.gameObject.SetActive(true);
            
            roomC.gameObject.SetActive(true);
            roomCDecor.gameObject.SetActive(true);
            
            roomD.gameObject.SetActive(true);
            roomDDecor.gameObject.SetActive(false);
            
            roomE.gameObject.SetActive(false);
            roomEDecor.gameObject.SetActive(false);
            
            foreach (var police in receptionPolice)
            {
                police.gameObject.SetActive(false);
            }
            
            foreach (var patient in roomAPatients)
            {
                patient.gameObject.SetActive(true);
            }
            foreach (var patient in roomBPatients)
            {
                patient.gameObject.SetActive(true);
            }
            foreach (var patient in roomCPatients)
            {
                patient.gameObject.SetActive(true);
            }
            foreach (var patient in roomDPatients)
            {
                patient.gameObject.SetActive(false);
            }
            foreach (var patient in roomEPatients)
            {
                patient.gameObject.SetActive(false);
            }
        }
        
        public void EnterRoomC()
        {
            downStairs.gameObject.SetActive(false);
            
            reception.gameObject.SetActive(false);
            receptionDecor.gameObject.SetActive(false);

            stairs.gameObject.SetActive(false);
            stairsDecor.gameObject.SetActive(false);
            
            roomA.gameObject.SetActive(false);
            roomADecor.gameObject.SetActive(false);
            
            roomB.gameObject.SetActive(true);
            roomBDecor.gameObject.SetActive(true);
            
            roomC.gameObject.SetActive(true);
            roomCDecor.gameObject.SetActive(true);
            
            roomD.gameObject.SetActive(true);
            roomDDecor.gameObject.SetActive(true);
            
            roomE.gameObject.SetActive(false);
            roomEDecor.gameObject.SetActive(false);
            
            foreach (var police in receptionPolice)
            {
                police.gameObject.SetActive(false);
            }
            
            foreach (var patient in roomAPatients)
            {
                patient.gameObject.SetActive(false);
            }
            foreach (var patient in roomBPatients)
            {
                patient.gameObject.SetActive(true);
            }
            foreach (var patient in roomCPatients)
            {
                patient.gameObject.SetActive(true);
            }
            foreach (var patient in roomDPatients)
            {
                patient.gameObject.SetActive(true);
            }
            foreach (var patient in roomEPatients)
            {
                patient.gameObject.SetActive(false);
            }
        }
        
        public void EnterRoomD()
        {
            downStairs.gameObject.SetActive(false);
            
            reception.gameObject.SetActive(false);
            receptionDecor.gameObject.SetActive(false);

            stairs.gameObject.SetActive(false);
            stairsDecor.gameObject.SetActive(false);
            
            roomA.gameObject.SetActive(true);
            roomADecor.gameObject.SetActive(true);
            
            roomB.gameObject.SetActive(true);
            roomBDecor.gameObject.SetActive(false);
            
            roomC.gameObject.SetActive(true);
            roomCDecor.gameObject.SetActive(false);
            
            roomD.gameObject.SetActive(true);
            roomDDecor.gameObject.SetActive(true);
            
            roomE.gameObject.SetActive(true);
            roomEDecor.gameObject.SetActive(true);
            
            foreach (var police in receptionPolice)
            {
                police.gameObject.SetActive(false);
            }
            
            foreach (var patient in roomAPatients)
            {
                patient.gameObject.SetActive(true);
            }
            foreach (var patient in roomBPatients)
            {
                patient.gameObject.SetActive(false);
            }
            foreach (var patient in roomCPatients)
            {
                patient.gameObject.SetActive(true);
            }
            foreach (var patient in roomDPatients)
            {
                patient.gameObject.SetActive(true);
            }
            foreach (var patient in roomEPatients)
            {
                patient.gameObject.SetActive(true);
            }
        }
        
        public void EnterRoomE()
        {
            downStairs.gameObject.SetActive(false);
            
            reception.gameObject.SetActive(true);
            receptionDecor.gameObject.SetActive(true);

            stairs.gameObject.SetActive(true);
            stairsDecor.gameObject.SetActive(true);
            
            roomA.gameObject.SetActive(true);
            roomADecor.gameObject.SetActive(false);
            
            roomB.gameObject.SetActive(true);
            roomBDecor.gameObject.SetActive(false);
            
            roomC.gameObject.SetActive(false);
            roomCDecor.gameObject.SetActive(false);
            
            roomD.gameObject.SetActive(true);
            roomDDecor.gameObject.SetActive(true);
            
            roomE.gameObject.SetActive(true);
            roomEDecor.gameObject.SetActive(true);
            
            foreach (var police in receptionPolice)
            {
                police.gameObject.SetActive(true);
            }
            
            foreach (var patient in roomAPatients)
            {
                patient.gameObject.SetActive(false);
            }
            foreach (var patient in roomBPatients)
            {
                patient.gameObject.SetActive(false);
            }
            foreach (var patient in roomCPatients)
            {
                patient.gameObject.SetActive(false);
            }
            foreach (var patient in roomDPatients)
            {
                patient.gameObject.SetActive(true);
            }
            foreach (var patient in roomEPatients)
            {
                patient.gameObject.SetActive(true);
            }
        }


        public void NewSpace(CullingSpace space)
        {
            currentSpace = space;

            switch (currentSpace)
            {
                case CullingSpace.DownStairs:
                    EnterDownStairs();
                    break;
                case CullingSpace.UpStairs:
                    EnterUpStairs();
                    break;
                case CullingSpace.Stairs:
                    EnterStairs();
                    break;
                case CullingSpace.Reception:
                    EnterReception();
                    break;
                case CullingSpace.RoomA:
                    EnterRoomA();
                    break;
                case CullingSpace.RoomB:
                    EnterRoomB();
                    break;
                case CullingSpace.RoomC:
                    EnterRoomC();
                    break;
                case CullingSpace.RoomD:
                    EnterRoomD();
                    break;
                case CullingSpace.RoomE:
                    EnterRoomE();
                    break;
            }
        }
    }
    
}
