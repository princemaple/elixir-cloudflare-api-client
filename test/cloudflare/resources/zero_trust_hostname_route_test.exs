defmodule Cloudflare.ZeroTrustHostnameRouteTest do
  use ExUnit.Case

  setup do
    bypass = Bypass.open()
    Application.put_env(:cloudflare, :base_url, "http://localhost:#{bypass.port}")
    %{bypass: bypass}
  end

  test "lists hostname routes", %{bypass: bypass} do
    account_id = "acct-123"

    Bypass.expect_once(
      bypass,
      "GET",
      "/accounts/#{account_id}/zerotrust/routes/hostname",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": [{"id": "hr-1", "hostname": "app.internal"}], "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => [%{"id" => "hr-1"}]}}} =
             Cloudflare.ZeroTrustHostnameRoute.index(
               client: client,
               params: [account_id: account_id]
             )
  end

  test "creates a hostname route", %{bypass: bypass} do
    account_id = "acct-123"
    body = %{"hostname" => "app.internal", "tunnel_id" => "tun-1"}

    Bypass.expect_once(
      bypass,
      "POST",
      "/accounts/#{account_id}/zerotrust/routes/hostname",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": {"id": "hr-new", "hostname": "app.internal"}, "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => %{"id" => "hr-new"}}}} =
             Cloudflare.ZeroTrustHostnameRoute.create(body,
               client: client,
               params: [account_id: account_id]
             )
  end

  test "deletes a hostname route", %{bypass: bypass} do
    account_id = "acct-123"
    route_id = "hr-1"

    Bypass.expect_once(
      bypass,
      "DELETE",
      "/accounts/#{account_id}/zerotrust/routes/hostname/#{route_id}",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": {"id": "hr-1"}, "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, _} =
             Cloudflare.ZeroTrustHostnameRoute.delete(route_id,
               client: client,
               params: [account_id: account_id]
             )
  end
end
