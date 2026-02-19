defmodule Cloudflare.AIGatewayDynamicRouteTest do
  use ExUnit.Case

  setup do
    bypass = Bypass.open()
    Application.put_env(:cloudflare, :base_url, "http://localhost:#{bypass.port}")
    %{bypass: bypass}
  end

  test "lists dynamic routes", %{bypass: bypass} do
    account_id = "acct-123"
    gateway_id = "gw-1"

    Bypass.expect_once(
      bypass,
      "GET",
      "/accounts/#{account_id}/ai-gateway/gateways/#{gateway_id}/routes",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(200, ~s({"success": true, "data": {"routes": [{"id": "rt-1"}]}}))
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200}} =
             Cloudflare.AIGatewayDynamicRoute.index(
               client: client,
               params: [account_id: account_id, gateway_id: gateway_id]
             )
  end

  test "creates a dynamic route", %{bypass: bypass} do
    account_id = "acct-123"
    gateway_id = "gw-1"
    body = %{"name" => "my-route", "elements" => []}

    Bypass.expect_once(
      bypass,
      "POST",
      "/accounts/#{account_id}/ai-gateway/gateways/#{gateway_id}/routes",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": {"id": "rt-new"}, "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => %{"id" => "rt-new"}}}} =
             Cloudflare.AIGatewayDynamicRoute.create(body,
               client: client,
               params: [account_id: account_id, gateway_id: gateway_id]
             )
  end

  test "creates a deployment for a route", %{bypass: bypass} do
    account_id = "acct-123"
    gateway_id = "gw-1"
    route_id = "rt-456"

    Bypass.expect_once(
      bypass,
      "POST",
      "/accounts/#{account_id}/ai-gateway/gateways/#{gateway_id}/routes/#{route_id}/deployments",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": {"id": "rt-456"}, "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200}} =
             Cloudflare.AIGatewayDynamicRoute.create_deployment(route_id, %{},
               client: client,
               params: [account_id: account_id, gateway_id: gateway_id]
             )
  end
end
