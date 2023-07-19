# Project Environment

## Installation

Download julia 1.9.2 from here: https://julialang.org/downloads/

Then ideally add the julia executable to your path by following these instructions: https://julialang.org/downloads/platform/

Clone this project to your local machine.

```
git clone https://github.com/SvenDuve/RL_Project_Env.git
````

```cd``` into the project directory and start julia, then

```julia
using Pkg
Pkg.activate(".")
Pkg.instantiate()
```

```julia
using Pkg
Pkg.add("Conda")
Pkg.add("PyCall")
```

Then install the required python packages by running the following commands in the julia REPL:

```julia
using Conda
using PyCall
Conda.pip("install", "git+https://github.com/SvenDuve/Gymnasium")
```

We now set up a virtual environment for the julia package: