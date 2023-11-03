using System;
using System.Reflection;
using System.Text;
using BBG.Text;
using UnityEngine;
using Object = UnityEngine.Object;
#if UNITY_EDITOR
using UnityEditor;
#endif

public static class Logging
{
    public enum LogGroup
    {
        GENERIC,
        IMPORTANT,
        DEBUG,

        // Game related
        NETWORKING,
        NET_SERVER,
        NET_CLIENT,
        GAME_LOGIC,
        UI,
        ANIMATION,
        CONTROLLER,
        AUDIO,
        WORLD_LOGIC,
        GAME_DATA,
        INITIALIZATION,
        
        // Editor related
        EDITOR_BUILDS,

        // misc stuff
        GAME_STATS,
        SETTINGS,
    }

    public static Action<string> LoggedWarning;
    public static Action<string> LoggedError;
    public static Action<string> LoggedAnything;
    public static Action<string> LoggedInfo;

    private static bool onlyShowImportant;

    /// <summary>
    /// 
    /// </summary>
    /// <param name="message"></param>
    /// <param name="obj"></param>
    /// <param name="ignoreInBuild">If true, this message will never be logged in a build, only in the editor</param>
    public static void Log(string message, Object obj, bool ignoreInBuild = false)
    {
#if !UNITY_EDITOR
        if (ignoreInBuild){
            return;
        }
#endif

        if (onlyShowImportant)
        {
            return;
        }

        Logging.Log(LogGroup.GENERIC, message, obj);

        LoggedInfo?.Invoke(message);
        LoggedAnything?.Invoke(message);
    }

    public static void Log(string message, bool important, bool ignoreInBuild = false)
    {
        Logging.Log(LogGroup.GENERIC, message, null, important, ignoreInBuild);
    }

    public static void Log(string message, bool ignoreInBuild = false)
    {
        Logging.Log(message, null, ignoreInBuild);
    }

    public static void Log(object message, bool ignoreInBuild = false)
    {
        Logging.Log(message.ToString(), null, ignoreInBuild);
    }

    public static void Log(LogGroup logGroup, string message, Object obj = null, bool important = false,
        bool ignoreInBuild = false)
    {
#if !UNITY_EDITOR
        if (ignoreInBuild){
            return;
        }
#endif

        if (important)
        {
            logGroup = LogGroup.IMPORTANT;
        }

        if (onlyShowImportant && logGroup != LogGroup.IMPORTANT)
        {
            return;
        }

        var sb = AddGroupPrefix(logGroup, message);
        Debug.Log(sb.ToString(), obj);

        LoggedInfo?.Invoke(sb.ToString());
        LoggedAnything?.Invoke(sb.ToString());
    }

    /// <summary>
    /// Logs a very important message, and disallows any other message from being shown. Useful for specific debugging
    /// </summary>
    /// <param name="message"></param>
    public static void LogSuperImportant(string message, Object obj = null)
    {
#if UNITY_EDITOR
        if (!onlyShowImportant)
        {
            if (false)
            {
                // Clear the logs - https://answers.unity.com/questions/707636/clear-console-window.html
                var assembly = Assembly.GetAssembly(typeof(SceneView));
                var type = assembly.GetType("UnityEditor.LogEntries");
                var method = type.GetMethod("Clear");
                method.Invoke(new object(), null);
                onlyShowImportant = true;
            }
        }
#endif
        var sb = AddGroupPrefix(LogGroup.IMPORTANT, message);
        Debug.Log(sb, obj);
    }

    private static StringBuilder AddGroupPrefix(LogGroup logGroup, string message)
    {
        StringBuilder sb = new StringBuilder();

        switch (logGroup)
        {
            case LogGroup.DEBUG:
                sb.Append(TextUtils.Bold(TextUtils.Colorfy("[DEBUG] ", new Color(0.72f, 0.2f, 0.25f))));
                break;
            case LogGroup.NETWORKING:
                sb.Append(TextUtils.Bold(TextUtils.Colorfy("[Networking] ", new Color(0.51f, 0.73f, 0.38f))));
                break;
            case LogGroup.NET_CLIENT:
                sb.Append(TextUtils.Bold(TextUtils.Colorfy("[Net_Client] ", new Color(0.51f, 0.73f, 0.38f))));
                break;
            case LogGroup.NET_SERVER:
                sb.Append(TextUtils.Bold(TextUtils.Colorfy("[Net_Server] ", new Color(0.51f, 0.73f, 0.38f))));
                break;
            case LogGroup.GAME_LOGIC:
                sb.Append(TextUtils.Bold(TextUtils.Colorfy("[Game] ", new Color(0.44f, 0.75f, 0.75f))));
                break;
            case LogGroup.CONTROLLER:
                sb.Append(TextUtils.Bold(TextUtils.Colorfy("[Controller] ", new Color(0.52f, 0.62f, 0.74f))));
                break;
            case LogGroup.UI:
                sb.Append(TextUtils.Bold(TextUtils.Colorfy("[Interface] ", new Color(0.43f, 0.52f, 0.72f))));
                break;
            case LogGroup.ANIMATION:
                sb.Append(TextUtils.Bold(TextUtils.Colorfy("[Animation] ", Color.cyan)));
                break;
            case LogGroup.IMPORTANT:
                sb.Append(TextUtils.Bold(TextUtils.Colorfy("[!!] ", new Color(1f, 0.8f, 0.37f))));
                break;
            case LogGroup.AUDIO:
                sb.Append(TextUtils.Bold(TextUtils.Colorfy("[Audio] ", new Color(0.73f, 0.33f, 1f))));
                break;
            case LogGroup.GAME_DATA:
                sb.Append(TextUtils.Bold(TextUtils.Colorfy("[Data] ", new Color(1f, 0.4f, 0.28f))));
                break;
            case LogGroup.INITIALIZATION:
                sb.Append(TextUtils.Bold(TextUtils.Colorfy("[Init] ", new Color(1f, 0.4f, 0.28f))));
                break;
            case LogGroup.EDITOR_BUILDS:
                sb.Append(TextUtils.Bold(TextUtils.Colorfy("[Build ] ", new Color(0.73f, 0.9f, 1f))));
                break;
        }

        sb.Append(message);
        return sb;
    }


    public static void LogWarning(string message, Object o = null)
    {
        Debug.LogWarning(message, o);

        LoggedWarning?.Invoke(message);
        LoggedAnything?.Invoke(message);
    }

    public static void LogWarning(LogGroup logGroup, string message, Object o = null)
    {
        var sb = AddGroupPrefix(logGroup, message);
        LogWarning(sb.ToString(), o);
    }

    public static void LogError(string message, Object obj = null)
    {
        Debug.LogError(message, obj);

        LoggedError?.Invoke(message);
        LoggedAnything?.Invoke(message);
    }

    public static void LogError(LogGroup group, string message, Object obj = null)
    {
        var sb = AddGroupPrefix(group, message);

        LoggedError?.Invoke(message);
        LoggedAnything?.Invoke(message);
    }

    public static void Break()
    {
        breakOnMainThread();
    }

    private static async void breakOnMainThread()
    {
        Debug.Break();
    }
}