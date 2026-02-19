defmodule Cloudflare.DurableObjectsNamespaceTest do
  use ExUnit.Case

  setup do
    bypass = Bypass.open()
    Application.put_env(:cloudflare, :base_url, "http://localhost:#{bypass.port}")
    %{bypass: bypass}
  end

  test "lists durable object namespaces", %{bypass: bypass} do
    account_id = "acct-123"

    Bypass.expect_once(
      bypass,
      "GET",
      "/accounts/#{account_id}/workers/durable_objects/namespaces",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": [{"id": "ns-1", "name": "MY_DO", "class": "MyDO", "script": "my-worker"}], "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => [%{"id" => "ns-1"}]}}} =
             Cloudflare.DurableObjectsNamespace.index(
               client: client,
               params: [account_id: account_id]
             )
  end

  test "lists objects in a namespace", %{bypass: bypass} do
    account_id = "acct-123"
    ns_id = "ns-456"

    Bypass.expect_once(
      bypass,
      "GET",
      "/accounts/#{account_id}/workers/durable_objects/namespaces/#{ns_id}/objects",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": [{"id": "obj-1", "hasStoredData": true}], "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => [_]}}} =
             Cloudflare.DurableObjectsNamespace.objects(ns_id,
               client: client,
               params: [account_id: account_id]
             )
  end
end
