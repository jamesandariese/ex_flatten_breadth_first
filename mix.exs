defmodule FlattenBreadthFirst.MixProject do
  use Mix.Project

  def project do
    [
      app: :ex_flatten_breadth_first,
      version: "0.1.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      description: "Flatten lists breadth first",
      package: package(),
      deps: deps(),
    ]
  end

  defp package do
    [
      files: ["lib", "mix.exs", "README*", "LICENSE"],
      maintainers: ["James Andariese"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/jamesandariese/ex_flatten_breadth_first"},
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"},
      {:ex_doc, ">= 0.0.0", only: :dev},
    ]
  end
end
