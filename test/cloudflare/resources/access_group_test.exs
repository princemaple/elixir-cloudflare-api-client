defmodule Cloudflare.AccessGroupTest do
  use ExUnit.Case

  setup do
    bypass = Bypass.open()
    Application.put_env(:cloudflare, :base_url, "http://localhost:#{bypass.port}")
    %{bypass: bypass}
  end

  test "lists access groups", %{bypass: bypass} do
    account_id = "acct-123"

    Bypass.expect_once(bypass, "GET", "/accounts/#{account_id}/access/groups", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": [{"id": "grp-1", "name": "My Group"}], "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => [%{"id" => "grp-1"}]}}} =
             Cloudflare.AccessGroup.index(client: client, params: [account_id: account_id])
  end

  test "creates an access group", %{bypass: bypass} do
    account_id = "acct-123"
    body = %{"name" => "New Group", "include" => []}

    Bypass.expect_once(bypass, "POST", "/accounts/#{account_id}/access/groups", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": {"id": "grp-new"}, "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => %{"id" => "grp-new"}}}} =
             Cloudflare.AccessGroup.create(body, client: client, params: [account_id: account_id])
  end

  test "updates an access group", %{bypass: bypass} do
    account_id = "acct-123"
    group_id = "grp-456"
    body = %{"name" => "Updated Group", "include" => []}

    Bypass.expect_once(
      bypass,
      "PUT",
      "/accounts/#{account_id}/access/groups/#{group_id}",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": {"id": "#{group_id}"}, "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"success" => true}}} =
             Cloudflare.AccessGroup.update(group_id, body,
               client: client,
               params: [account_id: account_id]
             )
  end

  test "deletes an access group", %{bypass: bypass} do
    account_id = "acct-123"
    group_id = "grp-456"

    Bypass.expect_once(
      bypass,
      "DELETE",
      "/accounts/#{account_id}/access/groups/#{group_id}",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": {"id": "#{group_id}"}, "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"success" => true}}} =
             Cloudflare.AccessGroup.delete(group_id,
               client: client,
               params: [account_id: account_id]
             )
  end
end
