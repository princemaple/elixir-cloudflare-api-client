defmodule Cloudflare.ListTest do
  use ExUnit.Case

  setup do
    bypass = Bypass.open()
    Application.put_env(:cloudflare, :base_url, "http://localhost:#{bypass.port}")
    %{bypass: bypass}
  end

  test "lists all lists", %{bypass: bypass} do
    account_id = "acct-123"

    Bypass.expect_once(bypass, "GET", "/accounts/#{account_id}/rules/lists", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": [{"id": "list-1", "name": "my-ip-list", "kind": "ip"}], "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => [%{"id" => "list-1"}]}}} =
             Cloudflare.List.index(client: client, params: [account_id: account_id])
  end

  test "creates a list", %{bypass: bypass} do
    account_id = "acct-123"
    body = %{"name" => "my-ip-list", "kind" => "ip", "description" => "IP blocklist"}

    Bypass.expect_once(bypass, "POST", "/accounts/#{account_id}/rules/lists", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": {"id": "list-new", "name": "my-ip-list"}, "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => %{"id" => "list-new"}}}} =
             Cloudflare.List.create(body, client: client, params: [account_id: account_id])
  end

  test "deletes a list", %{bypass: bypass} do
    account_id = "acct-123"
    list_id = "list-456"

    Bypass.expect_once(
      bypass,
      "DELETE",
      "/accounts/#{account_id}/rules/lists/#{list_id}",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(200, ~s({"result": {}, "success": true, "errors": [], "messages": []}))
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"success" => true}}} =
             Cloudflare.List.delete(list_id, client: client, params: [account_id: account_id])
  end

  test "gets items of a list", %{bypass: bypass} do
    account_id = "acct-123"
    list_id = "list-456"

    Bypass.expect_once(
      bypass,
      "GET",
      "/accounts/#{account_id}/rules/lists/#{list_id}/items",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": [{"id": "item-1", "ip": "1.2.3.4"}], "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"result" => [%{"ip" => "1.2.3.4"}]}}} =
             Cloudflare.List.items(list_id, client: client, params: [account_id: account_id])
  end

  test "appends items to a list", %{bypass: bypass} do
    account_id = "acct-123"
    list_id = "list-456"
    body = [%{"ip" => "5.6.7.8"}]

    Bypass.expect_once(
      bypass,
      "POST",
      "/accounts/#{account_id}/rules/lists/#{list_id}/items",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": {"operation_id": "op-123"}, "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"result" => %{"operation_id" => "op-123"}}}} =
             Cloudflare.List.create_items(list_id, body,
               client: client,
               params: [account_id: account_id]
             )
  end
end
