defmodule Cloudflare.ZoneRulesetTest do
  use ExUnit.Case

  setup do
    bypass = Bypass.open()
    Application.put_env(:cloudflare, :base_url, "http://localhost:#{bypass.port}")
    %{bypass: bypass}
  end

  test "lists zone rulesets", %{bypass: bypass} do
    zone_id = "zone-123"

    Bypass.expect_once(bypass, "GET", "/zones/#{zone_id}/rulesets", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": [{"id": "zrs-1", "name": "default"}], "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => [%{"id" => "zrs-1"}]}}} =
             Cloudflare.ZoneRuleset.index(client: client, params: [zone_id: zone_id])
  end

  test "creates a zone ruleset", %{bypass: bypass} do
    zone_id = "zone-123"

    body = %{
      "name" => "My Ruleset",
      "kind" => "zone",
      "phase" => "http_request_firewall_custom",
      "rules" => []
    }

    Bypass.expect_once(bypass, "POST", "/zones/#{zone_id}/rulesets", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": {"id": "zrs-new"}, "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => %{"id" => "zrs-new"}}}} =
             Cloudflare.ZoneRuleset.create(body, client: client, params: [zone_id: zone_id])
  end

  test "deletes a zone ruleset", %{bypass: bypass} do
    zone_id = "zone-123"
    rs_id = "zrs-456"

    Bypass.expect_once(bypass, "DELETE", "/zones/#{zone_id}/rulesets/#{rs_id}", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(200, ~s({"result": {}, "success": true, "errors": [], "messages": []}))
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"success" => true}}} =
             Cloudflare.ZoneRuleset.delete(rs_id, client: client, params: [zone_id: zone_id])
  end

  test "lists ruleset versions", %{bypass: bypass} do
    zone_id = "zone-123"
    rs_id = "zrs-456"

    Bypass.expect_once(bypass, "GET", "/zones/#{zone_id}/rulesets/#{rs_id}/versions", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": [{"version": "1"}], "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"result" => [_]}}} =
             Cloudflare.ZoneRuleset.versions(rs_id, client: client, params: [zone_id: zone_id])
  end

  test "adds a rule to a zone ruleset", %{bypass: bypass} do
    zone_id = "zone-123"
    rs_id = "zrs-456"
    body = %{"action" => "block", "expression" => "ip.src eq 1.2.3.4"}

    Bypass.expect_once(bypass, "POST", "/zones/#{zone_id}/rulesets/#{rs_id}/rules", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": {"id": "rule-new"}, "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"result" => %{"id" => "rule-new"}}}} =
             Cloudflare.ZoneRuleset.create_rule(rs_id, body,
               client: client,
               params: [zone_id: zone_id]
             )
  end
end
