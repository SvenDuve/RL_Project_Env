using Pkg
Pkg.activate(".")

using Conda
using PyCall

Conda.pip_interop(true)
Conda.pip("install", "git+https://github.com/SvenDuve/Gymnasium")
Conda.add("wheel")
Conda.add("box2d-py")
Conda.add("pygame")


println("Gymnasium installed")