defmodule Cloudflare.ClientTest do
  use ExUnit.Case

  setup do
    bypass = Bypass.open()
    %{bypass: bypass}
  end

  test "creates client with bearer auth token", %{bypass: bypass} do
    client =
      Cloudflare.Client.new(
        auth_token: "token-from-opts"
      )

    Bypass.expect_once(bypass, fn conn ->
      assert [auth] = Plug.Conn.get_req_header(conn, "authorization")
      assert auth == "Bearer token-from-opts"
      Plug.Conn.resp(conn, 200, ~s({"ok":true}))
    end)

    assert {:ok, %{status: 200}} = client.get("http://localhost:#{bypass.port}/token")
  end

  test "creates client with email/key auth", %{bypass: bypass} do
    client =
      Cloudflare.Client.new(
        auth_email: "e@example.com",
        auth_key: "key-123"
      )

    Bypass.expect_once(bypass, fn conn ->
      assert Plug.Conn.get_req_header(conn, "x-auth-email") == ["e@example.com"]
      assert Plug.Conn.get_req_header(conn, "x-auth-key") == ["key-123"]
      Plug.Conn.resp(conn, 200, ~s({"ok":true}))
    end)

    assert {:ok, %{status: 200}} = client.get("http://localhost:#{bypass.port}/key")
  end

  test "init registers auth client from application config", %{bypass: bypass} do
    original_auth_token = Application.get_env(:cloudflare, :auth_token)
    Application.put_env(:cloudflare, :auth_token, "token-from-config")

    on_exit(fn ->
      if is_nil(original_auth_token) do
        Application.delete_env(:cloudflare, :auth_token)
      else
        Application.put_env(:cloudflare, :auth_token, original_auth_token)
      end
    end)

    Bypass.expect_once(bypass, fn conn ->
      assert Plug.Conn.get_req_header(conn, "authorization") == ["Bearer token-from-config"]
      Plug.Conn.resp(conn, 200, ~s({"ok":true}))
    end)

    Cloudflare.Client.init()
    client = :persistent_term.get({:cloudflare, :client})
    assert {:ok, %{status: 200}} = client.get("http://localhost:#{bypass.port}/config")
  end

  test "raises when creating client without credentials" do
    assert_raise ArgumentError, ~r/expected :auth_token or :auth_email with :auth_key/, fn ->
      Cloudflare.Client.new([])
    end
  end
end
