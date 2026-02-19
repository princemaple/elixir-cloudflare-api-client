defmodule Cloudflare.HealthCheckTest do
  use ExUnit.Case

  setup do
    bypass = Bypass.open()
    Application.put_env(:cloudflare, :base_url, "http://localhost:#{bypass.port}")
    %{bypass: bypass}
  end

  test "lists health checks", %{bypass: bypass} do
    zone_id = "zone-123"

    Bypass.expect_once(bypass, "GET", "/zones/#{zone_id}/healthchecks", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": [{"id": "hc-1"}], "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => [%{"id" => "hc-1"}]}}} =
             Cloudflare.HealthCheck.index(client: client, params: [zone_id: zone_id])
  end

  test "creates a health check", %{bypass: bypass} do
    zone_id = "zone-123"
    body = %{"name" => "my-hc", "address" => "1.2.3.4", "type" => "HTTP"}

    Bypass.expect_once(bypass, "POST", "/zones/#{zone_id}/healthchecks", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": {"id": "hc-new"}, "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"success" => true}}} =
             Cloudflare.HealthCheck.create(body, client: client, params: [zone_id: zone_id])
  end

  test "deletes a health check", %{bypass: bypass} do
    zone_id = "zone-123"
    hc_id = "hc-456"

    Bypass.expect_once(bypass, "DELETE", "/zones/#{zone_id}/healthchecks/#{hc_id}", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": {"id": "#{hc_id}"}, "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"success" => true}}} =
             Cloudflare.HealthCheck.delete(hc_id, client: client, params: [zone_id: zone_id])
  end
end
