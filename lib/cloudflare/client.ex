defmodule Cloudflare.Client do
  use Restlax.Client,
    base_url: "https://api.cloudflare.com/client/v4"

  def init do
    :persistent_term.put({:cloudflare, :client}, Cloudflare.Client)
  end

  def req(request) do
    {auth_token, options} = Keyword.pop(request.options, :auth_token)
    {auth_email, options} = Keyword.pop(options, :auth_email)
    {auth_key, options} = Keyword.pop(options, :auth_key)

    request = %{request | options: options}

    Cloudflare.Auth.auth_headers(auth_token: auth_token, auth_email: auth_email, auth_key: auth_key)
    |> Enum.reduce(request, fn {key, value}, req -> Req.Request.put_header(req, key, value) end)
  end
end
