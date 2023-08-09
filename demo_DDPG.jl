println("Loading Packges...")

using DDPG
using RLTypes

println("Training Agent for 500 Episodes, please wait...")

aP = agent(Pendulum(), AgentParameter(training_episodes=500))


println("Training Complete, now testing for 10 Episodes...")

for i in 1:10
    renderEnv(Pendulum(), aP)
end
