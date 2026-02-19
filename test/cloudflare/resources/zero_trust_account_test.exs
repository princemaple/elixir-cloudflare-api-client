defmodule Cloudflare.ZeroTrustAccountTest do
  use ExUnit.Case

  setup do
    bypass = Bypass.open()
    Application.put_env(:cloudflare, :base_url, "http://localhost:#{bypass.port}")
    %{bypass: bypass}
  end

  test "gets gateway account info", %{bypass: bypass} do
    account_id = "acct-123"

    Bypass.expect_once(bypass, "GET", "/accounts/#{account_id}/gateway", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": {"id": "gw-1", "gateway_tag": "tag-abc"}, "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => %{"gateway_tag" => "tag-abc"}}}} =
             Cloudflare.ZeroTrustAccount.get(client: client, params: [account_id: account_id])
  end

  test "gets gateway configuration", %{bypass: bypass} do
    account_id = "acct-123"

    Bypass.expect_once(bypass, "GET", "/accounts/#{account_id}/gateway/configuration", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": {"settings": {"tls_decrypt": {"enabled": true}}}, "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => %{"settings" => _}}}} =
             Cloudflare.ZeroTrustAccount.get_configuration(
               client: client,
               params: [account_id: account_id]
             )
  end

  test "gets device settings", %{bypass: bypass} do
    account_id = "acct-123"

    Bypass.expect_once(bypass, "GET", "/accounts/#{account_id}/devices/settings", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": {"gateway_proxy_enabled": true}, "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => %{"gateway_proxy_enabled" => true}}}} =
             Cloudflare.ZeroTrustAccount.get_device_settings(
               client: client,
               params: [account_id: account_id]
             )
  end
end
