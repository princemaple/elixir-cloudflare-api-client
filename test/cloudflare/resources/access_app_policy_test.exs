defmodule Cloudflare.AccessAppPolicyTest do
  use ExUnit.Case

  setup do
    bypass = Bypass.open()
    Application.put_env(:cloudflare, :base_url, "http://localhost:#{bypass.port}")
    %{bypass: bypass}
  end

  test "lists access app policies", %{bypass: bypass} do
    account_id = "acct-123"
    app_id = "app-abc"

    Bypass.expect_once(
      bypass,
      "GET",
      "/accounts/#{account_id}/access/apps/#{app_id}/policies",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": [{"id": "pol-1", "name": "Admins Only", "decision": "allow"}], "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => [%{"id" => "pol-1"}]}}} =
             Cloudflare.AccessAppPolicy.index(
               client: client,
               params: [account_id: account_id, app_id: app_id]
             )
  end

  test "creates an access app policy", %{bypass: bypass} do
    account_id = "acct-123"
    app_id = "app-abc"

    body = %{
      "name" => "Admins Only",
      "decision" => "allow",
      "include" => [%{"group" => %{"id" => "grp-1"}}]
    }

    Bypass.expect_once(
      bypass,
      "POST",
      "/accounts/#{account_id}/access/apps/#{app_id}/policies",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": {"id": "pol-new", "name": "Admins Only"}, "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => %{"id" => "pol-new"}}}} =
             Cloudflare.AccessAppPolicy.create(body,
               client: client,
               params: [account_id: account_id, app_id: app_id]
             )
  end

  test "deletes an access app policy", %{bypass: bypass} do
    account_id = "acct-123"
    app_id = "app-abc"
    policy_id = "pol-456"

    Bypass.expect_once(
      bypass,
      "DELETE",
      "/accounts/#{account_id}/access/apps/#{app_id}/policies/#{policy_id}",
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
             Cloudflare.AccessAppPolicy.delete(policy_id,
               client: client,
               params: [account_id: account_id, app_id: app_id]
             )
  end

  test "converts policy to reusable", %{bypass: bypass} do
    account_id = "acct-123"
    app_id = "app-abc"
    policy_id = "pol-456"

    Bypass.expect_once(
      bypass,
      "PUT",
      "/accounts/#{account_id}/access/apps/#{app_id}/policies/#{policy_id}/make_reusable",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": [{"id": "#{policy_id}", "precedence": 1}], "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"result" => [%{"id" => ^policy_id}]}}} =
             Cloudflare.AccessAppPolicy.make_reusable(policy_id,
               client: client,
               params: [account_id: account_id, app_id: app_id]
             )
  end
end
