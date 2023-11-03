using UnityEngine;

namespace SnowXR.Faction {
    public enum FactionType {
        /// <summary>
        /// Custom
        /// </summary>
        Custom,
        Ambulance,
        Fire,
        Police,
        Civil,
        ActionLeader,
        BackBoard,
        Stretcher
    }

    
    public static class FactionUtility {
        public static Color GetFactionColor(this FactionType type, Color baseColor) {
            
            switch (type) {
                case FactionType.Custom:
                    return baseColor;
                case FactionType.Ambulance:
                    return Color.yellow;
                case FactionType.Fire:
                    return Color.red;
                case FactionType.Police:
                    return Color.blue;
                case FactionType.Civil:
                    return Color.gray;
                case FactionType.ActionLeader:
                    return new Color(252, 181, 17);
                case FactionType.BackBoard:
                    return new Color(21, 181, 17);
                case FactionType.Stretcher:
                    return new Color(21, 181, 17);
                default:
                    
                    return baseColor;
            }
        }
        public static Color GetFactionColor(this FactionType type) {
            return type.GetFactionColor(Color.white);
        }
    }
}