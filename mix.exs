defmodule Cloudflare.MixProject do
  use Mix.Project

  @version "0.1.0"
  @source_url "https://github.com/princemaple/elixir-cloudflare-api-client"

  def project do
    [
      app: :cloudflare,
      version: @version,
      elixir: "~> 1.11",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
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
      {:restlax, path: "../restlax"},
      {:mint, "~> 1.0", optional: true},
      {:castore, ">= 0.0.0", optional: true},
      {:jason, "~> 1.0", optional: true},
      {:ex_doc, ">= 0.0.0", only: :docs}
    ]
  end

  defp docs do
    [
      main: "Cloudflare",
      source_ref: "v#{@version}",
      canonical: "http://hexdocs.pm/cloudflare",
      source_url: @source_url,
      groups_for_modules: [
        Resources: [
          Cloudflare.User,
          Cloudflare.Account,
          Cloudflare.Organization,
          Cloudflare.Zone,
          Cloudflare.DnsRecord
        ]
      ]
    ]
  end
end
