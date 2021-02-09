defmodule Cloudflare.MixProject do
  use Mix.Project

  def project do
    [
      app: :cloudflare,
      version: "0.1.0",
      elixir: "~> 1.11",
      start_permanent: Mix.env() == :prod,
      deps: deps()
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
      {:restlax, path: "../restlax"},
      {:mint, "~> 1.0", optional: true},
      {:castore, ">= 0.0.0", optional: true},
      {:jason, "~> 1.0", optional: true}
    ]
  end
end
