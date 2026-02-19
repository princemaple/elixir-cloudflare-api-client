defmodule Cloudflare.AccessApplicationTest do
  use ExUnit.Case

  setup do
    bypass = Bypass.open()
    Application.put_env(:cloudflare, :base_url, "http://localhost:#{bypass.port}")
    %{bypass: bypass}
  end

  test "lists access applications", %{bypass: bypass} do
    account_id = "account-123"

    Bypass.expect_once(bypass, "GET", "/accounts/#{account_id}/access/apps", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": [{"id": "app-1"}], "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => [%{"id" => "app-1"}]}}} =
             Cloudflare.AccessApplication.index(client: client, params: [account_id: account_id])
  end

  test "creates access application", %{bypass: bypass} do
    account_id = "account-123"
    new_app = %{"name" => "New App", "domain" => "new-app.example.com"}

    Bypass.expect_once(bypass, "POST", "/accounts/#{account_id}/access/apps", fn conn ->
      {:ok, body, conn} = Plug.Conn.read_body(conn)
      assert body == Jason.encode!(new_app)

      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": {"id": "new-app-id"}, "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => %{"id" => "new-app-id"}}}} =
             Cloudflare.AccessApplication.create(new_app,
               client: client,
               params: [account_id: account_id]
             )
  end

  test "revokes tokens", %{bypass: bypass} do
    account_id = "account-123"
    app_id = "app-456"

    Bypass.expect_once(
      bypass,
      "POST",
      "/accounts/#{account_id}/access/apps/#{app_id}/revoke_tokens",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(200, ~s({"result": {}, "success": true, "errors": [], "messages": []}))
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"success" => true}}} =
             Cloudflare.AccessApplication.revoke_tokens(app_id,
               client: client,
               params: [account_id: account_id]
             )
  end

  test "updates settings", %{bypass: bypass} do
    account_id = "account-123"
    app_id = "app-456"
    settings = %{"session_duration" => "24h"}

    Bypass.expect_once(
      bypass,
      "PUT",
      "/accounts/#{account_id}/access/apps/#{app_id}/settings",
      fn conn ->
        {:ok, body, conn} = Plug.Conn.read_body(conn)
        assert body == Jason.encode!(settings)

        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": {"session_duration": "24h"}, "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"success" => true}}} =
             Cloudflare.AccessApplication.update_settings(app_id, settings,
               client: client,
               params: [account_id: account_id]
             )
  end
end
