defmodule Cloudflare.WorkerEnvironmentTest do
  use ExUnit.Case

  setup do
    bypass = Bypass.open()
    Application.put_env(:cloudflare, :base_url, "http://localhost:#{bypass.port}")
    %{bypass: bypass}
  end

  test "puts content for an environment", %{bypass: bypass} do
    account_id = "acct-123"
    service_name = "my-service"
    env_name = "production"

    Bypass.expect_once(
      bypass,
      "PUT",
      "/accounts/#{account_id}/workers/services/#{service_name}/environments/#{env_name}/content",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": {"etag": "abc"}, "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200}} =
             Cloudflare.WorkerEnvironment.put_content(
               %{},
               client: client,
               params: [
                 account_id: account_id,
                 service_name: service_name,
                 environment_name: env_name
               ]
             )
  end

  test "gets settings for an environment", %{bypass: bypass} do
    account_id = "acct-123"
    service_name = "my-service"
    env_name = "production"

    Bypass.expect_once(
      bypass,
      "GET",
      "/accounts/#{account_id}/workers/services/#{service_name}/environments/#{env_name}/settings",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": {"bindings": []}, "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200}} =
             Cloudflare.WorkerEnvironment.get_settings(
               client: client,
               params: [
                 account_id: account_id,
                 service_name: service_name,
                 environment_name: env_name
               ]
             )
  end
end
