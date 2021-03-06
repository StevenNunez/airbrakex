defmodule Airbrakex.Mixfile do
  use Mix.Project

  def project do
    [
      app: :airbrakex,
      version: "0.1.7",
      elixir: "~> 1.0",
      description: "Airbrake Elixir Notifier",
      package: package(),
      deps: deps(),
      docs: [
        main: Airbrakex,
        source_url: "https://github.com/fazibear/airbrakex"
      ]
    ]
  end

  def package() do
    [
      maintainers: ["Michał Kalbarczyk"],
      licenses: ["MIT"],
      links: %{github: "https://github.com/fazibear/airbrakex"}
    ]
  end

  def application() do
    [
      applications: [:httpoison]
    ]
  end

  defp deps() do
    [
      {:httpoison, "~> 0.12 or ~> 1.0"},
      {:jason, "~> 1.1"},
      {:bypass, "~> 0.8", only: :test},
      {:ex_doc, ">= 0.0.0", only: :dev},
      {:credo, "~> 1.0.0", only: :dev, runtime: false}
    ]
  end
end
