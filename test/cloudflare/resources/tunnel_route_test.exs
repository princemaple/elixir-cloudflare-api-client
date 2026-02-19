defmodule Cloudflare.TunnelRouteTest do
  use ExUnit.Case

  setup do
    bypass = Bypass.open()
    Application.put_env(:cloudflare, :base_url, "http://localhost:#{bypass.port}")
    %{bypass: bypass}
  end

  test "lists tunnel routes", %{bypass: bypass} do
    account_id = "acct-123"

    Bypass.expect_once(bypass, "GET", "/accounts/#{account_id}/teamnet/routes", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": [{"id": "rt-1", "network": "192.0.2.0/24"}], "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => [%{"id" => "rt-1"}]}}} =
             Cloudflare.TunnelRoute.index(client: client, params: [account_id: account_id])
  end

  test "creates a tunnel route", %{bypass: bypass} do
    account_id = "acct-123"
    body = %{"network" => "192.0.2.0/24", "tunnel_id" => "tun-1"}

    Bypass.expect_once(bypass, "POST", "/accounts/#{account_id}/teamnet/routes", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": {"id": "rt-new", "network": "192.0.2.0/24"}, "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => %{"id" => "rt-new"}}}} =
             Cloudflare.TunnelRoute.create(body, client: client, params: [account_id: account_id])
  end

  test "patches a tunnel route", %{bypass: bypass} do
    account_id = "acct-123"
    route_id = "rt-456"
    body = %{"comment" => "updated comment"}

    Bypass.expect_once(
      bypass,
      "PATCH",
      "/accounts/#{account_id}/teamnet/routes/#{route_id}",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": {"id": "#{route_id}"}, "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"result" => %{"id" => ^route_id}}}} =
             Cloudflare.TunnelRoute.update(route_id, body,
               client: client,
               params: [account_id: account_id]
             )
  end

  test "deletes a tunnel route", %{bypass: bypass} do
    account_id = "acct-123"
    route_id = "rt-456"

    Bypass.expect_once(
      bypass,
      "DELETE",
      "/accounts/#{account_id}/teamnet/routes/#{route_id}",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": {"id": "#{route_id}"}, "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"success" => true}}} =
             Cloudflare.TunnelRoute.delete(route_id,
               client: client,
               params: [account_id: account_id]
             )
  end
end
