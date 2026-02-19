defmodule Cloudflare.D1DatabaseTest do
  use ExUnit.Case

  setup do
    bypass = Bypass.open()
    Application.put_env(:cloudflare, :base_url, "http://localhost:#{bypass.port}")
    %{bypass: bypass}
  end

  test "lists D1 databases", %{bypass: bypass} do
    account_id = "acct-123"

    Bypass.expect_once(bypass, "GET", "/accounts/#{account_id}/d1/database", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": [{"uuid": "db-1", "name": "my-db"}], "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => [%{"uuid" => "db-1"}]}}} =
             Cloudflare.D1Database.index(client: client, params: [account_id: account_id])
  end

  test "creates a D1 database", %{bypass: bypass} do
    account_id = "acct-123"
    body = %{"name" => "my-new-db"}

    Bypass.expect_once(bypass, "POST", "/accounts/#{account_id}/d1/database", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": {"uuid": "db-new", "name": "my-new-db"}, "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => %{"uuid" => "db-new"}}}} =
             Cloudflare.D1Database.create(body, client: client, params: [account_id: account_id])
  end

  test "deletes a D1 database", %{bypass: bypass} do
    account_id = "acct-123"
    db_id = "db-456"

    Bypass.expect_once(
      bypass,
      "DELETE",
      "/accounts/#{account_id}/d1/database/#{db_id}",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(200, ~s({"result": {}, "success": true, "errors": [], "messages": []}))
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"success" => true}}} =
             Cloudflare.D1Database.delete(db_id, client: client, params: [account_id: account_id])
  end

  test "queries a D1 database", %{bypass: bypass} do
    account_id = "acct-123"
    db_id = "db-456"
    body = %{"sql" => "SELECT * FROM users", "params" => []}

    Bypass.expect_once(
      bypass,
      "POST",
      "/accounts/#{account_id}/d1/database/#{db_id}/query",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": [{"results": [], "success": true}], "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"success" => true}}} =
             Cloudflare.D1Database.query(db_id, body,
               client: client,
               params: [account_id: account_id]
             )
  end

  test "exports a D1 database", %{bypass: bypass} do
    account_id = "acct-123"
    db_id = "db-456"

    Bypass.expect_once(
      bypass,
      "POST",
      "/accounts/#{account_id}/d1/database/#{db_id}/export",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": {"signed_url": "https://example.com/export.sql"}, "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"success" => true}}} =
             Cloudflare.D1Database.export(db_id, %{},
               client: client,
               params: [account_id: account_id]
             )
  end
end
