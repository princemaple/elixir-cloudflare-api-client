defmodule Cloudflare.CloudflareTunnelTest do
  use ExUnit.Case

  setup do
    bypass = Bypass.open()
    Application.put_env(:cloudflare, :base_url, "http://localhost:#{bypass.port}")
    %{bypass: bypass}
  end

  test "lists tunnels", %{bypass: bypass} do
    account_id = "acct-123"

    Bypass.expect_once(bypass, "GET", "/accounts/#{account_id}/cfd_tunnel", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": [{"id": "tun-1", "name": "my-tunnel"}], "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => [%{"id" => "tun-1"}]}}} =
             Cloudflare.CloudflareTunnel.index(client: client, params: [account_id: account_id])
  end

  test "creates a tunnel", %{bypass: bypass} do
    account_id = "acct-123"
    body = %{"name" => "my-tunnel", "tunnel_secret" => "abc123"}

    Bypass.expect_once(bypass, "POST", "/accounts/#{account_id}/cfd_tunnel", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": {"id": "tun-new", "name": "my-tunnel"}, "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => %{"id" => "tun-new"}}}} =
             Cloudflare.CloudflareTunnel.create(body,
               client: client,
               params: [account_id: account_id]
             )
  end

  test "updates a tunnel (PATCH)", %{bypass: bypass} do
    account_id = "acct-123"
    tunnel_id = "tun-456"
    body = %{"name" => "renamed-tunnel"}

    Bypass.expect_once(
      bypass,
      "PATCH",
      "/accounts/#{account_id}/cfd_tunnel/#{tunnel_id}",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": {"id": "#{tunnel_id}"}, "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"success" => true}}} =
             Cloudflare.CloudflareTunnel.update(tunnel_id, body,
               client: client,
               params: [account_id: account_id]
             )
  end

  test "deletes a tunnel", %{bypass: bypass} do
    account_id = "acct-123"
    tunnel_id = "tun-456"

    Bypass.expect_once(
      bypass,
      "DELETE",
      "/accounts/#{account_id}/cfd_tunnel/#{tunnel_id}",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": {"id": "#{tunnel_id}"}, "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"success" => true}}} =
             Cloudflare.CloudflareTunnel.delete(tunnel_id,
               client: client,
               params: [account_id: account_id]
             )
  end

  test "lists tunnel connections", %{bypass: bypass} do
    account_id = "acct-123"
    tunnel_id = "tun-456"

    Bypass.expect_once(
      bypass,
      "GET",
      "/accounts/#{account_id}/cfd_tunnel/#{tunnel_id}/connections",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": [{"id": "conn-1"}], "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"result" => [%{"id" => "conn-1"}]}}} =
             Cloudflare.CloudflareTunnel.connections(tunnel_id,
               client: client,
               params: [account_id: account_id]
             )
  end

  test "gets tunnel token", %{bypass: bypass} do
    account_id = "acct-123"
    tunnel_id = "tun-456"

    Bypass.expect_once(
      bypass,
      "GET",
      "/accounts/#{account_id}/cfd_tunnel/#{tunnel_id}/token",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": "eyJhbGciOiJ...", "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"result" => "eyJhbGciOiJ..."}}} =
             Cloudflare.CloudflareTunnel.token(tunnel_id,
               client: client,
               params: [account_id: account_id]
             )
  end
end
