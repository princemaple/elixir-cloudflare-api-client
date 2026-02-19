defmodule Cloudflare.AIGatewayProviderConfigTest do
  use ExUnit.Case

  setup do
    bypass = Bypass.open()
    Application.put_env(:cloudflare, :base_url, "http://localhost:#{bypass.port}")
    %{bypass: bypass}
  end

  test "lists provider configs", %{bypass: bypass} do
    account_id = "acct-123"
    gateway_id = "gw-1"

    Bypass.expect_once(
      bypass,
      "GET",
      "/accounts/#{account_id}/ai-gateway/gateways/#{gateway_id}/provider_configs",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": [{"id": "pc-1", "provider_slug": "openai"}], "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => [%{"id" => "pc-1"}]}}} =
             Cloudflare.AIGatewayProviderConfig.index(
               client: client,
               params: [account_id: account_id, gateway_id: gateway_id]
             )
  end

  test "creates a provider config", %{bypass: bypass} do
    account_id = "acct-123"
    gateway_id = "gw-1"
    body = %{"provider_slug" => "openai", "alias" => "my-openai"}

    Bypass.expect_once(
      bypass,
      "POST",
      "/accounts/#{account_id}/ai-gateway/gateways/#{gateway_id}/provider_configs",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": {"id": "pc-new"}, "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => %{"id" => "pc-new"}}}} =
             Cloudflare.AIGatewayProviderConfig.create(body,
               client: client,
               params: [account_id: account_id, gateway_id: gateway_id]
             )
  end

  test "deletes a provider config", %{bypass: bypass} do
    account_id = "acct-123"
    gateway_id = "gw-1"
    config_id = "pc-456"

    Bypass.expect_once(
      bypass,
      "DELETE",
      "/accounts/#{account_id}/ai-gateway/gateways/#{gateway_id}/provider_configs/#{config_id}",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": {"id": "#{config_id}"}, "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200}} =
             Cloudflare.AIGatewayProviderConfig.delete(config_id,
               client: client,
               params: [account_id: account_id, gateway_id: gateway_id]
             )
  end
end
