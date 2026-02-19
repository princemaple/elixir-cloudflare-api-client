defmodule Cloudflare.ZeroTrustCertificateTest do
  use ExUnit.Case

  setup do
    bypass = Bypass.open()
    Application.put_env(:cloudflare, :base_url, "http://localhost:#{bypass.port}")
    %{bypass: bypass}
  end

  test "lists certificates", %{bypass: bypass} do
    account_id = "acct-123"

    Bypass.expect_once(bypass, "GET", "/accounts/#{account_id}/gateway/certificates", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": [{"id": "cert-1", "type": "gateway_managed"}], "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => [%{"id" => "cert-1"}]}}} =
             Cloudflare.ZeroTrustCertificate.index(
               client: client,
               params: [account_id: account_id]
             )
  end

  test "activates a certificate", %{bypass: bypass} do
    account_id = "acct-123"
    cert_id = "cert-1"

    Bypass.expect_once(
      bypass,
      "POST",
      "/accounts/#{account_id}/gateway/certificates/#{cert_id}/activate",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          202,
          ~s({"result": {"id": "cert-1", "binding_status": "active"}, "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => %{"binding_status" => "active"}}}} =
             Cloudflare.ZeroTrustCertificate.activate(cert_id,
               client: client,
               params: [account_id: account_id]
             )
  end

  test "deactivates a certificate", %{bypass: bypass} do
    account_id = "acct-123"
    cert_id = "cert-1"

    Bypass.expect_once(
      bypass,
      "POST",
      "/accounts/#{account_id}/gateway/certificates/#{cert_id}/deactivate",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          201,
          ~s({"result": {"id": "cert-1", "binding_status": "inactive"}, "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => %{"binding_status" => "inactive"}}}} =
             Cloudflare.ZeroTrustCertificate.deactivate(cert_id,
               client: client,
               params: [account_id: account_id]
             )
  end
end
