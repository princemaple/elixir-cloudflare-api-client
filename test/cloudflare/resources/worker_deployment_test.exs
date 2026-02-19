defmodule Cloudflare.WorkerDeploymentTest do
  use ExUnit.Case

  setup do
    bypass = Bypass.open()
    Application.put_env(:cloudflare, :base_url, "http://localhost:#{bypass.port}")
    %{bypass: bypass}
  end

  test "lists deployments for a script", %{bypass: bypass} do
    account_id = "acct-123"
    script_name = "my-worker"

    Bypass.expect_once(
      bypass,
      "GET",
      "/accounts/#{account_id}/workers/scripts/#{script_name}/deployments",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": [{"id": "deploy-1"}], "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => [%{"id" => "deploy-1"}]}}} =
             Cloudflare.WorkerDeployment.index(
               client: client,
               params: [account_id: account_id, script_name: script_name]
             )
  end

  test "creates a deployment", %{bypass: bypass} do
    account_id = "acct-123"
    script_name = "my-worker"
    body = %{"strategy" => %{"kind" => "percentage"}}

    Bypass.expect_once(
      bypass,
      "POST",
      "/accounts/#{account_id}/workers/scripts/#{script_name}/deployments",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": {"id": "deploy-new"}, "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => %{"id" => "deploy-new"}}}} =
             Cloudflare.WorkerDeployment.create(body,
               client: client,
               params: [account_id: account_id, script_name: script_name]
             )
  end
end
