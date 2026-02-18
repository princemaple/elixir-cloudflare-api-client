defmodule Cloudflare.Client do
  @base_url "https://api.cloudflare.com/client/v4"

  use Restlax.Client,
    base_url: @base_url

  def init(opts \\ []) do
    :persistent_term.put({:cloudflare, :client}, new(opts))
  end

  def new(opts) do
    base_url = Keyword.get(opts, :base_url, @base_url)
    headers = auth_headers(opts)

    module = Module.concat(__MODULE__, "AuthClient#{System.unique_integer([:positive])}")

    {:module, ^module, _, _} =
      Module.create(
        module,
        quote do
          use Restlax.Client,
            base_url: unquote(base_url),
            req_options: [headers: unquote(headers)]
        end,
        Macro.Env.location(__ENV__)
      )

    module
  end

  def req(request), do: request

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
