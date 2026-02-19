defmodule Cloudflare.OriginCaTest do
  use ExUnit.Case

  setup do
    bypass = Bypass.open()
    Application.put_env(:cloudflare, :base_url, "http://localhost:#{bypass.port}")
    %{bypass: bypass}
  end

  test "lists origin CA certs", %{bypass: bypass} do
    Bypass.expect_once(bypass, "GET", "/certificates", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": [{"id": "oca-1", "hostnames": ["example.com"]}], "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => [%{"id" => "oca-1"}]}}} =
             Cloudflare.OriginCa.index(client: client)
  end

  test "creates an origin CA cert", %{bypass: bypass} do
    body = %{
      "hostnames" => ["example.com"],
      "request_type" => "origin-rsa",
      "requested_validity" => 5475
    }

    Bypass.expect_once(bypass, "POST", "/certificates", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": {"id": "oca-new", "certificate": "-----BEGIN CERTIFICATE-----..."}, "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => %{"id" => "oca-new"}}}} =
             Cloudflare.OriginCa.create(body, client: client)
  end

  test "revokes (deletes) an origin CA cert", %{bypass: bypass} do
    cert_id = "oca-456"

    Bypass.expect_once(bypass, "DELETE", "/certificates/#{cert_id}", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": {"id": "#{cert_id}"}, "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"success" => true}}} =
             Cloudflare.OriginCa.delete(cert_id, client: client)
  end
end
