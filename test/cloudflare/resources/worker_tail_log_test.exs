defmodule Cloudflare.WorkerTailLogTest do
  use ExUnit.Case

  setup do
    bypass = Bypass.open()
    Application.put_env(:cloudflare, :base_url, "http://localhost:#{bypass.port}")
    %{bypass: bypass}
  end

  test "lists tails for a script", %{bypass: bypass} do
    account_id = "acct-123"
    script_name = "my-worker"

    Bypass.expect_once(
      bypass,
      "GET",
      "/accounts/#{account_id}/workers/scripts/#{script_name}/tails",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": [{"id": "tail-1", "url": "wss://..."}], "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => [%{"id" => "tail-1"}]}}} =
             Cloudflare.WorkerTailLog.index(
               client: client,
               params: [account_id: account_id, script_name: script_name]
             )
  end

  test "creates a tail", %{bypass: bypass} do
    account_id = "acct-123"
    script_name = "my-worker"

    Bypass.expect_once(
      bypass,
      "POST",
      "/accounts/#{account_id}/workers/scripts/#{script_name}/tails",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": {"id": "tail-new", "url": "wss://..."}, "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => %{"id" => "tail-new"}}}} =
             Cloudflare.WorkerTailLog.create(%{},
               client: client,
               params: [account_id: account_id, script_name: script_name]
             )
  end

  test "deletes a tail", %{bypass: bypass} do
    account_id = "acct-123"
    script_name = "my-worker"
    tail_id = "tail-456"

    Bypass.expect_once(
      bypass,
      "DELETE",
      "/accounts/#{account_id}/workers/scripts/#{script_name}/tails/#{tail_id}",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(200, ~s({"result": {}, "success": true, "errors": [], "messages": []}))
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200}} =
             Cloudflare.WorkerTailLog.delete(tail_id,
               client: client,
               params: [account_id: account_id, script_name: script_name]
             )
  end
end
