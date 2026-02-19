defmodule Cloudflare.DevicePostureRuleTest do
  use ExUnit.Case

  setup do
    bypass = Bypass.open()
    Application.put_env(:cloudflare, :base_url, "http://localhost:#{bypass.port}")
    %{bypass: bypass}
  end

  test "lists device posture rules", %{bypass: bypass} do
    account_id = "acct-123"

    Bypass.expect_once(bypass, "GET", "/accounts/#{account_id}/devices/posture", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": [{"id": "rule-1", "name": "Check OS version"}], "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => [%{"id" => "rule-1"}]}}} =
             Cloudflare.DevicePostureRule.index(client: client, params: [account_id: account_id])
  end

  test "creates a device posture rule", %{bypass: bypass} do
    account_id = "acct-123"

    body = %{
      "name" => "Check OS version",
      "type" => "os_version",
      "input" => %{"version" => "10.0.19041"}
    }

    Bypass.expect_once(bypass, "POST", "/accounts/#{account_id}/devices/posture", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": {"id": "rule-new"}, "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => %{"id" => "rule-new"}}}} =
             Cloudflare.DevicePostureRule.create(body,
               client: client,
               params: [account_id: account_id]
             )
  end

  test "updates a device posture rule", %{bypass: bypass} do
    account_id = "acct-123"
    rule_id = "rule-456"
    body = %{"name" => "Updated Check"}

    Bypass.expect_once(
      bypass,
      "PUT",
      "/accounts/#{account_id}/devices/posture/#{rule_id}",
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
             Cloudflare.DevicePostureRule.update(rule_id, body,
               client: client,
               params: [account_id: account_id]
             )
  end

  test "deletes a device posture rule", %{bypass: bypass} do
    account_id = "acct-123"
    rule_id = "rule-456"

    Bypass.expect_once(
      bypass,
      "DELETE",
      "/accounts/#{account_id}/devices/posture/#{rule_id}",
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

    assert {:ok, %{status: 200, body: %{"success" => true}}} =
             Cloudflare.DevicePostureRule.delete(rule_id,
               client: client,
               params: [account_id: account_id]
             )
  end
end
