defmodule Vase.MixProject do
  use Mix.Project

  def project do
    [
      app: :vase,
      version: "0.1.0",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      description: description(),
      deps: deps(),
      package: package(),
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {Vase.Application, []}
    ]
  end

  defp description() do
    "TODO: Add description"
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:plug_cowboy, "~> 2.0"},
      {:ex_doc, "~> 0.14", only: :dev, runtime: false},
      {:lettuce, "~> 0.1.5", only: :dev}
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
    ]
  end

  defp package() do
    [
      # This option is only needed when you don't want to use the OTP application name
      name: "vase",
      # These are the default files included in the package
      # files: ~w(lib priv .formatter.exs mix.exs README* readme* LICENSE*
      #           license* CHANGELOG* changelog* src),
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/alephmelo/vase"}
    ]
  end
end
