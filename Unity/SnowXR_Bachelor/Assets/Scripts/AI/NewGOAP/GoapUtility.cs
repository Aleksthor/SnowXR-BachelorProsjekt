using CrashKonijn.Goap.Behaviours;

namespace SnowXR
{
    public static class GoapUtility
    {
        public static readonly float k_rangeSmall = 1.5f;
        public static readonly float k_rangeMedium = 2f;
        public static readonly float k_rangeLarge = 3.5f;
        
        public static bool CurrentActionIs<T>(this AgentBehaviour agent)
        {
            if (agent.CurrentAction == null)
            {
                return false;
            }
            
            if (agent.CurrentAction.GetType() != typeof(T))
            {
                return false;
            }

            return true;
        }

        public static void Refresh(this AgentBehaviour agentBehaviour) {
            agentBehaviour.GoapSet.Agents.Enqueue(agentBehaviour);
        }
    }
}