using System;

namespace Descriptor.UnitType {
    public enum UnitType {
        NONE,
        CivilWorker,
        CivilVehicle,
        AmbulanceWorker,
        AmbulanceVehicle,
        Backboard,
        Stretcher,
        PoliceWorker,
        PoliceVehicle,
        FireWorker,
        FireVehicle,
        AirAmbulanceWorker,
        AirAmbulanceVehicle,
        Player 
    }

    public static class UnitUtility {
        public static int GetPriority(this UnitType unitType) {
            switch (unitType) {
                case UnitType.NONE:
                case UnitType.CivilWorker:
                    return 10;
                case UnitType.CivilVehicle:
                    return 9;
                case UnitType.AmbulanceWorker:
                    return 10;
                case UnitType.AmbulanceVehicle:
                    return 9;
                case UnitType.PoliceWorker:
                    return 10;
                case UnitType.PoliceVehicle:
                    return 9;
                case UnitType.FireWorker:
                    return 10;
                case UnitType.FireVehicle:
                    return 9;
                case UnitType.AirAmbulanceWorker:
                    return 10;
                case UnitType.AirAmbulanceVehicle:
                    return 9;
                case UnitType.Backboard:
                    return 9;
                case UnitType.Stretcher:
                    return 9;
                default:
                    throw new ArgumentOutOfRangeException(nameof(unitType), unitType, null);
            }
        }
        
        

        public static string GetRepresentKey(this UnitType unitType) {
            return unitType.ToString();
        }
    }
}