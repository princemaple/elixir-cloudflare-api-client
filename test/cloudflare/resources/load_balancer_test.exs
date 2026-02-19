defmodule Cloudflare.LoadBalancerTest do
  use ExUnit.Case

  setup do
    bypass = Bypass.open()
    Application.put_env(:cloudflare, :base_url, "http://localhost:#{bypass.port}")
    %{bypass: bypass}
  end

  test "lists load balancers", %{bypass: bypass} do
    zone_id = "zone-123"

    Bypass.expect_once(bypass, "GET", "/zones/#{zone_id}/load_balancers", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": [{"id": "lb-1"}], "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => [%{"id" => "lb-1"}]}}} =
             Cloudflare.LoadBalancer.index(client: client, params: [zone_id: zone_id])
  end

  test "creates a load balancer", %{bypass: bypass} do
    zone_id = "zone-123"
    body = %{"name" => "my-lb", "default_pools" => [], "fallback_pool" => "pool-1"}

    Bypass.expect_once(bypass, "POST", "/zones/#{zone_id}/load_balancers", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": {"id": "lb-new"}, "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"success" => true}}} =
             Cloudflare.LoadBalancer.create(body, client: client, params: [zone_id: zone_id])
  end

  test "deletes a load balancer", %{bypass: bypass} do
    zone_id = "zone-123"
    lb_id = "lb-456"

    Bypass.expect_once(bypass, "DELETE", "/zones/#{zone_id}/load_balancers/#{lb_id}", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": {"id": "#{lb_id}"}, "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"success" => true}}} =
             Cloudflare.LoadBalancer.delete(lb_id, client: client, params: [zone_id: zone_id])
  end
end
