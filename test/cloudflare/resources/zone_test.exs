defmodule Cloudflare.ZoneTest do
  use ExUnit.Case

  setup do
    bypass = Bypass.open()
    Application.put_env(:cloudflare, :base_url, "http://localhost:#{bypass.port}")
    %{bypass: bypass}
  end

  test "lists zones", %{bypass: bypass} do
    Bypass.expect_once(bypass, "GET", "/zones", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": [{"id": "zone-1"}], "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => [%{"id" => "zone-1"}]}}} =
             Cloudflare.Zone.index(client: client)
  end

  test "shows a zone", %{bypass: bypass} do
    zone_id = "zone-123"

    Bypass.expect_once(bypass, "GET", "/zones/#{zone_id}", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": {"id": "#{zone_id}"}, "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => %{"id" => ^zone_id}}}} =
             Cloudflare.Zone.show(zone_id, client: client)
  end

  test "creates a zone", %{bypass: bypass} do
    body = %{"name" => "example.com", "account" => %{"id" => "acct-1"}}

    Bypass.expect_once(bypass, "POST", "/zones", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": {"id": "zone-new"}, "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => %{"id" => "zone-new"}}}} =
             Cloudflare.Zone.create(body, client: client)
  end

  test "deletes a zone", %{bypass: bypass} do
    zone_id = "zone-123"

    Bypass.expect_once(bypass, "DELETE", "/zones/#{zone_id}", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": {"id": "#{zone_id}"}, "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"success" => true}}} =
             Cloudflare.Zone.delete(zone_id, client: client)
  end

  test "triggers activation check", %{bypass: bypass} do
    zone_id = "zone-123"

    Bypass.expect_once(bypass, "PUT", "/zones/#{zone_id}/activation_check", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": {"id": "#{zone_id}"}, "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"success" => true}}} =
             Cloudflare.Zone.activation_check(zone_id, client: client)
  end

  test "purges a zone cache", %{bypass: bypass} do
    zone_id = "zone-123"
    matcher = %{"purge_everything" => true}

    Bypass.expect_once(bypass, "POST", "/zones/#{zone_id}/purge_cache", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": {"id": "#{zone_id}"}, "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"success" => true}}} =
             Cloudflare.Zone.purge_cache(zone_id, matcher, client: client)
  end
end
