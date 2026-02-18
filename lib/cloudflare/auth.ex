defmodule Cloudflare.Auth do
  @spec auth_headers(keyword()) :: [{String.t(), String.t()}]
  def auth_headers(opts \\ []) do
    auth_token = opts[:auth_token] || Application.get_env(:cloudflare, :auth_token)
    auth_email = opts[:auth_email] || Application.get_env(:cloudflare, :auth_email)
    auth_key = opts[:auth_key] || Application.get_env(:cloudflare, :auth_key)

    (auth_token && [{"authorization", "Bearer #{auth_token}"}]) ||
      (auth_email && auth_key && [{"x-auth-email", auth_email}, {"x-auth-key", auth_key}]) || []
  end
end
