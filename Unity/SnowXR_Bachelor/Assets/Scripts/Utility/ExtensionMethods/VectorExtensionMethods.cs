using UnityEngine;

public static class VectorExtensionMethods {
    public static Vector3 RemoveY(this Vector3 vector)
    {
        vector.y = 0;
        return vector;
    }

    public static Vector3 RemoveX(this Vector3 vector)
    {
        vector.x = 0;
        return vector;
    }
    
    public static Vector3 RemoveZ(this Vector3 vector)
    {
        vector.z = 0;
        return vector;
    }
}