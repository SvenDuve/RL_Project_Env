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

Start Julia and ```cd``` into the project directory:

```
julia> cd("./RL_Project_Env")
``` 

You can check in the Julia REPL if you are in the correct folder by running ```pwd()```.

Once you are in ```/RL_Project_Env"``` activate the project environment and install the required packages in the Julia REPL running the following commands:

```
julia> using Pkg
julia> Pkg.activate(".")
julia> Pkg.instantiate()
```

This will take several minutes to complete, nevertheless, you should see constant actvitity or a progress bar in the REPL.

We next require a running installation of the Gymnasium framework.  

## Gymnasium

Running the following script will clone the Gymnasium framework and neccessary other python packages to your local machine and install within an encapsulated python installation under Julia´s Conda Package.


```
julia> include("build_Gymnasium.jl")
```

We are now ready to run some demos:

Model Free:

## Pendulum:

```
julia> include("demo_DDPG.jl") # shows the solve of a Pendulum Environment
```

## Lunar Lander

``` 
julia> include("demo_DQN.jl") # solve the discrete Lunar Lander Environment
```

## Model Learning

```
julia> include("demo_Model_Learning.jl") # shows the solve of a Pendulum Environment
```

## Model Based

```
julia> include("demo_Model_Based.jl") # shows the solve of a Pendulum Environment
```