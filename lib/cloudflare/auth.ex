defmodule Cloudflare.Auth do
  @behaviour Tesla.Middleware

  @impl Tesla.Middleware
  def call(env, next, _) do
    auth_token = env.opts[:auth_token] || Application.get_env(:cloudflare, :auth_token)
    auth_email = env.opts[:auth_email] || Application.get_env(:cloudflare, :auth_email)
    auth_key = env.opts[:auth_key] || Application.get_env(:cloudflare, :auth_key)

    headers =
      (auth_token && [{"authorization", "Bearer #{auth_token}"}]) ||
        (auth_email && auth_key && [{"x-auth-email", auth_email}, {"x-auth-key", auth_key}]) || []

    Tesla.run(%{env | headers: headers ++ env.headers}, next)
  end
end
