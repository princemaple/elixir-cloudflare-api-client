defmodule Cloudflare.ZeroTrustGatewayLocationTest do
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
        ~s({"result": [{"id": "loc-1", "name": "HQ"}], "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => [%{"id" => "loc-1"}]}}} =
             Cloudflare.ZeroTrustGatewayLocation.index(
               client: client,
               params: [account_id: account_id]
             )
  end

  test "creates a gateway location", %{bypass: bypass} do
    account_id = "acct-123"
    body = %{"name" => "HQ"}

    Bypass.expect_once(bypass, "POST", "/accounts/#{account_id}/gateway/locations", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": {"id": "loc-new", "name": "HQ"}, "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => %{"id" => "loc-new"}}}} =
             Cloudflare.ZeroTrustGatewayLocation.create(body,
               client: client,
               params: [account_id: account_id]
             )
  end

  test "deletes a gateway location", %{bypass: bypass} do
    account_id = "acct-123"
    location_id = "loc-1"

    Bypass.expect_once(
      bypass,
      "DELETE",
      "/accounts/#{account_id}/gateway/locations/#{location_id}",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(200, ~s({"result": {}, "success": true, "errors": [], "messages": []}))
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, _} =
             Cloudflare.ZeroTrustGatewayLocation.delete(location_id,
               client: client,
               params: [account_id: account_id]
             )
  end
end
