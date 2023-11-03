using System;
using System.Text;
using UnityEngine;

namespace BBG.Text
{
    /// <summary>
    /// A collection of useful utilities for dealing with strings and especially unity rich text more easily
    /// </summary>
    public static class TextUtils
    {
        /// <summary>
        /// Given a color, returns the rich text string representation
        /// </summary>
        /// <param name="color">Color to convert to rich text representation</param>
        /// <returns>rich text string representing given color</returns>
        private static string ColorToHtmlString(Color color)
        {
            return UnityEngine.ColorUtility.ToHtmlStringRGBA(color);
        }

        /// <summary>
        /// Inserts rich text tags to color the string to the given color
        /// </summary>
        /// <param name="s">string to color</param>
        /// <param name="colour">the color to apply to the string</param>
        /// <returns>A colored string</returns>
        public static string Colorfy(string s, Color colour)
        {
            string colorAsHexString = ColorToHtmlString(colour);

            StringBuilder sb = new StringBuilder();
            sb.AppendFormat("<color=#{0}>", colorAsHexString);
            sb.Append(s);
            sb.Append("</color>");

            return sb.ToString();
        }

        /// <summary>
        /// Inserts bold rich text tags surrounding the string
        /// </summary>
        /// <param name="s">String to make bold</param>
        /// <returns>A bold string that isn't afraid of anything</returns>
        public static string Bold(string s)
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("<b>");
            sb.Append(s);
            sb.Append("</b>");

            return sb.ToString();
        }

        /// <summary>
        /// Inserts italic rich text tags surrounding the string
        /// </summary>
        /// <param name="s">String to make italic</param>
        /// <returns>Italian string</returns>
        public static string Italicize(string s)
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("<i>");
            sb.Append(s);
            sb.Append("</i>");

            return sb.ToString();
        }

        /// <summary>
        /// Surrounds a string with a tag, mainly for unity rich text
        /// </summary>
        /// <param name="s">String to surround with a tag</param>
        /// <param name="tag">The tag to surround the string with</param>
        /// <returns>A surrounded string</returns>
        public static string SurroundWithTag(string s, string tag)
        {
            return SurroundWithTag(s, tag);
        }
        public static string SurroundWithTag(string s, string tag, string tagValue)
        {
            StringBuilder sb = new StringBuilder();
            sb.Append($"<{tag}={tagValue}>");
            sb.Append(s);
            sb.Append($"</{tag}>");

            return sb.ToString();
        }

        // Taken from Reawake but could be useful for certain text styles
        public enum TextStyle
        {
            Calculation
        }

        public static string ApplyStyle(string s, TextStyle style)
        {
            switch (style)
            {
                case TextStyle.Calculation:
                    return $"<style=\"calculation\">{s}</style>";
                    break;
                default:
                    throw new ArgumentOutOfRangeException(nameof(style), style, null);
            }
        }

        /// <summary>
        /// Simply returns a string saying false/true in color
        /// </summary>
        /// <param name="b"></param>
        /// <returns></returns>
        public static string BoolDisplay(bool b)
        {
            var yes = ColorToHtmlString(new Color(0.68f, 1f, 0.64f));
            var no = ColorToHtmlString(new Color(1f, 0.46f, 0.51f));
            var yn = b ? yes : no;
            return $"<color={yn}>{b}</color>";
        }
    }
}