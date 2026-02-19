defmodule Cloudflare.WorkerPipelineTest do
  use ExUnit.Case

  setup do
    bypass = Bypass.open()
    Application.put_env(:cloudflare, :base_url, "http://localhost:#{bypass.port}")
    %{bypass: bypass}
  end

  test "lists pipelines", %{bypass: bypass} do
    account_id = "acct-123"

    Bypass.expect_once(bypass, "GET", "/accounts/#{account_id}/pipelines/v1/pipelines", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": [{"id": "pipe-1", "name": "my-pipeline"}], "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => [%{"id" => "pipe-1"}]}}} =
             Cloudflare.WorkerPipeline.index(client: client, params: [account_id: account_id])
  end

  test "creates a pipeline", %{bypass: bypass} do
    account_id = "acct-123"
    body = %{"name" => "my-pipeline"}

    Bypass.expect_once(
      bypass,
      "POST",
      "/accounts/#{account_id}/pipelines/v1/pipelines",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": {"id": "pipe-new"}, "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => %{"id" => "pipe-new"}}}} =
             Cloudflare.WorkerPipeline.create(body,
               client: client,
               params: [account_id: account_id]
             )
  end

  test "shows a pipeline", %{bypass: bypass} do
    account_id = "acct-123"
    pipeline_id = "pipe-456"

    Bypass.expect_once(
      bypass,
      "GET",
      "/accounts/#{account_id}/pipelines/v1/pipelines/#{pipeline_id}",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": {"id": "#{pipeline_id}"}, "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => %{"id" => ^pipeline_id}}}} =
             Cloudflare.WorkerPipeline.show(pipeline_id,
               client: client,
               params: [account_id: account_id]
             )
  end

  test "deletes a pipeline", %{bypass: bypass} do
    account_id = "acct-123"
    pipeline_id = "pipe-456"

    Bypass.expect_once(
      bypass,
      "DELETE",
      "/accounts/#{account_id}/pipelines/v1/pipelines/#{pipeline_id}",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(200, ~s({"result": {}, "success": true, "errors": [], "messages": []}))
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200}} =
             Cloudflare.WorkerPipeline.delete(pipeline_id,
               client: client,
               params: [account_id: account_id]
             )
  end
end
