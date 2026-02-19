defmodule Cloudflare.CustomHostnameTest do
  use ExUnit.Case

  setup do
    bypass = Bypass.open()
    Application.put_env(:cloudflare, :base_url, "http://localhost:#{bypass.port}")
    %{bypass: bypass}
  end

  test "lists custom hostnames", %{bypass: bypass} do
    zone_id = "zone-123"

    Bypass.expect_once(bypass, "GET", "/zones/#{zone_id}/custom_hostnames", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": [{"id": "ch-1"}], "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => [%{"id" => "ch-1"}]}}} =
             Cloudflare.CustomHostname.index(client: client, params: [zone_id: zone_id])
  end

  test "creates a custom hostname", %{bypass: bypass} do
    zone_id = "zone-123"
    body = %{"hostname" => "custom.example.com", "ssl" => %{"method" => "http"}}

    Bypass.expect_once(bypass, "POST", "/zones/#{zone_id}/custom_hostnames", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": {"id": "ch-new"}, "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"success" => true}}} =
             Cloudflare.CustomHostname.create(body, client: client, params: [zone_id: zone_id])
  end

  test "deletes a custom hostname", %{bypass: bypass} do
    zone_id = "zone-123"
    hostname_id = "ch-456"

    Bypass.expect_once(
      bypass,
      "DELETE",
      "/zones/#{zone_id}/custom_hostnames/#{hostname_id}",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": {"id": "#{hostname_id}"}, "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"success" => true}}} =
             Cloudflare.CustomHostname.delete(hostname_id,
               client: client,
               params: [zone_id: zone_id]
             )
  end
end
