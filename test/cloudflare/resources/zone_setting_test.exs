defmodule Cloudflare.ZoneSettingTest do
  use ExUnit.Case

  setup do
    bypass = Bypass.open()
    Application.put_env(:cloudflare, :base_url, "http://localhost:#{bypass.port}")
    %{bypass: bypass}
  end

  test "shows ssl setting", %{bypass: bypass} do
    zone_id = "zone-123"

    Bypass.expect_once(bypass, "GET", "/zones/#{zone_id}/settings/ssl", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": {"id": "ssl", "value": "full"}, "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => %{"id" => "ssl", "value" => "full"}}}} =
             Cloudflare.ZoneSetting.show(:ssl, client: client, params: [zone_id: zone_id])
  end

  test "shows always_use_https setting", %{bypass: bypass} do
    zone_id = "zone-123"

    Bypass.expect_once(bypass, "GET", "/zones/#{zone_id}/settings/always_use_https", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": {"id": "always_use_https", "value": "on"}, "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => %{"value" => "on"}}}} =
             Cloudflare.ZoneSetting.show(:always_use_https,
               client: client,
               params: [zone_id: zone_id]
             )
  end

  test "updates ssl setting", %{bypass: bypass} do
    zone_id = "zone-123"
    body = %{"value" => "strict"}

    Bypass.expect_once(bypass, "PATCH", "/zones/#{zone_id}/settings/ssl", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": {"id": "ssl", "value": "strict"}, "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"result" => %{"value" => "strict"}}}} =
             Cloudflare.ZoneSetting.update(:ssl, body, client: client, params: [zone_id: zone_id])
  end

  test "updates browser_cache_ttl setting", %{bypass: bypass} do
    zone_id = "zone-123"
    body = %{"value" => 14_400}

    Bypass.expect_once(bypass, "PATCH", "/zones/#{zone_id}/settings/browser_cache_ttl", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": {"id": "browser_cache_ttl", "value": 14400}, "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"success" => true}}} =
             Cloudflare.ZoneSetting.update(:browser_cache_ttl, body,
               client: client,
               params: [zone_id: zone_id]
             )
  end
end
