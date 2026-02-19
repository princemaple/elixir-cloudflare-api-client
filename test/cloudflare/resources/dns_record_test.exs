defmodule Cloudflare.DnsRecordTest do
  use ExUnit.Case

  setup do
    bypass = Bypass.open()
    Application.put_env(:cloudflare, :base_url, "http://localhost:#{bypass.port}")
    %{bypass: bypass}
  end

  test "lists DNS records", %{bypass: bypass} do
    zone_id = "zone-123"

    Bypass.expect_once(bypass, "GET", "/zones/#{zone_id}/dns_records", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": [{"id": "rec-1"}], "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => [%{"id" => "rec-1"}]}}} =
             Cloudflare.DnsRecord.index(client: client, params: [zone_id: zone_id])
  end

  test "creates a DNS record", %{bypass: bypass} do
    zone_id = "zone-123"
    record = %{"type" => "A", "name" => "example.com", "content" => "1.2.3.4"}

    Bypass.expect_once(bypass, "POST", "/zones/#{zone_id}/dns_records", fn conn ->
      {:ok, body, conn} = Plug.Conn.read_body(conn)
      assert body == Jason.encode!(record)

      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": {"id": "rec-new"}, "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => %{"id" => "rec-new"}}}} =
             Cloudflare.DnsRecord.create(record, client: client, params: [zone_id: zone_id])
  end

  test "imports DNS records", %{bypass: bypass} do
    zone_id = "zone-123"
    data = "example.com 3600 IN A 1.2.3.4"

    Bypass.expect_once(bypass, "POST", "/zones/#{zone_id}/dns_records/import", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": {"recs_added": 1}, "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"success" => true}}} =
             Cloudflare.DnsRecord.import(data, client: client, params: [zone_id: zone_id])
  end

  test "exports DNS records", %{bypass: bypass} do
    zone_id = "zone-123"

    Bypass.expect_once(bypass, "GET", "/zones/#{zone_id}/dns_records/export", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "text/plain")
      |> Plug.Conn.resp(200, "example.com 3600 IN A 1.2.3.4\n")
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200}} =
             Cloudflare.DnsRecord.export(client: client, params: [zone_id: zone_id])
  end
end
