defmodule Cloudflare.DeviceManagedNetworkTest do
  use ExUnit.Case

  setup do
    bypass = Bypass.open()
    Application.put_env(:cloudflare, :base_url, "http://localhost:#{bypass.port}")
    %{bypass: bypass}
  end

  test "lists managed networks", %{bypass: bypass} do
    account_id = "acct-123"

    Bypass.expect_once(bypass, "GET", "/accounts/#{account_id}/devices/networks", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": [{"network_id": "net-1", "name": "Corporate WiFi", "type": "tls"}], "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => [%{"network_id" => "net-1"}]}}} =
             Cloudflare.DeviceManagedNetwork.index(
               client: client,
               params: [account_id: account_id]
             )
  end

  test "creates a managed network", %{bypass: bypass} do
    account_id = "acct-123"

    body = %{
      "name" => "Corporate WiFi",
      "type" => "tls",
      "config" => %{"tls_sockaddr" => "192.0.2.1:443", "sha256" => "abc123"}
    }

    Bypass.expect_once(bypass, "POST", "/accounts/#{account_id}/devices/networks", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": {"network_id": "net-new"}, "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => %{"network_id" => "net-new"}}}} =
             Cloudflare.DeviceManagedNetwork.create(body,
               client: client,
               params: [account_id: account_id]
             )
  end

  test "deletes a managed network", %{bypass: bypass} do
    account_id = "acct-123"
    network_id = "net-456"

    Bypass.expect_once(
      bypass,
      "DELETE",
      "/accounts/#{account_id}/devices/networks/#{network_id}",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(200, ~s({"result": [], "success": true, "errors": [], "messages": []}))
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"success" => true}}} =
             Cloudflare.DeviceManagedNetwork.delete(network_id,
               client: client,
               params: [account_id: account_id]
             )
  end
end
