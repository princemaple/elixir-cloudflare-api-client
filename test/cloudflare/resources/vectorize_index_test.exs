defmodule Cloudflare.VectorizeIndexTest do
  use ExUnit.Case

  setup do
    bypass = Bypass.open()
    Application.put_env(:cloudflare, :base_url, "http://localhost:#{bypass.port}")
    %{bypass: bypass}
  end

  test "lists vectorize indexes", %{bypass: bypass} do
    account_id = "acct-123"

    Bypass.expect_once(bypass, "GET", "/accounts/#{account_id}/vectorize/v2/indexes", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": [{"name": "my-index", "config": {"dimensions": 768, "metric": "cosine"}}], "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => [%{"name" => "my-index"}]}}} =
             Cloudflare.VectorizeIndex.index(client: client, params: [account_id: account_id])
  end

  test "creates a vectorize index", %{bypass: bypass} do
    account_id = "acct-123"
    body = %{"name" => "my-index", "config" => %{"dimensions" => 768, "metric" => "cosine"}}

    Bypass.expect_once(bypass, "POST", "/accounts/#{account_id}/vectorize/v2/indexes", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": {"name": "my-index"}, "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => %{"name" => "my-index"}}}} =
             Cloudflare.VectorizeIndex.create(body,
               client: client,
               params: [account_id: account_id]
             )
  end

  test "deletes a vectorize index", %{bypass: bypass} do
    account_id = "acct-123"
    index_name = "my-index"

    Bypass.expect_once(
      bypass,
      "DELETE",
      "/accounts/#{account_id}/vectorize/v2/indexes/#{index_name}",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(200, ~s({"result": {}, "success": true, "errors": [], "messages": []}))
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"success" => true}}} =
             Cloudflare.VectorizeIndex.delete(index_name,
               client: client,
               params: [account_id: account_id]
             )
  end

  test "queries a vectorize index", %{bypass: bypass} do
    account_id = "acct-123"
    index_name = "my-index"
    body = %{"vector" => [0.1, 0.2, 0.3], "topK" => 5}

    Bypass.expect_once(
      bypass,
      "POST",
      "/accounts/#{account_id}/vectorize/v2/indexes/#{index_name}/query",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": {"count": 5, "matches": []}, "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"result" => %{"count" => 5}}}} =
             Cloudflare.VectorizeIndex.query(index_name, body,
               client: client,
               params: [account_id: account_id]
             )
  end

  test "upserts vectors into an index", %{bypass: bypass} do
    account_id = "acct-123"
    index_name = "my-index"
    body = %{"vectors" => [%{"id" => "v1", "values" => [0.1, 0.2, 0.3]}]}

    Bypass.expect_once(
      bypass,
      "POST",
      "/accounts/#{account_id}/vectorize/v2/indexes/#{index_name}/upsert",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": {"mutationId": "mut-1"}, "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"result" => %{"mutationId" => "mut-1"}}}} =
             Cloudflare.VectorizeIndex.upsert(index_name, body,
               client: client,
               params: [account_id: account_id]
             )
  end
end
