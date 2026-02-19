defmodule Cloudflare.KvNamespaceTest do
  use ExUnit.Case

  setup do
    bypass = Bypass.open()
    Application.put_env(:cloudflare, :base_url, "http://localhost:#{bypass.port}")
    %{bypass: bypass}
  end

  test "lists KV namespaces", %{bypass: bypass} do
    account_id = "acct-123"

    Bypass.expect_once(bypass, "GET", "/accounts/#{account_id}/storage/kv/namespaces", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": [{"id": "ns-1"}], "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => [%{"id" => "ns-1"}]}}} =
             Cloudflare.KvNamespace.index(client: client, params: [account_id: account_id])
  end

  test "creates a KV namespace", %{bypass: bypass} do
    account_id = "acct-123"
    body = %{"title" => "My Namespace"}

    Bypass.expect_once(bypass, "POST", "/accounts/#{account_id}/storage/kv/namespaces", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": {"id": "ns-new"}, "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => %{"id" => "ns-new"}}}} =
             Cloudflare.KvNamespace.create(body, client: client, params: [account_id: account_id])
  end

  test "deletes a KV namespace", %{bypass: bypass} do
    account_id = "acct-123"
    ns_id = "ns-456"

    Bypass.expect_once(
      bypass,
      "DELETE",
      "/accounts/#{account_id}/storage/kv/namespaces/#{ns_id}",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": null, "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"success" => true}}} =
             Cloudflare.KvNamespace.delete(ns_id,
               client: client,
               params: [account_id: account_id]
             )
  end
end
