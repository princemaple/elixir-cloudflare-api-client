defmodule Cloudflare.MagicStaticRouteTest do
  use ExUnit.Case

  setup do
    bypass = Bypass.open()
    Application.put_env(:cloudflare, :base_url, "http://localhost:#{bypass.port}")
    %{bypass: bypass}
  end

  test "lists static routes", %{bypass: bypass} do
    account_id = "acct-123"

    Bypass.expect_once(bypass, "GET", "/accounts/#{account_id}/magic/routes", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": [{"id": "route-1", "prefix": "192.0.2.0/24"}], "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => [%{"id" => "route-1"}]}}} =
             Cloudflare.MagicStaticRoute.index(client: client, params: [account_id: account_id])
  end

  test "creates a static route", %{bypass: bypass} do
    account_id = "acct-123"

    body = %{
      "routes" => [%{"prefix" => "192.0.2.0/24", "nexthop" => "192.0.2.1", "priority" => 100}]
    }

    Bypass.expect_once(bypass, "POST", "/accounts/#{account_id}/magic/routes", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": {"routes": [{"id": "route-new"}]}, "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"success" => true}}} =
             Cloudflare.MagicStaticRoute.create(body,
               client: client,
               params: [account_id: account_id]
             )
  end

  test "deletes a static route", %{bypass: bypass} do
    account_id = "acct-123"
    route_id = "route-456"

    Bypass.expect_once(
      bypass,
      "DELETE",
      "/accounts/#{account_id}/magic/routes/#{route_id}",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": {"deleted": true}, "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"success" => true}}} =
             Cloudflare.MagicStaticRoute.delete(route_id,
               client: client,
               params: [account_id: account_id]
             )
  end
end
