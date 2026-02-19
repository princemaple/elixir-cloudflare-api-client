defmodule Cloudflare.WorkerRouteTest do
  use ExUnit.Case

  setup do
    bypass = Bypass.open()
    Application.put_env(:cloudflare, :base_url, "http://localhost:#{bypass.port}")
    %{bypass: bypass}
  end

  test "lists worker routes", %{bypass: bypass} do
    zone_id = "zone-123"

    Bypass.expect_once(bypass, "GET", "/zones/#{zone_id}/workers/routes", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": [{"id": "route-1"}], "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => [%{"id" => "route-1"}]}}} =
             Cloudflare.WorkerRoute.index(client: client, params: [zone_id: zone_id])
  end

  test "creates a worker route", %{bypass: bypass} do
    zone_id = "zone-123"
    body = %{"pattern" => "example.com/*", "script" => "my-script"}

    Bypass.expect_once(bypass, "POST", "/zones/#{zone_id}/workers/routes", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": {"id": "route-new"}, "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"success" => true}}} =
             Cloudflare.WorkerRoute.create(body, client: client, params: [zone_id: zone_id])
  end

  test "deletes a worker route", %{bypass: bypass} do
    zone_id = "zone-123"
    route_id = "route-456"

    Bypass.expect_once(
      bypass,
      "DELETE",
      "/zones/#{zone_id}/workers/routes/#{route_id}",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": {"id": "#{route_id}"}, "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"success" => true}}} =
             Cloudflare.WorkerRoute.delete(route_id, client: client, params: [zone_id: zone_id])
  end
end
