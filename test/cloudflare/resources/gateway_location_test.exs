defmodule Cloudflare.GatewayLocationTest do
  use ExUnit.Case

  setup do
    bypass = Bypass.open()
    Application.put_env(:cloudflare, :base_url, "http://localhost:#{bypass.port}")
    %{bypass: bypass}
  end

  test "lists gateway locations", %{bypass: bypass} do
    account_id = "acct-123"

    Bypass.expect_once(bypass, "GET", "/accounts/#{account_id}/gateway/locations", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": [{"id": "loc-1", "name": "HQ Office"}], "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => [%{"id" => "loc-1"}]}}} =
             Cloudflare.GatewayLocation.index(client: client, params: [account_id: account_id])
  end

  test "creates a gateway location", %{bypass: bypass} do
    account_id = "acct-123"
    body = %{"name" => "HQ Office", "networks" => [%{"network" => "192.168.1.0/24"}]}

    Bypass.expect_once(bypass, "POST", "/accounts/#{account_id}/gateway/locations", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": {"id": "loc-new", "name": "HQ Office"}, "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => %{"id" => "loc-new"}}}} =
             Cloudflare.GatewayLocation.create(body,
               client: client,
               params: [account_id: account_id]
             )
  end

  test "deletes a gateway location", %{bypass: bypass} do
    account_id = "acct-123"
    loc_id = "loc-456"

    Bypass.expect_once(
      bypass,
      "DELETE",
      "/accounts/#{account_id}/gateway/locations/#{loc_id}",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(200, ~s({"result": {}, "success": true, "errors": [], "messages": []}))
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"success" => true}}} =
             Cloudflare.GatewayLocation.delete(loc_id,
               client: client,
               params: [account_id: account_id]
             )
  end
end
