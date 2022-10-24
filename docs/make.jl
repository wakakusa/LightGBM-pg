using Documenter, LightGBM

makedocs(;
    modules=[LightGBM],
    repo="https://github.com/wakakusa/LightGBM.jl/blob/{commit}{path}#L{line}",
    sitename="LightGBM.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://wakakusa.github.io/LightGBM.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
        "Functions" => "functions.md",
    ],
)

deploydocs(;
    repo="github.com/wakakusa/LightGBM.jl",
)
