defmodule Cloudflare.GatewayRuleTest do
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
        ~s({"result": [{"id": "rule-1", "name": "Block Malware", "action": "block"}], "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => [%{"id" => "rule-1"}]}}} =
             Cloudflare.GatewayRule.index(client: client, params: [account_id: account_id])
  end

  test "creates a gateway rule", %{bypass: bypass} do
    account_id = "acct-123"

    body = %{
      "name" => "Block Malware",
      "action" => "block",
      "traffic" => "dns.fqdn in $malware",
      "filters" => ["dns"]
    }

    Bypass.expect_once(bypass, "POST", "/accounts/#{account_id}/gateway/rules", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": {"id": "rule-new", "name": "Block Malware"}, "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => %{"id" => "rule-new"}}}} =
             Cloudflare.GatewayRule.create(body, client: client, params: [account_id: account_id])
  end

  test "deletes a gateway rule", %{bypass: bypass} do
    account_id = "acct-123"
    rule_id = "rule-456"

    Bypass.expect_once(
      bypass,
      "DELETE",
      "/accounts/#{account_id}/gateway/rules/#{rule_id}",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(200, ~s({"result": {}, "success": true, "errors": [], "messages": []}))
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"success" => true}}} =
             Cloudflare.GatewayRule.delete(rule_id,
               client: client,
               params: [account_id: account_id]
             )
  end

  test "resets rule expiration", %{bypass: bypass} do
    account_id = "acct-123"
    rule_id = "rule-456"

    Bypass.expect_once(
      bypass,
      "POST",
      "/accounts/#{account_id}/gateway/rules/#{rule_id}/reset_expiration",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": {"id": "#{rule_id}"}, "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"result" => %{"id" => ^rule_id}}}} =
             Cloudflare.GatewayRule.reset_expiration(rule_id,
               client: client,
               params: [account_id: account_id]
             )
  end
end
