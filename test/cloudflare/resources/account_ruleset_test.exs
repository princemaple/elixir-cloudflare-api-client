defmodule Cloudflare.AccountRulesetTest do
  use ExUnit.Case

  setup do
    bypass = Bypass.open()
    Application.put_env(:cloudflare, :base_url, "http://localhost:#{bypass.port}")
    %{bypass: bypass}
  end

  test "lists account rulesets", %{bypass: bypass} do
    account_id = "acct-123"

    Bypass.expect_once(bypass, "GET", "/accounts/#{account_id}/rulesets", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": [{"id": "rs-1", "name": "default", "phase": "http_request_firewall_managed"}], "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => [%{"id" => "rs-1"}]}}} =
             Cloudflare.AccountRuleset.index(client: client, params: [account_id: account_id])
  end

  test "creates an account ruleset", %{bypass: bypass} do
    account_id = "acct-123"

    body = %{
      "name" => "My Ruleset",
      "kind" => "root",
      "phase" => "http_request_firewall_custom",
      "rules" => []
    }

    Bypass.expect_once(bypass, "POST", "/accounts/#{account_id}/rulesets", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": {"id": "rs-new", "name": "My Ruleset"}, "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => %{"id" => "rs-new"}}}} =
             Cloudflare.AccountRuleset.create(body,
               client: client,
               params: [account_id: account_id]
             )
  end

  test "deletes an account ruleset", %{bypass: bypass} do
    account_id = "acct-123"
    rs_id = "rs-456"

    Bypass.expect_once(bypass, "DELETE", "/accounts/#{account_id}/rulesets/#{rs_id}", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(200, ~s({"result": {}, "success": true, "errors": [], "messages": []}))
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"success" => true}}} =
             Cloudflare.AccountRuleset.delete(rs_id,
               client: client,
               params: [account_id: account_id]
             )
  end

  test "lists ruleset versions", %{bypass: bypass} do
    account_id = "acct-123"
    rs_id = "rs-456"

    Bypass.expect_once(
      bypass,
      "GET",
      "/accounts/#{account_id}/rulesets/#{rs_id}/versions",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": [{"version": "1"}, {"version": "2"}], "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"result" => [_, _]}}} =
             Cloudflare.AccountRuleset.versions(rs_id,
               client: client,
               params: [account_id: account_id]
             )
  end

  test "adds a rule to a ruleset", %{bypass: bypass} do
    account_id = "acct-123"
    rs_id = "rs-456"
    body = %{"action" => "block", "expression" => "ip.src eq 1.2.3.4"}

    Bypass.expect_once(
      bypass,
      "POST",
      "/accounts/#{account_id}/rulesets/#{rs_id}/rules",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": {"id": "rule-new"}, "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"result" => %{"id" => "rule-new"}}}} =
             Cloudflare.AccountRuleset.create_rule(rs_id, body,
               client: client,
               params: [account_id: account_id]
             )
  end
end
