defmodule MaterializeSass.Mixfile do
  use Mix.Project

  def project do
    [
      app: :materialize_sass,
      version: "0.1.3",
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      deps: deps(),
      package: package(),
      name: "MaterializeSass",
      docs: [extras: ["README.md"], main: "MaterializeSass"],
      description: description()
    ]
  end

  defp package do
    [
      files: ["lib", "mix.exs", "README*", "LICENSE*"],
      maintainers: ["Onur Kucukkece"],
      licenses: ["Apache 2.0"],
      links: %{"GitHub" => "https://github.com/onurkucukkece/materialize_sass"}
    ]
  end

  defp description do
    """
    A modern responsive front-end framework based on Material Design
    """
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
      {:ex_doc, ">= 0.0.0"}
    ]
  end
end
