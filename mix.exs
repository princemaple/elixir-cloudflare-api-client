defmodule Cloudflare.MixProject do
  use Mix.Project

  @version "0.2.0"
  @source_url "https://github.com/princemaple/elixir-cloudflare-api-client"

  def project do
    [
      app: :cloudflare,
      version: @version,
      elixir: "~> 1.11",
      start_permanent: Mix.env() == :prod,
      deps: deps(),

      # Package
      name: "Cloudflare",
      description: "Cloudflare API Client",
      package: package(),
      docs: docs()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:restlax, "~> 0.1"},
      {:mint, "~> 1.0", optional: true},
      {:castore, ">= 0.0.0", optional: true},
      {:jason, "~> 1.0", optional: true},
      {:floki, ">= 0.0.0", only: :dev},
      {:ex_doc, ">= 0.0.0", only: :docs}
    ]
  end

  defp package do
    [
      maintainers: ["Po Chen"],
      licenses: ["MIT"],
      links: %{"GitHub" => @source_url},
      files: ~w(.formatter.exs mix.exs lib priv README.md CHANGELOG.md LICENSE)
    ]
  end

  defp docs do
    [
      main: "Cloudflare",
      source_ref: "v#{@version}",
      canonical: "http://hexdocs.pm/cloudflare",
      source_url: @source_url,
      skip_undefined_reference_warnings_on: ["CHANGELOG.md"],
      extra_section: "Cloudflare Docs",
      extras: extras(),
      groups_for_modules: [
        Resources: resource_modules()
      ]
    ]
  end

  defp resource_modules do
    Path.wildcard("lib/cloudflare/resources/*")
    |> Enum.map(&(&1 |> Path.rootname() |> Path.basename() |> Macro.camelize()))
    |> Enum.map(&Module.concat(Cloudflare, &1))
  end

  defp extras do
    Path.wildcard("priv/docs/*.md")
  end
end
