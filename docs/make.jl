push!(LOAD_PATH,"../src/")

using Documenter, Ledjer

makedocs(
    sitename="Ledjer documentation",
    pages = [
        "Ledjer" => "index.md",
        "Architecture" => [
            "Architecture overview" => "architecture/overview.md"
        ]
    ]
)
