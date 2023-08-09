# Project Environment

## Installation

Download julia 1.9.2 from here: https://julialang.org/downloads/

Then ideally add the julia executable to your path by following these instructions: https://julialang.org/downloads/platform/

Clone this project to your local machine.

```
git clone https://github.com/SvenDuve/RL_Project_Env.git
```

Start Julia and navigate to the project directory.

````julia
cd("path/to/project")
``` 

You can check the Julia REPL is in the correct folder by running ```pwd()```.

Once you are in ```~/RL_Project_Env"``` activate the project environment and install the required packages in the Julia REPL running the following commands:

```julia
using Pkg
Pkg.activate(".")
Pkg.instantiate()
```

This will take several minutes to complete, nevertheless, you should see constant actvitity or a progress bar in the REPL.

## Gymnasium

Then install the required python packages for the Gymnasium Environment by running the following commands in the Julia REPL:

```julia
using Conda
using PyCall
Conda.pip_interop(true)
Conda.pip("install", "git+https://github.com/SvenDuve/Gymnasium")
```

We now set up a virtual environment for the julia package: