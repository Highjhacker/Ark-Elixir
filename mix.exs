defmodule Ark_Elixir.Mixfile do
  use Mix.Project

  def project do
    [
      app: :ark_elixir,
      version: "0.1.0",
      elixir: "~> 1.5",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      deps: deps(),
      package: package(),
      description: description(),
      name: "Ark_Elixir",
      source_url: "https://github.com/Highjhacker/Ark-Elixir",
      docs: [main: "MyApp", extras: ["README.md"]]
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      applications: [:httpotion],
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"},
      {:httpotion, "~> 3.0.2"},
      {:ex_doc, "~> 0.18.1", only: :dev, runtime: false},
      {:poison, "~> 3.1"}
    ]
  end

  defp package do
      [
          files: ["lib", "mix.exs", "README.md", "LICENSE*"],
          maintainers: ["Highjhacker"],
          description: "Ark API Wrapper in Elixir",
          licenses: ["MIT"],
          links: %{"Github" => "https://github.com/Highjhacker/Ark-Elixir"}
      ]
  end

  defp description do
      "Ark API Wrapper in Elixir."
  end
end
