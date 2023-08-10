println("Loading Packges...")

using DQN
using RLTypes

println("Training Agent for 500 Episodes, please wait...")

aP = agent(LunarLanderDiscrete(), AgentParameter(training_episodes=500))


# println("Training Complete, now testing for 10 Episodes...")

# for i in 1:10
#     renderEnv(LunarLanderDiscrete(), aP.trained_agents[end], rand(1:2000))
# end
