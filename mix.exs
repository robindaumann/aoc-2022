defmodule Aoc2022.MixProject do
  use Mix.Project

  def project do
    [
      app: :aoc2022,
      version: "0.2.0",
      elixir: "~> 1.17",
      start_permanent: Mix.env() == :prod,
      deps: []
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end
end
