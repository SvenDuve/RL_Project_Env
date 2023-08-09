using DDPG
using RLTypes

agent(Pendulum(), AgentParameter(training_episodes=200))