defmodule MagicNumbers.MixProject do
  use Mix.Project

  def project do
    [
      app: :magic_numbers,
      version: "0.1.0",
      elixir: "~> 1.7",
      start_permanent: Mix.env() == :prod
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end
end
