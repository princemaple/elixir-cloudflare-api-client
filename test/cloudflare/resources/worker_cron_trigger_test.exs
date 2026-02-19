defmodule Cloudflare.WorkerCronTriggerTest do
  use ExUnit.Case

  setup do
    bypass = Bypass.open()
    Application.put_env(:cloudflare, :base_url, "http://localhost:#{bypass.port}")
    %{bypass: bypass}
  end

  test "gets cron triggers for a worker", %{bypass: bypass} do
    account_id = "acct-123"
    script_name = "my-worker"

    Bypass.expect_once(
      bypass,
      "GET",
      "/accounts/#{account_id}/workers/scripts/#{script_name}/schedules",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": {"schedules": [{"cron": "*/5 * * * *"}]}, "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => %{"schedules" => [_]}}}} =
             Cloudflare.WorkerCronTrigger.get(script_name,
               client: client,
               params: [account_id: account_id]
             )
  end

  test "updates cron triggers for a worker", %{bypass: bypass} do
    account_id = "acct-123"
    script_name = "my-worker"
    body = [%{"cron" => "0 0 * * *"}]

    Bypass.expect_once(
      bypass,
      "PUT",
      "/accounts/#{account_id}/workers/scripts/#{script_name}/schedules",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": {"schedules": [{"cron": "0 0 * * *"}]}, "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"success" => true}}} =
             Cloudflare.WorkerCronTrigger.update(script_name, body,
               client: client,
               params: [account_id: account_id]
             )
  end
end
