push!(LOAD_PATH,"../src/")

using Documenter, Lerpy
makedocs(
    sitename="NDLerp.jl",
    pages=[
        "Home" => "index.md",
    ]
)

deploydocs(
    repo = "github.com/albert-de-montserrat/NDLerp.jl",
    branch = "gh-pages",
)