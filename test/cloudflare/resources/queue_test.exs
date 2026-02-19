defmodule Cloudflare.QueueTest do
  use ExUnit.Case

  setup do
    bypass = Bypass.open()
    Application.put_env(:cloudflare, :base_url, "http://localhost:#{bypass.port}")
    %{bypass: bypass}
  end

  test "lists queues", %{bypass: bypass} do
    account_id = "acct-123"

    Bypass.expect_once(bypass, "GET", "/accounts/#{account_id}/queues", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": [{"queue_id": "q-1", "queue_name": "my-queue"}], "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => [%{"queue_id" => "q-1"}]}}} =
             Cloudflare.Queue.index(client: client, params: [account_id: account_id])
  end

  test "creates a queue", %{bypass: bypass} do
    account_id = "acct-123"
    body = %{"queue_name" => "my-new-queue"}

    Bypass.expect_once(bypass, "POST", "/accounts/#{account_id}/queues", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": {"queue_id": "q-new", "queue_name": "my-new-queue"}, "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => %{"queue_id" => "q-new"}}}} =
             Cloudflare.Queue.create(body, client: client, params: [account_id: account_id])
  end

  test "deletes a queue", %{bypass: bypass} do
    account_id = "acct-123"
    queue_id = "q-456"

    Bypass.expect_once(bypass, "DELETE", "/accounts/#{account_id}/queues/#{queue_id}", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(200, ~s({"result": {}, "success": true, "errors": [], "messages": []}))
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"success" => true}}} =
             Cloudflare.Queue.delete(queue_id, client: client, params: [account_id: account_id])
  end

  test "lists queue consumers", %{bypass: bypass} do
    account_id = "acct-123"
    queue_id = "q-456"

    Bypass.expect_once(
      bypass,
      "GET",
      "/accounts/#{account_id}/queues/#{queue_id}/consumers",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": [{"consumer_id": "c-1"}], "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"result" => [%{"consumer_id" => "c-1"}]}}} =
             Cloudflare.Queue.consumers(queue_id,
               client: client,
               params: [account_id: account_id]
             )
  end

  test "pushes a message to a queue", %{bypass: bypass} do
    account_id = "acct-123"
    queue_id = "q-456"
    body = %{"messages" => [%{"body" => "hello"}]}

    Bypass.expect_once(
      bypass,
      "POST",
      "/accounts/#{account_id}/queues/#{queue_id}/messages",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(200, ~s({"result": {}, "success": true, "errors": [], "messages": []}))
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"success" => true}}} =
             Cloudflare.Queue.push_message(queue_id, body,
               client: client,
               params: [account_id: account_id]
             )
  end
end
