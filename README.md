# Project Environment

We expect a running installation of [git](https://git-scm.com/downloads) for this project as well as access to [GitHub](https://github.com). All Julia repos have successfully been tested on 64-bit architectures of each of Windows, MacOS and Linux by GitHub Actions. Installation of Julia and the neccessary repos from either Windows or MacOS should be straightforward. For Linux we recommend to install Julia from the command line, see below. If you have a running installation of Julia on your machine, you can skip the Julia installation step and move on to cloning the project to your machine.

## Julia Installation

Download julia 1.9.2 from here: https://julialang.org/downloads/

After installation, Julia can be started by clicking the Julia icon from your applications folder. If you want to run julia from the command line you can add the julia executable to your path by following these instructions: https://julialang.org/downloads/platform/

**For active Julia users**: If this is not the first installation of Julia on your machine, make sure that the new installation satisfies any requirements of your ```startup.jl``` file in case you have one. 

Once you are happy with your Julia installation, we can move on to cloning the project to your machine.

## Clone this project to your local machine.

In your root folder, open a terminal and run the following command:

```
git clone https://github.com/SvenDuve/RL_Project_Env.git
```

This will create a folder ```RL_Project_Env``` in your users directory. This folder contains the Julia project environment we will be using for this project.

## Creating your environment

Start Julia and from the Julia Repl ```cd``` into the project directory:

```
cd("./RL_Project_Env")
``` 

You can check in the Julia REPL if you are in the correct folder by running ```pwd()```. The output should be, depending on your operating system, something like ```"/Users/your_user_name/RL_Project_Env"```.

Considering this worked and you are in ```/RL_Project_Env"``` activate the project environment and install the required packages in the Julia REPL running the following commands:

```
using Pkg
Pkg.activate(".")
Pkg.instantiate()
```

This will take several minutes to complete, nevertheless, you should see constant actvitity or a progress bar in the REPL. Some packages (OrdinaryDiffEq, Enzyme, ...) will take quite some time to install.

The process took 

```
495.537194 seconds (64.31 M allocations: 11.700 GiB, 0.37% gc time, 0.30% compilation time)
```

on a machine with the following specs:

```
Julia Version 1.9.2
Commit e4ee485e909 (2023-07-05 09:39 UTC)
Platform Info:
  OS: macOS (x86_64-apple-darwin22.4.0)
  CPU: 8 × Intel(R) Core(TM) i7-8559U CPU @ 2.70GHz
  WORD_SIZE: 64
  LIBM: libopenlibm
  LLVM: libLLVM-14.0.6 (ORCJIT, skylake)
  Threads: 1 on 8 virtual cores
Environment:
  JULIA_IMAGE_THREADS = 1
```

You just have created an encapsulated virtual environment for this project. Once this is not required anymore it can be conventiently deleted.

## Gymnasium

We next require a running installation of the Gymnasium framework.  

Running the following script will clone the Gymnasium framework and neccessary other python packages to the virtual environment you just created on your machine. The Julia Conda package maintains its own installation of python and respective python packages. Anything installed here will not interfere with any other python installation(s) on your system. You can install Gymnasium and dependencies by running the following command in the Julia REPL:

```
include("build_Gymnasium.jl")
```

This process takes approximately two minutes on the above configuration and should run fluently.

## Demos

We are now ready to run some demos:

Model Free:

### Pendulum:

This demo solves the Pendulum environment using DDPG. The demo will run for 500 episodes. You can check the output for each episode in your REPL. Once trained the environment should render in a separate window, and the agent will attempt to solve it 10 times. 

```
julia> include("demo_DDPG.jl") # shows the solve of a Pendulum Environment
```

Any score highe than -130 is considered a solve.

If you are unhappy with the performance of the agent, you can re-run the demo. The agent will be re-initialized and trained from scratch. Consequent runs will be faster due to Julia´s JIT compiler.

### Lunar Lander

Similar to the Pendulum environment, we solve the discrete version of the Lunar Lander within 500 Episodes of training. 

``` 
julia> include("demo_DQN.jl") # solves the discrete Lunar Lander Environment
```

### Model Learning

This process runs for appx. seven minutes on the above configuration. The learning process can be followed in the REPL.

```
julia> include("demo_NODELearning.jl") # shows the training of a model
```

### Model Based

Warning, this will run for a long time, and only runs for 50 Episodes, hence the agent wont be fully capable of solving the environment. Nevertheless, once training is complete, the agent will attempt to solve the environment 10 times.

```
julia> include("demo_MBRL.jl") # shows the solve of a Pendulum Environment
```

## Removing Julia

Once ready, you can remove Julia simply by deleting the hidden folder ```.julia``` in your user´s root directory. This will remove all packages and the Julia installation from your machine. Also remove Julia from your App folder.

For the Virtual Environment, simply delete the folder ```RL_Project_Env``` from your user´s root directory.