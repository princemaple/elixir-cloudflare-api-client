defmodule Cloudflare.CustomSslTest do
  use ExUnit.Case

  setup do
    bypass = Bypass.open()
    Application.put_env(:cloudflare, :base_url, "http://localhost:#{bypass.port}")
    %{bypass: bypass}
  end

  test "lists custom SSL certs", %{bypass: bypass} do
    zone_id = "zone-123"

    Bypass.expect_once(bypass, "GET", "/zones/#{zone_id}/custom_certificates", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": [{"id": "cert-1", "status": "active"}], "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => [%{"id" => "cert-1"}]}}} =
             Cloudflare.CustomSsl.index(client: client, params: [zone_id: zone_id])
  end

  test "creates a custom SSL cert", %{bypass: bypass} do
    zone_id = "zone-123"

    body = %{
      "certificate" => "-----BEGIN CERTIFICATE-----...",
      "private_key" => "-----BEGIN PRIVATE KEY-----..."
    }

    Bypass.expect_once(bypass, "POST", "/zones/#{zone_id}/custom_certificates", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": {"id": "cert-new"}, "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => %{"id" => "cert-new"}}}} =
             Cloudflare.CustomSsl.create(body, client: client, params: [zone_id: zone_id])
  end

  test "patches a custom SSL cert", %{bypass: bypass} do
    zone_id = "zone-123"
    cert_id = "cert-456"
    body = %{"bundle_method" => "ubiquitous"}

    Bypass.expect_once(
      bypass,
      "PATCH",
      "/zones/#{zone_id}/custom_certificates/#{cert_id}",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": {"id": "#{cert_id}"}, "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"result" => %{"id" => ^cert_id}}}} =
             Cloudflare.CustomSsl.update(cert_id, body,
               client: client,
               params: [zone_id: zone_id]
             )
  end

  test "reprioritizes SSL certs", %{bypass: bypass} do
    zone_id = "zone-123"

    body = %{
      "certificates" => [
        %{"id" => "cert-1", "priority" => 2},
        %{"id" => "cert-2", "priority" => 1}
      ]
    }

    Bypass.expect_once(
      bypass,
      "PUT",
      "/zones/#{zone_id}/custom_certificates/prioritize",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": [{"id": "cert-1"}], "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"success" => true}}} =
             Cloudflare.CustomSsl.prioritize(body, client: client, params: [zone_id: zone_id])
  end
end
