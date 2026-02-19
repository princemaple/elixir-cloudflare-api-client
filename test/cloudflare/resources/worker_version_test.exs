defmodule Cloudflare.WorkerVersionTest do
  use ExUnit.Case

  setup do
    bypass = Bypass.open()
    Application.put_env(:cloudflare, :base_url, "http://localhost:#{bypass.port}")
    %{bypass: bypass}
  end

  test "lists worker versions", %{bypass: bypass} do
    account_id = "acct-123"
    script_name = "my-worker"

    Bypass.expect_once(
      bypass,
      "GET",
      "/accounts/#{account_id}/workers/scripts/#{script_name}/versions",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": [{"id": "v-1"}], "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => [%{"id" => "v-1"}]}}} =
             Cloudflare.WorkerVersion.index(
               client: client,
               params: [account_id: account_id, script_name: script_name]
             )
  end

  test "shows a specific version", %{bypass: bypass} do
    account_id = "acct-123"
    script_name = "my-worker"
    version_id = "v-456"

    Bypass.expect_once(
      bypass,
      "GET",
      "/accounts/#{account_id}/workers/scripts/#{script_name}/versions/#{version_id}",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": {"id": "v-456"}, "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => %{"id" => "v-456"}}}} =
             Cloudflare.WorkerVersion.show(version_id,
               client: client,
               params: [account_id: account_id, script_name: script_name]
             )
  end
end
