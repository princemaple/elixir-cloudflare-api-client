defmodule Cloudflare.ZeroTrustConnectivitySettingsTest do
  use ExUnit.Case

  setup do
    bypass = Bypass.open()
    Application.put_env(:cloudflare, :base_url, "http://localhost:#{bypass.port}")
    %{bypass: bypass}
  end

  test "gets connectivity settings", %{bypass: bypass} do
    account_id = "acct-123"

    Bypass.expect_once(
      bypass,
      "GET",
      "/accounts/#{account_id}/zerotrust/connectivity_settings",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": {"icmp_proxy_enabled": true, "offramp_warp_enabled": false}, "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => %{"icmp_proxy_enabled" => true}}}} =
             Cloudflare.ZeroTrustConnectivitySettings.get(
               client: client,
               params: [account_id: account_id]
             )
  end

  test "updates connectivity settings", %{bypass: bypass} do
    account_id = "acct-123"
    body = %{"icmp_proxy_enabled" => false}

    Bypass.expect_once(
      bypass,
      "PATCH",
      "/accounts/#{account_id}/zerotrust/connectivity_settings",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": {"icmp_proxy_enabled": false, "offramp_warp_enabled": false}, "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => %{"icmp_proxy_enabled" => false}}}} =
             Cloudflare.ZeroTrustConnectivitySettings.update(body,
               client: client,
               params: [account_id: account_id]
             )
  end
end
