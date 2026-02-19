defmodule Cloudflare.CertificatePackTest do
  use ExUnit.Case

  setup do
    bypass = Bypass.open()
    Application.put_env(:cloudflare, :base_url, "http://localhost:#{bypass.port}")
    %{bypass: bypass}
  end

  test "lists certificate packs", %{bypass: bypass} do
    zone_id = "zone-123"

    Bypass.expect_once(bypass, "GET", "/zones/#{zone_id}/ssl/certificate_packs", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": [{"id": "pack-1", "type": "advanced", "status": "active"}], "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => [%{"id" => "pack-1"}]}}} =
             Cloudflare.CertificatePack.index(client: client, params: [zone_id: zone_id])
  end

  test "gets a certificate pack", %{bypass: bypass} do
    zone_id = "zone-123"
    pack_id = "pack-456"

    Bypass.expect_once(
      bypass,
      "GET",
      "/zones/#{zone_id}/ssl/certificate_packs/#{pack_id}",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": {"id": "#{pack_id}", "status": "active"}, "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => %{"id" => ^pack_id}}}} =
             Cloudflare.CertificatePack.show(pack_id, client: client, params: [zone_id: zone_id])
  end

  test "deletes a certificate pack", %{bypass: bypass} do
    zone_id = "zone-123"
    pack_id = "pack-456"

    Bypass.expect_once(
      bypass,
      "DELETE",
      "/zones/#{zone_id}/ssl/certificate_packs/#{pack_id}",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": {"id": "#{pack_id}"}, "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"success" => true}}} =
             Cloudflare.CertificatePack.delete(pack_id,
               client: client,
               params: [zone_id: zone_id]
             )
  end

  test "orders an advanced certificate pack", %{bypass: bypass} do
    zone_id = "zone-123"

    body = %{
      "certificate_authority" => "lets_encrypt",
      "hosts" => ["example.com"],
      "type" => "advanced",
      "validation_method" => "txt"
    }

    Bypass.expect_once(bypass, "POST", "/zones/#{zone_id}/ssl/certificate_packs/order", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": {"id": "pack-new", "status": "pending_validation"}, "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => %{"id" => "pack-new"}}}} =
             Cloudflare.CertificatePack.order(body, client: client, params: [zone_id: zone_id])
  end

  test "gets quota", %{bypass: bypass} do
    zone_id = "zone-123"

    Bypass.expect_once(bypass, "GET", "/zones/#{zone_id}/ssl/certificate_packs/quota", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": {"advanced": {"allocated": 10, "used": 2}}, "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"result" => %{"advanced" => %{"allocated" => 10}}}}} =
             Cloudflare.CertificatePack.quota(client: client, params: [zone_id: zone_id])
  end
end
