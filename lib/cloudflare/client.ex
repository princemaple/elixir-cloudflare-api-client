defmodule Cloudflare.Client do
  @base_url "https://api.cloudflare.com/client/v4"

  use Restlax.Client,
    base_url: @base_url

  def init(opts \\ []) do
    :persistent_term.put({:cloudflare, :client}, new(opts))
  end

  def new(opts) do
    :persistent_term.put({:cloudflare, :client_opts}, client_opts(opts))
    __MODULE__
  end

  def req(request) do
    opts =
      case :persistent_term.get({:cloudflare, :client_opts}, :undefined) do
        :undefined -> client_opts([])
        value -> value
      end

    request = maybe_put_base_url(request, opts[:base_uri])

    Enum.reduce(opts[:headers], request, fn {key, value}, req ->
      Req.Request.put_header(req, key, value)
    end)
  end

  defp client_opts(opts) do
    base_uri = URI.parse(Keyword.get(opts, :base_url, @base_url))

    [
      base_uri: base_uri,
      headers: auth_headers(opts)
    ]
  end

  defp maybe_put_base_url(request, uri) do
    url = request.url

    %{
      request
      | url: %{
          url
          | scheme: if(is_nil(uri.scheme), do: url.scheme, else: uri.scheme),
            host: if(is_nil(uri.host), do: url.host, else: uri.host),
            port: if(is_nil(uri.port), do: url.port, else: uri.port)
        }
    }
  end

  defp auth_headers(opts) do
    auth_token = opts[:auth_token] || Application.get_env(:cloudflare, :auth_token)
    auth_email = opts[:auth_email] || Application.get_env(:cloudflare, :auth_email)
    auth_key = opts[:auth_key] || Application.get_env(:cloudflare, :auth_key)

    cond do
      auth_token ->
        [{"authorization", "Bearer #{auth_token}"}]

      auth_email && auth_key ->
        [{"x-auth-email", auth_email}, {"x-auth-key", auth_key}]

      true ->
        raise ArgumentError, "expected :auth_token or :auth_email with :auth_key"
    end
  end
end
