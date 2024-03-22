push!(LOAD_PATH,"../src/")

using Documenter, Lerpy
makedocs(sitename="My Documentation")

deploydocs(
    repo = "https://github.com/albert-de-montserrat/Lerpy.jl",
)