defmodule Cloudflare.FilterTest do
  use ExUnit.Case

  setup do
    bypass = Bypass.open()
    Application.put_env(:cloudflare, :base_url, "http://localhost:#{bypass.port}")
    %{bypass: bypass}
  end

  test "lists filters", %{bypass: bypass} do
    zone_id = "zone-123"

    Bypass.expect_once(bypass, "GET", "/zones/#{zone_id}/filters", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": [{"id": "f-1", "expression": "ip.src eq 1.2.3.4"}], "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => [%{"id" => "f-1"}]}}} =
             Cloudflare.Filter.index(client: client, params: [zone_id: zone_id])
  end

  test "gets a filter", %{bypass: bypass} do
    zone_id = "zone-123"
    filter_id = "f-456"

    Bypass.expect_once(bypass, "GET", "/zones/#{zone_id}/filters/#{filter_id}", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": {"id": "#{filter_id}", "expression": "ip.src eq 1.2.3.4"}, "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => %{"id" => ^filter_id}}}} =
             Cloudflare.Filter.show(filter_id, client: client, params: [zone_id: zone_id])
  end

  test "creates a filter", %{bypass: bypass} do
    zone_id = "zone-123"
    body = [%{"expression" => "ip.src eq 1.2.3.4", "paused" => false}]

    Bypass.expect_once(bypass, "POST", "/zones/#{zone_id}/filters", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": [{"id": "f-new"}], "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"success" => true}}} =
             Cloudflare.Filter.create(body, client: client, params: [zone_id: zone_id])
  end

  test "bulk updates filters", %{bypass: bypass} do
    zone_id = "zone-123"
    body = [%{"id" => "f-1", "expression" => "ip.src eq 5.6.7.8"}]

    Bypass.expect_once(bypass, "PUT", "/zones/#{zone_id}/filters", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": [{"id": "f-1"}], "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"success" => true}}} =
             Cloudflare.Filter.bulk_update(body, client: client, params: [zone_id: zone_id])
  end

  test "deletes a filter", %{bypass: bypass} do
    zone_id = "zone-123"
    filter_id = "f-456"

    Bypass.expect_once(bypass, "DELETE", "/zones/#{zone_id}/filters/#{filter_id}", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": {"id": "#{filter_id}"}, "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"success" => true}}} =
             Cloudflare.Filter.delete(filter_id, client: client, params: [zone_id: zone_id])
  end
end
