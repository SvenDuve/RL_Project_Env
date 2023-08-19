println("Loading Packges...")

import NODEDynamics
using RLTypes

println("Training a model of the Acrobot environment for 100 Episodes, please wait...")

mE = NODEDynamics.modelEnv(Pendulum(), ModelParameter(collect_train=100, collect_test=10, training_episodes=100, batch_size=64))