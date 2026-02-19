defmodule Cloudflare.NotificationPolicyTest do
  use ExUnit.Case

  setup do
    bypass = Bypass.open()
    Application.put_env(:cloudflare, :base_url, "http://localhost:#{bypass.port}")
    %{bypass: bypass}
  end

  test "lists notification policies", %{bypass: bypass} do
    account_id = "acct-123"

    Bypass.expect_once(bypass, "GET", "/accounts/#{account_id}/alerting/v3/policies", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": [{"id": "pol-1", "name": "Health Check Alert", "enabled": true}], "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => [%{"id" => "pol-1"}]}}} =
             Cloudflare.NotificationPolicy.index(client: client, params: [account_id: account_id])
  end

  test "creates a notification policy", %{bypass: bypass} do
    account_id = "acct-123"

    body = %{
      "alert_type" => "health_check_status_notification",
      "enabled" => true,
      "mechanisms" => %{"email" => [%{"id" => "test@example.com"}]},
      "name" => "Health Check Alert"
    }

    Bypass.expect_once(bypass, "POST", "/accounts/#{account_id}/alerting/v3/policies", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": {"id": "pol-new"}, "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => %{"id" => "pol-new"}}}} =
             Cloudflare.NotificationPolicy.create(body,
               client: client,
               params: [account_id: account_id]
             )
  end

  test "updates a notification policy", %{bypass: bypass} do
    account_id = "acct-123"
    policy_id = "pol-456"
    body = %{"enabled" => false}

    Bypass.expect_once(
      bypass,
      "PUT",
      "/accounts/#{account_id}/alerting/v3/policies/#{policy_id}",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": {"id": "#{policy_id}"}, "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"success" => true}}} =
             Cloudflare.NotificationPolicy.update(policy_id, body,
               client: client,
               params: [account_id: account_id]
             )
  end

  test "deletes a notification policy", %{bypass: bypass} do
    account_id = "acct-123"
    policy_id = "pol-456"

    Bypass.expect_once(
      bypass,
      "DELETE",
      "/accounts/#{account_id}/alerting/v3/policies/#{policy_id}",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(200, ~s({"result": {}, "success": true, "errors": [], "messages": []}))
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"success" => true}}} =
             Cloudflare.NotificationPolicy.delete(policy_id,
               client: client,
               params: [account_id: account_id]
             )
  end
end
