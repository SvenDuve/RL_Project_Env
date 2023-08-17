println("Loading Packges...")

import MBRL
using RLTypes

println("We train a reduced version with a pre-trained model of the environment. This agent will not perform well.")
println("Training Agent for 50 Episodes, please wait...")

mP = MBRL.MBRLAgent(NODEModel(), Pendulum(), AgentParameter(training_episodes=50), ModelParameter())


println("Training Complete, now testing for 10 Episodes...")

for i in 1:10
    MBRL.renderEnv(Pendulum(), aP[1].trained_agents[end], rand(1:2000))
end
