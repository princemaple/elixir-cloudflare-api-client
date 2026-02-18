# Cloudflare

[![hex.pm](https://img.shields.io/hexpm/v/cloudflare.svg)](https://hex.pm/packages/cloudflare)
[![hex.pm](https://img.shields.io/hexpm/l/cloudflare.svg)](https://hex.pm/packages/cloudflare)
[![github.com](https://img.shields.io/github/last-commit/princemaple/elixir-cloudflare-api-client.svg)](https://github.com/princemaple/elixir-cloudflare-api-client)

`Cloudflare` API Client. Written for the Elixir community,
based on [`:restlax`](https://github.com/princemaple/restlax).

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `cloudflare` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:cloudflare, "~> 0.3"}
  ]
end
```

## Configuration

### Authentication

```elixir
config :cloudflare,
  auth_token: "my-auth-token"
```

Or

```elixir
config :cloudflare,
  auth_email: "my@email.com",
  auth_key: "my-auth-key"
```

Or both `¯\(°_o)/¯`.

#### Or passed in directly as header

```elixir
Cloudflare.Zone.index(headers: [{"Authorization", "Bearer my-auth-token"}])
```

```elixir
Cloudflare.Zone.index(headers: [{"X-Auth-Email", "my@email.com"}, {"X-Auth-Key", "my-auth-key"}])
```

### Register client

Normally it's teadius to explicitly pass the client module in.

```elixir
Cloudflare.Zone.index(client: CloudFlare.Client)
```

It can be registered on application start, e.g. in `YourApp.Application.start`

```elixir
defmodule YourApp.Application do
  use Application

  def start(_type, _args) do
    Cloudflare.Client.init() # <- You can add this line
    children = [
      {Phoenix.PubSub, name: App.PubSub},
      App.Repo,
      AppWeb.Endpoint
    ]

    opts = [strategy: :one_for_one, name: App.Supervisor]
    Supervisor.start_link(children, opts)
  end

  def config_change(changed, _new, removed) do
    AppWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
```

## Usage

```elixir
Cloudflare.Zone.index()
```

```elixir
Cloudflare.DnsRecord.index(params: [zone_id: "my-zone-id"])
```

```elixir
Cloudflare.DnsRecord.create(
  %{type: "A", name: "my.domain", content: "127.0.0.1", ttl: 120},
  params: [zone_id: "my-zone-id"]
)
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/cloudflare](https://hexdocs.pm/cloudflare).

## Contribution

Half manually scraped Cloudflare docs are located in `priv/docs`. Pick an entity and write module for it.

Simple entities can be as easy as `Cloudflare.Account` and `Cloudflare.User`

Some need a little customization like `Cloudflare.DnsRecord`

Some need more `Cloudflare.ZoneSetting`
