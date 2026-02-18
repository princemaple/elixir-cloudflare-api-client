defmodule Cloudflare.Client do
  use Restlax.Client,
    base_url: "https://api.cloudflare.com/client/v4"

  def init do
    :persistent_term.put({:cloudflare, :client}, Cloudflare.Client)
  end

  def req(request) do
    {auth_token, options} = pop_option(request.options, :auth_token)
    {auth_email, options} = pop_option(options, :auth_email)
    {auth_key, options} = pop_option(options, :auth_key)

    request = %{request | options: options}

    Cloudflare.Auth.auth_headers(
      auth_token: auth_token,
      auth_email: auth_email,
      auth_key: auth_key
    )
    |> Enum.reduce(request, fn {key, value}, req -> Req.Request.put_header(req, key, value) end)
  end

  defp pop_option(options, key) when is_list(options), do: Keyword.pop(options, key)
  defp pop_option(options, key) when is_map(options), do: Map.pop(options, key)
  defp pop_option(options, _key), do: {nil, options}
end
