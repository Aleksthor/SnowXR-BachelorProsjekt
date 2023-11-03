using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Snow.Utility
{
    public static class IListExtensions
    {
        /// <summary>
        /// Returns <see cref="startIndex"/>" + 1, but wraps to 0 if it would overflow the list
        /// </summary>
        /// <param name="list"></param>
        /// <param name="startIndex"></param>
        /// <typeparam name="T"></typeparam>
        /// <returns></returns>
        public static int NextLoopingIndex<T>(this IList<T> list, int startIndex)
        {
            if (startIndex+1 >= list.Count)
            {
                return 0;
            }

            return startIndex + 1;
        }

        /// <summary>
        /// Given a predicate and start index, will return the index of the first item passing the predicate
        /// </summary>
        /// <param name="list"></param>
        /// <param name="startIndex"></param>
        /// <param name="predicate"></param>
        /// <typeparam name="T"></typeparam>
        /// <returns></returns>
        public static int NextValidLoopingIndex<T>(this IList<T> list, int startIndex, Func<T, bool> predicate)
        {
            for (int i = list.NextLoopingIndex(startIndex); i != startIndex; i = list.NextLoopingIndex(i))
            {
                if (predicate.Invoke(list[i]))
                {
                    return i;
                }
            }

            return -1;
        }
    }
}