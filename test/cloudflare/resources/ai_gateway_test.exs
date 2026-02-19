defmodule Cloudflare.AIGatewayTest do
  use ExUnit.Case

  setup do
    bypass = Bypass.open()
    Application.put_env(:cloudflare, :base_url, "http://localhost:#{bypass.port}")
    %{bypass: bypass}
  end

  test "lists AI gateways", %{bypass: bypass} do
    account_id = "acct-123"

    Bypass.expect_once(bypass, "GET", "/accounts/#{account_id}/ai-gateway/gateways", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": [{"id": "gw-1", "collect_logs": true}], "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => [%{"id" => "gw-1"}]}}} =
             Cloudflare.AIGateway.index(client: client, params: [account_id: account_id])
  end

  test "creates an AI gateway", %{bypass: bypass} do
    account_id = "acct-123"
    body = %{"id" => "my-gateway", "collect_logs" => true}

    Bypass.expect_once(bypass, "POST", "/accounts/#{account_id}/ai-gateway/gateways", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": {"id": "my-gateway"}, "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => %{"id" => "my-gateway"}}}} =
             Cloudflare.AIGateway.create(body, client: client, params: [account_id: account_id])
  end

  test "deletes an AI gateway", %{bypass: bypass} do
    account_id = "acct-123"
    gateway_id = "gw-456"

    Bypass.expect_once(
      bypass,
      "DELETE",
      "/accounts/#{account_id}/ai-gateway/gateways/#{gateway_id}",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": {"id": "#{gateway_id}"}, "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"success" => true}}} =
             Cloudflare.AIGateway.delete(gateway_id,
               client: client,
               params: [account_id: account_id]
             )
  end
end
