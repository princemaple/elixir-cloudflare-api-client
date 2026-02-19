defmodule Cloudflare.AIGatewayLogTest do
  use ExUnit.Case

  setup do
    bypass = Bypass.open()
    Application.put_env(:cloudflare, :base_url, "http://localhost:#{bypass.port}")
    %{bypass: bypass}
  end

  test "lists gateway logs", %{bypass: bypass} do
    account_id = "acct-123"
    gateway_id = "gw-1"

    Bypass.expect_once(
      bypass,
      "GET",
      "/accounts/#{account_id}/ai-gateway/gateways/#{gateway_id}/logs",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": [{"id": "log-1", "model": "gpt-4"}], "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => [%{"id" => "log-1"}]}}} =
             Cloudflare.AIGatewayLog.index(
               client: client,
               params: [account_id: account_id, gateway_id: gateway_id]
             )
  end

  test "deletes all logs", %{bypass: bypass} do
    account_id = "acct-123"
    gateway_id = "gw-1"

    Bypass.expect_once(
      bypass,
      "DELETE",
      "/accounts/#{account_id}/ai-gateway/gateways/#{gateway_id}/logs",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": {"success": true}, "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200}} =
             Cloudflare.AIGatewayLog.delete_all(
               client: client,
               params: [account_id: account_id, gateway_id: gateway_id]
             )
  end

  test "gets log request body", %{bypass: bypass} do
    account_id = "acct-123"
    gateway_id = "gw-1"
    log_id = "log-456"

    Bypass.expect_once(
      bypass,
      "GET",
      "/accounts/#{account_id}/ai-gateway/gateways/#{gateway_id}/logs/#{log_id}/request",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(200, ~s({"result": {}, "success": true, "errors": [], "messages": []}))
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200}} =
             Cloudflare.AIGatewayLog.request(log_id,
               client: client,
               params: [account_id: account_id, gateway_id: gateway_id]
             )
  end
end
