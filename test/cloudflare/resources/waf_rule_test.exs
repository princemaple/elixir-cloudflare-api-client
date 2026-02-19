defmodule Cloudflare.WafRuleTest do
  use ExUnit.Case

  setup do
    bypass = Bypass.open()
    Application.put_env(:cloudflare, :base_url, "http://localhost:#{bypass.port}")
    %{bypass: bypass}
  end

  test "lists WAF rules", %{bypass: bypass} do
    zone_id = "zone-123"
    package_id = "pkg-456"

    Bypass.expect_once(
      bypass,
      "GET",
      "/zones/#{zone_id}/firewall/waf/packages/#{package_id}/rules",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": [{"id": "rule-1"}], "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => [%{"id" => "rule-1"}]}}} =
             Cloudflare.WafRule.index(
               client: client,
               params: [zone_id: zone_id, package_id: package_id]
             )
  end

  test "shows a WAF rule", %{bypass: bypass} do
    zone_id = "zone-123"
    package_id = "pkg-456"
    rule_id = "rule-789"

    Bypass.expect_once(
      bypass,
      "GET",
      "/zones/#{zone_id}/firewall/waf/packages/#{package_id}/rules/#{rule_id}",
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

    assert {:ok, %{status: 200, body: %{"result" => %{"id" => ^rule_id}}}} =
             Cloudflare.WafRule.show(
               rule_id,
               client: client,
               params: [zone_id: zone_id, package_id: package_id]
             )
  end
end
