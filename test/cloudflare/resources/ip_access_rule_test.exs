defmodule Cloudflare.IpAccessRuleTest do
  use ExUnit.Case

  setup do
    bypass = Bypass.open()
    Application.put_env(:cloudflare, :base_url, "http://localhost:#{bypass.port}")
    %{bypass: bypass}
  end

  test "lists IP access rules", %{bypass: bypass} do
    zone_id = "zone-123"

    Bypass.expect_once(bypass, "GET", "/zones/#{zone_id}/firewall/access_rules/rules", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": [{"id": "rule-1"}], "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => [%{"id" => "rule-1"}]}}} =
             Cloudflare.IpAccessRule.index(client: client, params: [zone_id: zone_id])
  end

  test "creates an IP access rule", %{bypass: bypass} do
    zone_id = "zone-123"
    body = %{"mode" => "block", "configuration" => %{"target" => "ip", "value" => "1.2.3.4"}}

    Bypass.expect_once(bypass, "POST", "/zones/#{zone_id}/firewall/access_rules/rules", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": {"id": "rule-new"}, "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"success" => true}}} =
             Cloudflare.IpAccessRule.create(body, client: client, params: [zone_id: zone_id])
  end

  test "deletes an IP access rule", %{bypass: bypass} do
    zone_id = "zone-123"
    rule_id = "rule-456"

    Bypass.expect_once(
      bypass,
      "DELETE",
      "/zones/#{zone_id}/firewall/access_rules/rules/#{rule_id}",
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
             Cloudflare.IpAccessRule.delete(rule_id, client: client, params: [zone_id: zone_id])
  end
end
