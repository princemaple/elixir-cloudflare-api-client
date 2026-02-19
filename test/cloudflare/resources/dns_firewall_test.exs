defmodule Cloudflare.DnsFirewallTest do
  use ExUnit.Case

  setup do
    bypass = Bypass.open()
    Application.put_env(:cloudflare, :base_url, "http://localhost:#{bypass.port}")
    %{bypass: bypass}
  end

  test "lists DNS firewall clusters", %{bypass: bypass} do
    account_id = "acct-123"

    Bypass.expect_once(bypass, "GET", "/accounts/#{account_id}/dns_firewall", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": [{"id": "df-1", "name": "My DNS FW"}], "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => [%{"id" => "df-1"}]}}} =
             Cloudflare.DnsFirewall.index(client: client, params: [account_id: account_id])
  end

  test "creates a DNS firewall cluster", %{bypass: bypass} do
    account_id = "acct-123"
    body = %{"name" => "My DNS FW", "upstream_ips" => ["1.1.1.1"]}

    Bypass.expect_once(bypass, "POST", "/accounts/#{account_id}/dns_firewall", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": {"id": "df-new", "name": "My DNS FW"}, "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => %{"id" => "df-new"}}}} =
             Cloudflare.DnsFirewall.create(body, client: client, params: [account_id: account_id])
  end

  test "updates a DNS firewall cluster (PATCH)", %{bypass: bypass} do
    account_id = "acct-123"
    cluster_id = "df-456"
    body = %{"minimum_cache_ttl" => 60}

    Bypass.expect_once(
      bypass,
      "PATCH",
      "/accounts/#{account_id}/dns_firewall/#{cluster_id}",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": {"id": "#{cluster_id}"}, "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"result" => %{"id" => ^cluster_id}}}} =
             Cloudflare.DnsFirewall.update(cluster_id, body,
               client: client,
               params: [account_id: account_id]
             )
  end

  test "deletes a DNS firewall cluster", %{bypass: bypass} do
    account_id = "acct-123"
    cluster_id = "df-456"

    Bypass.expect_once(
      bypass,
      "DELETE",
      "/accounts/#{account_id}/dns_firewall/#{cluster_id}",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": {"id": "#{cluster_id}"}, "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"success" => true}}} =
             Cloudflare.DnsFirewall.delete(cluster_id,
               client: client,
               params: [account_id: account_id]
             )
  end
end
