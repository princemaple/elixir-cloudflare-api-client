defmodule Cloudflare.MagicGreTunnelTest do
  use ExUnit.Case

  setup do
    bypass = Bypass.open()
    Application.put_env(:cloudflare, :base_url, "http://localhost:#{bypass.port}")
    %{bypass: bypass}
  end

  test "lists GRE tunnels", %{bypass: bypass} do
    account_id = "acct-123"

    Bypass.expect_once(bypass, "GET", "/accounts/#{account_id}/magic/gre_tunnels", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": [{"id": "gre-1", "name": "my-gre"}], "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => [%{"id" => "gre-1"}]}}} =
             Cloudflare.MagicGreTunnel.index(client: client, params: [account_id: account_id])
  end

  test "creates a GRE tunnel", %{bypass: bypass} do
    account_id = "acct-123"

    body = %{
      "name" => "my-gre",
      "cloudflare_gre_endpoint" => "203.0.113.1",
      "customer_gre_endpoint" => "203.0.113.2",
      "interface_address" => "192.0.2.0/31"
    }

    Bypass.expect_once(bypass, "POST", "/accounts/#{account_id}/magic/gre_tunnels", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": {"id": "gre-new"}, "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => %{"id" => "gre-new"}}}} =
             Cloudflare.MagicGreTunnel.create(body,
               client: client,
               params: [account_id: account_id]
             )
  end

  test "deletes a GRE tunnel", %{bypass: bypass} do
    account_id = "acct-123"
    tunnel_id = "gre-456"

    Bypass.expect_once(
      bypass,
      "DELETE",
      "/accounts/#{account_id}/magic/gre_tunnels/#{tunnel_id}",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": {"deleted": true}, "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"success" => true}}} =
             Cloudflare.MagicGreTunnel.delete(tunnel_id,
               client: client,
               params: [account_id: account_id]
             )
  end
end
