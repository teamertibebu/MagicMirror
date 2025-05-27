defmodule MagicMirror.MixProject do
  use Mix.Project

  def project do
    [
      app: :magic_mirror,
      version: "0.1.0",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {MagicMirror.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:plug_cowboy, "~> 2.6"},
      {:jason, "~> 1.4"},
      {:cors_plug, "~> 3.0"},
      {:exsync, "~> 0.2", only: :dev}
    ]
  end
end
