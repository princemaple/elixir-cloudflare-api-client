defmodule Cloudflare.ZeroTrustSubnetTest do
  use ExUnit.Case

  setup do
    bypass = Bypass.open()
    Application.put_env(:cloudflare, :base_url, "http://localhost:#{bypass.port}")
    %{bypass: bypass}
  end

  test "lists subnets", %{bypass: bypass} do
    account_id = "acct-123"

    Bypass.expect_once(bypass, "GET", "/accounts/#{account_id}/zerotrust/subnets", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": [{"id": "sub-1", "network": "10.0.0.0/24"}], "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => [%{"id" => "sub-1"}]}}} =
             Cloudflare.ZeroTrustSubnet.index(client: client, params: [account_id: account_id])
  end

  test "creates a WARP subnet", %{bypass: bypass} do
    account_id = "acct-123"
    body = %{"network" => "10.0.0.0/24", "name" => "warp-subnet"}

    Bypass.expect_once(
      bypass,
      "POST",
      "/accounts/#{account_id}/zerotrust/subnets/warp",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": {"id": "sub-new", "network": "10.0.0.0/24"}, "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => %{"id" => "sub-new"}}}} =
             Cloudflare.ZeroTrustSubnet.create_warp(body,
               client: client,
               params: [account_id: account_id]
             )
  end

  test "deletes a WARP subnet", %{bypass: bypass} do
    account_id = "acct-123"
    subnet_id = "sub-1"

    Bypass.expect_once(
      bypass,
      "DELETE",
      "/accounts/#{account_id}/zerotrust/subnets/warp/#{subnet_id}",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": {"id": "sub-1"}, "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, _} =
             Cloudflare.ZeroTrustSubnet.delete_warp(subnet_id,
               client: client,
               params: [account_id: account_id]
             )
  end
end
