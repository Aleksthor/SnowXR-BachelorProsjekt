using System;
using SnowXR.Faction;
using SnowXR.Represent2D;
using UnityEngine;

namespace Descriptor
{
    public static class DescriptorUtility
    {
        private static readonly Vector2 k_smallCarSize = new Vector2(3, 6);
        private static readonly Vector2 k_personSize = new Vector2(2.2f, 2.2f);
        public static Color GetColor(FactionType faction, RepresentType represent)
        {
            Color color = FactionUtility.GetFactionColor(faction);

            // if vehicle, shade darker
            bool isVehicle = represent != RepresentType.Person;
            float dim = 1f;
            if (isVehicle) {
                dim *= 0.93f;
            }
            // color *= ((float)represent.ToPriority() / 10f);
            color *= dim;
            color.a = 1f;
            return color;
        }

        public static string GetSprite(RepresentType representType)
        {
            switch (representType)
            {
                case RepresentType.Custom:
                    break;
                case RepresentType.Person:
                    return "2DRepresentation/Person";
                case RepresentType.SmallVehicle:
                    return "2DRepresentation/SmallCar";
                case RepresentType.MediumVehicle:
                    return "2DRepresentation/MediumCar";
                case RepresentType.LargeVehicle:
                    return "2DRepresentation/LargeCar";
                case RepresentType.Helicopter:
                    return "2DRepresentation/Helicopter";
                default:
                    break;
            }

            return "";
        }

        public static Vector2 GetSize(RepresentType representType)
        {
            switch (representType)
            {
                case RepresentType.Custom:
                    break;
                case RepresentType.Person:
                    return k_personSize;
                    break;
                case RepresentType.SmallVehicle:
                    return k_smallCarSize;
                    break;
                case RepresentType.MediumVehicle:
                    return k_smallCarSize * 1.2f;
                    break;
                case RepresentType.LargeVehicle:
                    return k_smallCarSize * 1.2f * 1.2f;
                case RepresentType.Helicopter:
                    return k_personSize * 3.5f;
                    break;
            }
            return Vector2.one;
        }

        public static string GetRepresentKey(RepresentType representType, FactionType factionType)
        {
            return $"{representType.ToString()}_{factionType.ToString()}";
        }
    }
}