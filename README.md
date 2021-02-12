# Cloudflare

`Cloudflare` API Client. NOT OFFICIAL. Written for the Elixir community, based on `:restlax`.

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `cloudflare` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:cloudflare, "~> 0.1.0"}
  ]
end
```

## Configuration

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

### Or passed in

```elixir
Cloudflare.Zone.index(opts: [auth_token: "my-auth-token"])
```

```elixir
Cloudflare.Zone.index(opts: [auth_email: "my@email.com", auth_key: "my-auth-key"])
```

Or directly as header

```elixir
Cloudflare.Zone.index(headers: [{"Authorization", "Bearer my-auth-token"}])
```

```elixir
Cloudflare.Zone.index(headers: [{"X-Auth-Email", "my@email.com"}, {"X-Auth-Key", "my-auth-key"}])
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
