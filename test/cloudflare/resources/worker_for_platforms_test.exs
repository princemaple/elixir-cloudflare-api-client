defmodule Cloudflare.WorkerForPlatformsTest do
  use ExUnit.Case

  setup do
    bypass = Bypass.open()
    Application.put_env(:cloudflare, :base_url, "http://localhost:#{bypass.port}")
    %{bypass: bypass}
  end

  test "lists dispatch namespaces", %{bypass: bypass} do
    account_id = "acct-123"

    Bypass.expect_once(
      bypass,
      "GET",
      "/accounts/#{account_id}/workers/dispatch/namespaces",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": [{"namespace_id": "ns-1", "namespace_name": "my-ns"}], "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => [%{"namespace_id" => "ns-1"}]}}} =
             Cloudflare.WorkerForPlatforms.index(client: client, params: [account_id: account_id])
  end

  test "creates a dispatch namespace", %{bypass: bypass} do
    account_id = "acct-123"
    body = %{"namespace_name" => "my-ns"}

    Bypass.expect_once(
      bypass,
      "POST",
      "/accounts/#{account_id}/workers/dispatch/namespaces",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": {"namespace_id": "ns-new"}, "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => %{"namespace_id" => "ns-new"}}}} =
             Cloudflare.WorkerForPlatforms.create(body,
               client: client,
               params: [account_id: account_id]
             )
  end

  test "lists scripts within a namespace", %{bypass: bypass} do
    account_id = "acct-123"
    namespace = "my-ns"

    Bypass.expect_once(
      bypass,
      "GET",
      "/accounts/#{account_id}/workers/dispatch/namespaces/#{namespace}/scripts",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": [{"id": "script-1"}], "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => [%{"id" => "script-1"}]}}} =
             Cloudflare.WorkerForPlatforms.scripts(namespace,
               client: client,
               params: [account_id: account_id]
             )
  end

  test "uploads a script to a namespace", %{bypass: bypass} do
    account_id = "acct-123"
    namespace = "my-ns"
    script_name = "my-script"

    Bypass.expect_once(
      bypass,
      "PUT",
      "/accounts/#{account_id}/workers/dispatch/namespaces/#{namespace}/scripts/#{script_name}",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": {"id": "my-script"}, "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200}} =
             Cloudflare.WorkerForPlatforms.upload_script(namespace, script_name, %{},
               client: client,
               params: [account_id: account_id]
             )
  end
end
