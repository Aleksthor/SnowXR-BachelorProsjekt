namespace SnowXR.Represent2D {
    
    public static class RepresentUtility {
        public static int ToPriority(this RepresentType representType) {
            switch (representType) {
                case RepresentType.Person:
                    return 10;
                    break;
                case RepresentType.SmallVehicle:
                    return 9;
                    break;
                case RepresentType.MediumVehicle:
                    return 8;
                    break;
                case RepresentType.LargeVehicle:
                    return 7;
                    break;
                case RepresentType.Helicopter:
                    return 6;
                default:
                    return 0;
            }
        }
    }
    public enum RepresentType {
        /// <summary>
        /// Custom
        /// </summary>
        Custom, 
        /// <summary>
        /// Person
        /// </summary>
        Person, 
        /// <summary>
        /// Vehicle : Personal vehicle
        /// </summary>
        SmallVehicle, 
        /// <summary>
        /// Vehicle : Ambulance vehicle
        /// </summary>
        MediumVehicle,
        /// <summary>
        /// Vehicle : Firetruck vehicle
        /// </summary>
        LargeVehicle,
        Helicopter
    }
}