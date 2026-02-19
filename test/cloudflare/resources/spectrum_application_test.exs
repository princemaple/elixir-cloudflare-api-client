defmodule Cloudflare.SpectrumApplicationTest do
  use ExUnit.Case

  setup do
    bypass = Bypass.open()
    Application.put_env(:cloudflare, :base_url, "http://localhost:#{bypass.port}")
    %{bypass: bypass}
  end

  test "lists spectrum applications", %{bypass: bypass} do
    zone_id = "zone-123"

    Bypass.expect_once(bypass, "GET", "/zones/#{zone_id}/spectrum/apps", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": [{"id": "app-1", "protocol": "tcp/22"}], "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => [%{"id" => "app-1"}]}}} =
             Cloudflare.SpectrumApplication.index(client: client, params: [zone_id: zone_id])
  end

  test "creates a spectrum application", %{bypass: bypass} do
    zone_id = "zone-123"

    body = %{
      "protocol" => "tcp/22",
      "dns" => %{"name" => "ssh.example.com", "type" => "CNAME"},
      "origin_dns" => %{"name" => "origin.example.com"}
    }

    Bypass.expect_once(bypass, "POST", "/zones/#{zone_id}/spectrum/apps", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": {"id": "app-new"}, "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => %{"id" => "app-new"}}}} =
             Cloudflare.SpectrumApplication.create(body,
               client: client,
               params: [zone_id: zone_id]
             )
  end

  test "deletes a spectrum application", %{bypass: bypass} do
    zone_id = "zone-123"
    app_id = "app-456"

    Bypass.expect_once(bypass, "DELETE", "/zones/#{zone_id}/spectrum/apps/#{app_id}", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": {"id": "#{app_id}"}, "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"success" => true}}} =
             Cloudflare.SpectrumApplication.delete(app_id,
               client: client,
               params: [zone_id: zone_id]
             )
  end
end
