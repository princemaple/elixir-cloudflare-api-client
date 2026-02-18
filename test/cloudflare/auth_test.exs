defmodule Cloudflare.AuthTest do
  use ExUnit.Case

  setup do
    previous = [
      auth_token: Application.get_env(:cloudflare, :auth_token),
      auth_email: Application.get_env(:cloudflare, :auth_email),
      auth_key: Application.get_env(:cloudflare, :auth_key)
    ]

    on_exit(fn ->
      Enum.each(previous, fn {key, value} ->
        if is_nil(value) do
          Application.delete_env(:cloudflare, key)
        else
          Application.put_env(:cloudflare, key, value)
        end
      end)
    end)
  end

  test "prefers auth token" do
    Application.put_env(:cloudflare, :auth_token, "token")
    Application.put_env(:cloudflare, :auth_email, "email@example.com")
    Application.put_env(:cloudflare, :auth_key, "key")

    assert [{"authorization", "Bearer token"}] == Cloudflare.Auth.auth_headers()
  end

  test "falls back to email/key" do
    Application.delete_env(:cloudflare, :auth_token)
    Application.put_env(:cloudflare, :auth_email, "email@example.com")
    Application.put_env(:cloudflare, :auth_key, "key")

    assert [{"x-auth-email", "email@example.com"}, {"x-auth-key", "key"}] ==
             Cloudflare.Auth.auth_headers()
  end
end
