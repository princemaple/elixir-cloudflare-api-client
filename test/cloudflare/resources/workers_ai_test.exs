defmodule Cloudflare.WorkersAITest do
  use ExUnit.Case

  setup do
    bypass = Bypass.open()
    Application.put_env(:cloudflare, :base_url, "http://localhost:#{bypass.port}")
    %{bypass: bypass}
  end

  test "searches available models", %{bypass: bypass} do
    account_id = "acct-123"

    Bypass.expect_once(bypass, "GET", "/accounts/#{account_id}/ai/models/search", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": [{"name": "@cf/meta/llama-3.1-8b-instruct"}], "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => [%{"name" => "@cf/meta/llama-3.1-8b-instruct"}]}}} =
             Cloudflare.WorkersAI.models(client: client, params: [account_id: account_id])
  end

  test "runs an AI model", %{bypass: bypass} do
    account_id = "acct-123"
    model = "@cf/meta/llama-3.1-8b-instruct"
    body = %{"messages" => [%{"role" => "user", "content" => "Hello!"}]}

    Bypass.expect_once(
      bypass,
      "POST",
      "/accounts/#{account_id}/ai/run/#{URI.encode(model)}",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": {"response": "Hi there!"}, "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"result" => %{"response" => "Hi there!"}}}} =
             Cloudflare.WorkersAI.run(model, body,
               client: client,
               params: [account_id: account_id]
             )
  end

  test "searches available tasks", %{bypass: bypass} do
    account_id = "acct-123"

    Bypass.expect_once(bypass, "GET", "/accounts/#{account_id}/ai/tasks/search", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": [{"id": "text-generation"}], "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => [%{"id" => "text-generation"}]}}} =
             Cloudflare.WorkersAI.tasks(client: client, params: [account_id: account_id])
  end
end
