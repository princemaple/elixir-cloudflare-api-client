defmodule Cloudflare.ZeroTrustUserTest do
  use ExUnit.Case

  setup do
    bypass = Bypass.open()
    Application.put_env(:cloudflare, :base_url, "http://localhost:#{bypass.port}")
    %{bypass: bypass}
  end

  test "lists users", %{bypass: bypass} do
    account_id = "acct-123"

    Bypass.expect_once(bypass, "GET", "/accounts/#{account_id}/access/users", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": [{"id": "user-1", "email": "user@example.com"}], "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => [%{"id" => "user-1"}]}}} =
             Cloudflare.ZeroTrustUser.index(client: client, params: [account_id: account_id])
  end

  test "gets active sessions for a user", %{bypass: bypass} do
    account_id = "acct-123"
    user_id = "user-1"

    Bypass.expect_once(
      bypass,
      "GET",
      "/accounts/#{account_id}/access/users/#{user_id}/active_sessions",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": [{"name": "session-1"}], "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => [%{"name" => "session-1"}]}}} =
             Cloudflare.ZeroTrustUser.active_sessions(user_id,
               client: client,
               params: [account_id: account_id]
             )
  end

  test "gets failed logins for a user", %{bypass: bypass} do
    account_id = "acct-123"
    user_id = "user-1"

    Bypass.expect_once(
      bypass,
      "GET",
      "/accounts/#{account_id}/access/users/#{user_id}/failed_logins",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": [{"expiration": 1700000000}], "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => [%{"expiration" => 1_700_000_000}]}}} =
             Cloudflare.ZeroTrustUser.failed_logins(user_id,
               client: client,
               params: [account_id: account_id]
             )
  end
end
