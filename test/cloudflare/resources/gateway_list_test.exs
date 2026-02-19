defmodule Cloudflare.GatewayListTest do
  use ExUnit.Case

  setup do
    bypass = Bypass.open()
    Application.put_env(:cloudflare, :base_url, "http://localhost:#{bypass.port}")
    %{bypass: bypass}
  end

  test "lists gateway lists", %{bypass: bypass} do
    account_id = "acct-123"

    Bypass.expect_once(bypass, "GET", "/accounts/#{account_id}/gateway/lists", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": [{"id": "list-1", "name": "Blocked Domains", "type": "DOMAIN"}], "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => [%{"id" => "list-1"}]}}} =
             Cloudflare.GatewayList.index(client: client, params: [account_id: account_id])
  end

  test "creates a gateway list", %{bypass: bypass} do
    account_id = "acct-123"

    body = %{
      "name" => "Blocked Domains",
      "type" => "DOMAIN",
      "items" => [%{"value" => "malware.example.com"}]
    }

    Bypass.expect_once(bypass, "POST", "/accounts/#{account_id}/gateway/lists", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": {"id": "list-new", "name": "Blocked Domains"}, "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => %{"id" => "list-new"}}}} =
             Cloudflare.GatewayList.create(body, client: client, params: [account_id: account_id])
  end

  test "deletes a gateway list", %{bypass: bypass} do
    account_id = "acct-123"
    list_id = "list-456"

    Bypass.expect_once(
      bypass,
      "DELETE",
      "/accounts/#{account_id}/gateway/lists/#{list_id}",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(200, ~s({"result": {}, "success": true, "errors": [], "messages": []}))
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"success" => true}}} =
             Cloudflare.GatewayList.delete(list_id,
               client: client,
               params: [account_id: account_id]
             )
  end

  test "patches a gateway list (append/remove items)", %{bypass: bypass} do
    account_id = "acct-123"
    list_id = "list-456"
    body = %{"append" => [%{"value" => "new.example.com"}], "remove" => ["old.example.com"]}

    Bypass.expect_once(
      bypass,
      "PATCH",
      "/accounts/#{account_id}/gateway/lists/#{list_id}",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": {"id": "#{list_id}"}, "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"result" => %{"id" => ^list_id}}}} =
             Cloudflare.GatewayList.patch(list_id, body,
               client: client,
               params: [account_id: account_id]
             )
  end

  test "gets list items", %{bypass: bypass} do
    account_id = "acct-123"
    list_id = "list-456"

    Bypass.expect_once(
      bypass,
      "GET",
      "/accounts/#{account_id}/gateway/lists/#{list_id}/items",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": [{"value": "malware.example.com"}], "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"result" => [_]}}} =
             Cloudflare.GatewayList.items(list_id,
               client: client,
               params: [account_id: account_id]
             )
  end
end
