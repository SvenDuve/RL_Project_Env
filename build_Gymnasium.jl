using Pkg
Pkg.activate(".")

using Conda
using PyCall

Conda.pip_interop(true)
Conda.add("wheel")
println("Done installing wheel")
Conda.add("box2d-py")
println("Done installing box2d-py")
Conda.add("pygame")
println("Done installing pygame")
Conda.pip("install", "git+https://github.com/SvenDuve/Gymnasium")
println("Gymnasium installed")