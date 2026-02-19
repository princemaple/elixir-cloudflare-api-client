defmodule Cloudflare.R2BucketTest do
  use ExUnit.Case

  setup do
    bypass = Bypass.open()
    Application.put_env(:cloudflare, :base_url, "http://localhost:#{bypass.port}")
    %{bypass: bypass}
  end

  test "lists R2 buckets", %{bypass: bypass} do
    account_id = "acct-123"

    Bypass.expect_once(bypass, "GET", "/accounts/#{account_id}/r2/buckets", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": {"buckets": [{"name": "my-bucket"}]}, "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => %{"buckets" => [%{"name" => "my-bucket"}]}}}} =
             Cloudflare.R2Bucket.index(client: client, params: [account_id: account_id])
  end

  test "creates an R2 bucket", %{bypass: bypass} do
    account_id = "acct-123"
    body = %{"name" => "my-new-bucket"}

    Bypass.expect_once(bypass, "POST", "/accounts/#{account_id}/r2/buckets", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": {"name": "my-new-bucket"}, "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => %{"name" => "my-new-bucket"}}}} =
             Cloudflare.R2Bucket.create(body, client: client, params: [account_id: account_id])
  end

  test "deletes an R2 bucket", %{bypass: bypass} do
    account_id = "acct-123"
    bucket_name = "my-bucket"

    Bypass.expect_once(
      bypass,
      "DELETE",
      "/accounts/#{account_id}/r2/buckets/#{bucket_name}",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(200, ~s({"result": {}, "success": true, "errors": [], "messages": []}))
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"success" => true}}} =
             Cloudflare.R2Bucket.delete(bucket_name,
               client: client,
               params: [account_id: account_id]
             )
  end

  test "gets CORS policy for an R2 bucket", %{bypass: bypass} do
    account_id = "acct-123"
    bucket_name = "my-bucket"

    Bypass.expect_once(
      bypass,
      "GET",
      "/accounts/#{account_id}/r2/buckets/#{bucket_name}/cors",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": {"rules": []}, "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"result" => %{"rules" => []}}}} =
             Cloudflare.R2Bucket.get_cors(bucket_name,
               client: client,
               params: [account_id: account_id]
             )
  end

  test "sets CORS policy for an R2 bucket", %{bypass: bypass} do
    account_id = "acct-123"
    bucket_name = "my-bucket"
    policy = %{"rules" => [%{"allowed" => %{"origins" => ["*"], "methods" => ["GET"]}}]}

    Bypass.expect_once(
      bypass,
      "PUT",
      "/accounts/#{account_id}/r2/buckets/#{bucket_name}/cors",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(200, ~s({"result": {}, "success": true, "errors": [], "messages": []}))
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"success" => true}}} =
             Cloudflare.R2Bucket.put_cors(bucket_name, policy,
               client: client,
               params: [account_id: account_id]
             )
  end
end
