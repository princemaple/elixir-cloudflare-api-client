defmodule Cloudflare.GatewayProxyEndpointTest do
  use ExUnit.Case

  setup do
    bypass = Bypass.open()
    Application.put_env(:cloudflare, :base_url, "http://localhost:#{bypass.port}")
    %{bypass: bypass}
  end

  test "lists proxy endpoints", %{bypass: bypass} do
    account_id = "acct-123"

    Bypass.expect_once(
      bypass,
      "GET",
      "/accounts/#{account_id}/gateway/proxy_endpoints",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": [{"id": "ep-1", "name": "my-proxy"}], "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => [%{"id" => "ep-1"}]}}} =
             Cloudflare.GatewayProxyEndpoint.index(
               client: client,
               params: [account_id: account_id]
             )
  end

  test "creates a proxy endpoint", %{bypass: bypass} do
    account_id = "acct-123"
    body = %{"name" => "my-proxy", "ips" => ["192.0.2.1/32"]}

    Bypass.expect_once(
      bypass,
      "POST",
      "/accounts/#{account_id}/gateway/proxy_endpoints",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": {"id": "ep-new"}, "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => %{"id" => "ep-new"}}}} =
             Cloudflare.GatewayProxyEndpoint.create(body,
               client: client,
               params: [account_id: account_id]
             )
  end

  test "patches a proxy endpoint", %{bypass: bypass} do
    account_id = "acct-123"
    ep_id = "ep-456"
    body = %{"name" => "updated-proxy"}

    Bypass.expect_once(
      bypass,
      "PATCH",
      "/accounts/#{account_id}/gateway/proxy_endpoints/#{ep_id}",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": {"id": "#{ep_id}"}, "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"result" => %{"id" => ^ep_id}}}} =
             Cloudflare.GatewayProxyEndpoint.update(ep_id, body,
               client: client,
               params: [account_id: account_id]
             )
  end

  test "deletes a proxy endpoint", %{bypass: bypass} do
    account_id = "acct-123"
    ep_id = "ep-456"

    Bypass.expect_once(
      bypass,
      "DELETE",
      "/accounts/#{account_id}/gateway/proxy_endpoints/#{ep_id}",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(200, ~s({"result": {}, "success": true, "errors": [], "messages": []}))
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"success" => true}}} =
             Cloudflare.GatewayProxyEndpoint.delete(ep_id,
               client: client,
               params: [account_id: account_id]
             )
  end
end
