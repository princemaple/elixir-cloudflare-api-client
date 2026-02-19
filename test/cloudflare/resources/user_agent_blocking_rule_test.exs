defmodule Cloudflare.UserAgentBlockingRuleTest do
  use ExUnit.Case

  setup do
    bypass = Bypass.open()
    Application.put_env(:cloudflare, :base_url, "http://localhost:#{bypass.port}")
    %{bypass: bypass}
  end

  test "lists UA blocking rules", %{bypass: bypass} do
    zone_id = "zone-123"

    Bypass.expect_once(bypass, "GET", "/zones/#{zone_id}/firewall/ua_rules", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": [{"id": "uar-1", "description": "Block bad bot"}], "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => [%{"id" => "uar-1"}]}}} =
             Cloudflare.UserAgentBlockingRule.index(client: client, params: [zone_id: zone_id])
  end

  test "creates a UA blocking rule", %{bypass: bypass} do
    zone_id = "zone-123"

    body = %{
      "description" => "Block bad bot",
      "mode" => "block",
      "configuration" => %{"target" => "ua", "value" => "BadBot/1.0"}
    }

    Bypass.expect_once(bypass, "POST", "/zones/#{zone_id}/firewall/ua_rules", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": {"id": "uar-new"}, "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => %{"id" => "uar-new"}}}} =
             Cloudflare.UserAgentBlockingRule.create(body,
               client: client,
               params: [zone_id: zone_id]
             )
  end

  test "updates a UA blocking rule", %{bypass: bypass} do
    zone_id = "zone-123"
    rule_id = "uar-456"
    body = %{"mode" => "challenge"}

    Bypass.expect_once(bypass, "PUT", "/zones/#{zone_id}/firewall/ua_rules/#{rule_id}", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": {"id": "#{rule_id}"}, "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"result" => %{"id" => ^rule_id}}}} =
             Cloudflare.UserAgentBlockingRule.update(rule_id, body,
               client: client,
               params: [zone_id: zone_id]
             )
  end

  test "deletes a UA blocking rule", %{bypass: bypass} do
    zone_id = "zone-123"
    rule_id = "uar-456"

    Bypass.expect_once(
      bypass,
      "DELETE",
      "/zones/#{zone_id}/firewall/ua_rules/#{rule_id}",
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
             Cloudflare.UserAgentBlockingRule.delete(rule_id,
               client: client,
               params: [zone_id: zone_id]
             )
  end
end
