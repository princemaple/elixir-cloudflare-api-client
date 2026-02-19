defmodule Cloudflare.TunnelVirtualNetworkTest do
  use ExUnit.Case

  setup do
    bypass = Bypass.open()
    Application.put_env(:cloudflare, :base_url, "http://localhost:#{bypass.port}")
    %{bypass: bypass}
  end

  test "lists virtual networks", %{bypass: bypass} do
    account_id = "acct-123"

    Bypass.expect_once(
      bypass,
      "GET",
      "/accounts/#{account_id}/teamnet/virtual_networks",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": [{"id": "vnet-1", "name": "default"}], "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => [%{"id" => "vnet-1"}]}}} =
             Cloudflare.TunnelVirtualNetwork.index(
               client: client,
               params: [account_id: account_id]
             )
  end

  test "creates a virtual network", %{bypass: bypass} do
    account_id = "acct-123"
    body = %{"name" => "my-vnet", "is_default_network" => false}

    Bypass.expect_once(
      bypass,
      "POST",
      "/accounts/#{account_id}/teamnet/virtual_networks",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": {"id": "vnet-new"}, "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => %{"id" => "vnet-new"}}}} =
             Cloudflare.TunnelVirtualNetwork.create(body,
               client: client,
               params: [account_id: account_id]
             )
  end

  test "updates a virtual network (PATCH)", %{bypass: bypass} do
    account_id = "acct-123"
    vnet_id = "vnet-456"
    body = %{"name" => "updated-vnet"}

    Bypass.expect_once(
      bypass,
      "PATCH",
      "/accounts/#{account_id}/teamnet/virtual_networks/#{vnet_id}",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": {"id": "#{vnet_id}"}, "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"result" => %{"id" => ^vnet_id}}}} =
             Cloudflare.TunnelVirtualNetwork.update(vnet_id, body,
               client: client,
               params: [account_id: account_id]
             )
  end

  test "deletes a virtual network", %{bypass: bypass} do
    account_id = "acct-123"
    vnet_id = "vnet-456"

    Bypass.expect_once(
      bypass,
      "DELETE",
      "/accounts/#{account_id}/teamnet/virtual_networks/#{vnet_id}",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": {"id": "#{vnet_id}"}, "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"success" => true}}} =
             Cloudflare.TunnelVirtualNetwork.delete(vnet_id,
               client: client,
               params: [account_id: account_id]
             )
  end
end
