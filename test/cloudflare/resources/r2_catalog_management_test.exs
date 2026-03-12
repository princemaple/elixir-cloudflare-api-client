defmodule Cloudflare.R2CatalogManagementTest do
  use ExUnit.Case

  setup do
    bypass = Bypass.open()
    Application.put_env(:cloudflare, :base_url, "http://localhost:#{bypass.port}")
    %{bypass: bypass}
  end

  test "lists R2 catalogs", %{bypass: bypass} do
    account_id = "acct-123"

    Bypass.expect_once(bypass, "GET", "/accounts/#{account_id}/r2-catalog", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": {"warehouses": [{"id": "wh-1", "bucket": "my-bucket", "name": "my-catalog", "status": "active", "credential_status": "valid", "maintenance_config": {}}]}, "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"result" => %{"warehouses" => [%{"bucket" => "my-bucket"}]}}}} =
             Cloudflare.R2CatalogManagement.index(
               client: client,
               params: [account_id: account_id]
             )
  end

  test "gets R2 catalog details", %{bypass: bypass} do
    account_id = "acct-123"
    bucket_name = "my-bucket"

    Bypass.expect_once(
      bypass,
      "GET",
      "/accounts/#{account_id}/r2-catalog/#{bucket_name}",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": {"id": "wh-1", "bucket": "my-bucket", "name": "my-catalog", "status": "active", "credential_status": "valid", "maintenance_config": {}}, "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"result" => %{"bucket" => ^bucket_name}}}} =
             Cloudflare.R2CatalogManagement.show(bucket_name,
               client: client,
               params: [account_id: account_id]
             )
  end

  test "enables an R2 catalog", %{bypass: bypass} do
    account_id = "acct-123"
    bucket_name = "my-bucket"

    Bypass.expect_once(
      bypass,
      "POST",
      "/accounts/#{account_id}/r2-catalog/#{bucket_name}/enable",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": {"id": "wh-1", "name": "my-catalog"}, "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"success" => true}}} =
             Cloudflare.R2CatalogManagement.enable(bucket_name,
               client: client,
               params: [account_id: account_id]
             )
  end

  test "disables an R2 catalog", %{bypass: bypass} do
    account_id = "acct-123"
    bucket_name = "my-bucket"

    Bypass.expect_once(
      bypass,
      "POST",
      "/accounts/#{account_id}/r2-catalog/#{bucket_name}/disable",
      fn conn ->
        Plug.Conn.resp(conn, 204, "")
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 204}} =
             Cloudflare.R2CatalogManagement.disable(bucket_name,
               client: client,
               params: [account_id: account_id]
             )
  end
end
