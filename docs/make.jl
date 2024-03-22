push!(LOAD_PATH,"../src/")

using Documenter, Lerpy
makedocs(
    sitename="Lerpy.jl",
    pages=[
        "Home" => "index.md",
    ]
)

deploydocs(
    repo = "https://github.com/albert-de-montserrat/Lerpy.jl",
)