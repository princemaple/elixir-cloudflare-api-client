defmodule Cloudflare.PageRuleTest do
  use ExUnit.Case

  setup do
    bypass = Bypass.open()
    Application.put_env(:cloudflare, :base_url, "http://localhost:#{bypass.port}")
    %{bypass: bypass}
  end

  test "lists page rules", %{bypass: bypass} do
    zone_id = "zone-123"

    Bypass.expect_once(bypass, "GET", "/zones/#{zone_id}/pagerules", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": [{"id": "pr-1"}], "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => [%{"id" => "pr-1"}]}}} =
             Cloudflare.PageRule.index(client: client, params: [zone_id: zone_id])
  end

  test "creates a page rule", %{bypass: bypass} do
    zone_id = "zone-123"

    body = %{
      "targets" => [
        %{
          "target" => "url",
          "constraint" => %{"operator" => "matches", "value" => "*.example.com/*"}
        }
      ],
      "actions" => []
    }

    Bypass.expect_once(bypass, "POST", "/zones/#{zone_id}/pagerules", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": {"id": "pr-new"}, "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"success" => true}}} =
             Cloudflare.PageRule.create(body, client: client, params: [zone_id: zone_id])
  end

  test "deletes a page rule", %{bypass: bypass} do
    zone_id = "zone-123"
    rule_id = "pr-456"

    Bypass.expect_once(bypass, "DELETE", "/zones/#{zone_id}/pagerules/#{rule_id}", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(200, ~s({"result": null, "success": true, "errors": [], "messages": []}))
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"success" => true}}} =
             Cloudflare.PageRule.delete(rule_id, client: client, params: [zone_id: zone_id])
  end
end
