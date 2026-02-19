defmodule Cloudflare.ZoneLockdownTest do
  use ExUnit.Case

  setup do
    bypass = Bypass.open()
    Application.put_env(:cloudflare, :base_url, "http://localhost:#{bypass.port}")
    %{bypass: bypass}
  end

  test "lists zone lockdown rules", %{bypass: bypass} do
    zone_id = "zone-123"

    Bypass.expect_once(bypass, "GET", "/zones/#{zone_id}/firewall/lockdowns", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": [{"id": "ld-1", "urls": ["example.com/admin"], "paused": false}], "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => [%{"id" => "ld-1"}]}}} =
             Cloudflare.ZoneLockdown.index(client: client, params: [zone_id: zone_id])
  end

  test "creates a zone lockdown rule", %{bypass: bypass} do
    zone_id = "zone-123"

    body = %{
      "urls" => ["example.com/admin"],
      "configurations" => [%{"target" => "ip", "value" => "198.51.100.4"}]
    }

    Bypass.expect_once(bypass, "POST", "/zones/#{zone_id}/firewall/lockdowns", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": {"id": "ld-new"}, "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => %{"id" => "ld-new"}}}} =
             Cloudflare.ZoneLockdown.create(body, client: client, params: [zone_id: zone_id])
  end

  test "deletes a zone lockdown rule", %{bypass: bypass} do
    zone_id = "zone-123"
    ld_id = "ld-456"

    Bypass.expect_once(
      bypass,
      "DELETE",
      "/zones/#{zone_id}/firewall/lockdowns/#{ld_id}",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": {"id": "#{ld_id}"}, "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"success" => true}}} =
             Cloudflare.ZoneLockdown.delete(ld_id, client: client, params: [zone_id: zone_id])
  end
end
