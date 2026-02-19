defmodule Cloudflare.FirewallRuleTest do
  use ExUnit.Case

  setup do
    bypass = Bypass.open()
    Application.put_env(:cloudflare, :base_url, "http://localhost:#{bypass.port}")
    %{bypass: bypass}
  end

  test "lists firewall rules", %{bypass: bypass} do
    zone_id = "zone-123"

    Bypass.expect_once(bypass, "GET", "/zones/#{zone_id}/firewall/rules", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": [{"id": "rule-1", "action": "block", "paused": false}], "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => [%{"id" => "rule-1"}]}}} =
             Cloudflare.FirewallRule.index(client: client, params: [zone_id: zone_id])
  end

  test "creates a firewall rule", %{bypass: bypass} do
    zone_id = "zone-123"
    body = [%{"action" => "block", "filter" => %{"expression" => "ip.src eq 1.2.3.4"}}]

    Bypass.expect_once(bypass, "POST", "/zones/#{zone_id}/firewall/rules", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": [{"id": "rule-new", "action": "block"}], "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => [%{"id" => "rule-new"}]}}} =
             Cloudflare.FirewallRule.create(body, client: client, params: [zone_id: zone_id])
  end

  test "updates a firewall rule (PUT single)", %{bypass: bypass} do
    zone_id = "zone-123"
    rule_id = "rule-456"
    body = %{"action" => "challenge", "paused" => false}

    Bypass.expect_once(bypass, "PUT", "/zones/#{zone_id}/firewall/rules/#{rule_id}", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": {"id": "#{rule_id}", "action": "challenge"}, "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"success" => true}}} =
             Cloudflare.FirewallRule.update(rule_id, body,
               client: client,
               params: [zone_id: zone_id]
             )
  end

  test "deletes a firewall rule", %{bypass: bypass} do
    zone_id = "zone-123"
    rule_id = "rule-456"

    Bypass.expect_once(bypass, "DELETE", "/zones/#{zone_id}/firewall/rules/#{rule_id}", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": {"id": "#{rule_id}"}, "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"success" => true}}} =
             Cloudflare.FirewallRule.delete(rule_id, client: client, params: [zone_id: zone_id])
  end

  test "updates priority of firewall rules (PATCH collection)", %{bypass: bypass} do
    zone_id = "zone-123"
    body = [%{"id" => "rule-1", "priority" => 10}, %{"id" => "rule-2", "priority" => 20}]

    Bypass.expect_once(bypass, "PATCH", "/zones/#{zone_id}/firewall/rules", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": [{"id": "rule-1", "priority": 10}], "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"success" => true}}} =
             Cloudflare.FirewallRule.update_priority(body,
               client: client,
               params: [zone_id: zone_id]
             )
  end
end
