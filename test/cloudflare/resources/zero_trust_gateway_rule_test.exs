defmodule Cloudflare.ZeroTrustGatewayRuleTest do
  use ExUnit.Case

  setup do
    bypass = Bypass.open()
    Application.put_env(:cloudflare, :base_url, "http://localhost:#{bypass.port}")
    %{bypass: bypass}
  end

  test "lists gateway rules", %{bypass: bypass} do
    account_id = "acct-123"

    Bypass.expect_once(bypass, "GET", "/accounts/#{account_id}/gateway/rules", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": [{"id": "rule-1", "name": "block-malware"}], "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => [%{"id" => "rule-1"}]}}} =
             Cloudflare.ZeroTrustGatewayRule.index(
               client: client,
               params: [account_id: account_id]
             )
  end

  test "creates a gateway rule", %{bypass: bypass} do
    account_id = "acct-123"
    body = %{"name" => "block-malware", "action" => "block", "enabled" => true}

    Bypass.expect_once(bypass, "POST", "/accounts/#{account_id}/gateway/rules", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": {"id": "rule-new", "name": "block-malware"}, "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => %{"id" => "rule-new"}}}} =
             Cloudflare.ZeroTrustGatewayRule.create(body,
               client: client,
               params: [account_id: account_id]
             )
  end

  test "resets rule expiration", %{bypass: bypass} do
    account_id = "acct-123"
    rule_id = "rule-1"

    Bypass.expect_once(
      bypass,
      "POST",
      "/accounts/#{account_id}/gateway/rules/#{rule_id}/reset_expiration",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": {"id": "rule-1"}, "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => %{"id" => ^rule_id}}}} =
             Cloudflare.ZeroTrustGatewayRule.reset_expiration(rule_id,
               client: client,
               params: [account_id: account_id]
             )
  end
end
