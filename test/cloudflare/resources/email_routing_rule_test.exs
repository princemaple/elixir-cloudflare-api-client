defmodule Cloudflare.EmailRoutingRuleTest do
  use ExUnit.Case

  setup do
    bypass = Bypass.open()
    Application.put_env(:cloudflare, :base_url, "http://localhost:#{bypass.port}")
    %{bypass: bypass}
  end

  test "lists routing rules", %{bypass: bypass} do
    zone_id = "zone-123"

    Bypass.expect_once(bypass, "GET", "/zones/#{zone_id}/email/routing/rules", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": [{"id": "rule-1", "name": "Forward to me", "enabled": true}], "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => [%{"id" => "rule-1"}]}}} =
             Cloudflare.EmailRoutingRule.index(client: client, params: [zone_id: zone_id])
  end

  test "creates a routing rule", %{bypass: bypass} do
    zone_id = "zone-123"

    body = %{
      "name" => "Forward to me",
      "matchers" => [%{"type" => "literal", "field" => "to", "value" => "contact@example.com"}],
      "actions" => [%{"type" => "forward", "value" => ["user@example.net"]}],
      "enabled" => true
    }

    Bypass.expect_once(bypass, "POST", "/zones/#{zone_id}/email/routing/rules", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": {"id": "rule-new", "name": "Forward to me"}, "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => %{"id" => "rule-new"}}}} =
             Cloudflare.EmailRoutingRule.create(body, client: client, params: [zone_id: zone_id])
  end

  test "deletes a routing rule", %{bypass: bypass} do
    zone_id = "zone-123"
    rule_id = "rule-456"

    Bypass.expect_once(
      bypass,
      "DELETE",
      "/zones/#{zone_id}/email/routing/rules/#{rule_id}",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": {"id": "#{rule_id}"}, "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"success" => true}}} =
             Cloudflare.EmailRoutingRule.delete(rule_id,
               client: client,
               params: [zone_id: zone_id]
             )
  end

  test "gets catch-all rule", %{bypass: bypass} do
    zone_id = "zone-123"

    Bypass.expect_once(
      bypass,
      "GET",
      "/zones/#{zone_id}/email/routing/rules/catch_all",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": {"name": "catch-all", "enabled": false, "actions": [{"type": "drop"}]}, "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"result" => %{"name" => "catch-all"}}}} =
             Cloudflare.EmailRoutingRule.catch_all(client: client, params: [zone_id: zone_id])
  end

  test "updates catch-all rule", %{bypass: bypass} do
    zone_id = "zone-123"

    body = %{
      "enabled" => true,
      "actions" => [%{"type" => "forward", "value" => ["admin@example.com"]}]
    }

    Bypass.expect_once(
      bypass,
      "PUT",
      "/zones/#{zone_id}/email/routing/rules/catch_all",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": {"name": "catch-all", "enabled": true}, "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"result" => %{"enabled" => true}}}} =
             Cloudflare.EmailRoutingRule.update_catch_all(body,
               client: client,
               params: [zone_id: zone_id]
             )
  end
end
