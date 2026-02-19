defmodule Cloudflare.MagicIpsecTunnelTest do
  use ExUnit.Case

  setup do
    bypass = Bypass.open()
    Application.put_env(:cloudflare, :base_url, "http://localhost:#{bypass.port}")
    %{bypass: bypass}
  end

  test "lists IPsec tunnels", %{bypass: bypass} do
    account_id = "acct-123"

    Bypass.expect_once(bypass, "GET", "/accounts/#{account_id}/magic/ipsec_tunnels", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": [{"id": "ipsec-1", "name": "my-ipsec"}], "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => [%{"id" => "ipsec-1"}]}}} =
             Cloudflare.MagicIpsecTunnel.index(client: client, params: [account_id: account_id])
  end

  test "creates an IPsec tunnel", %{bypass: bypass} do
    account_id = "acct-123"

    body = %{
      "name" => "my-ipsec",
      "cloudflare_endpoint" => "203.0.113.1",
      "customer_endpoint" => "203.0.113.2",
      "interface_address" => "192.0.2.0/31"
    }

    Bypass.expect_once(bypass, "POST", "/accounts/#{account_id}/magic/ipsec_tunnels", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": {"id": "ipsec-new"}, "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => %{"id" => "ipsec-new"}}}} =
             Cloudflare.MagicIpsecTunnel.create(body,
               client: client,
               params: [account_id: account_id]
             )
  end

  test "generates PSK for an IPsec tunnel", %{bypass: bypass} do
    account_id = "acct-123"
    tunnel_id = "ipsec-456"

    Bypass.expect_once(
      bypass,
      "POST",
      "/accounts/#{account_id}/magic/ipsec_tunnels/#{tunnel_id}/psk_generate",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": {"psk": "abc123"}, "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => %{"psk" => "abc123"}}}} =
             Cloudflare.MagicIpsecTunnel.generate_psk(tunnel_id,
               client: client,
               params: [account_id: account_id]
             )
  end
end
