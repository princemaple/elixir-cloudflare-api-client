defmodule Cloudflare.WorkerAccountSettingsTest do
  use ExUnit.Case

  setup do
    bypass = Bypass.open()
    Application.put_env(:cloudflare, :base_url, "http://localhost:#{bypass.port}")
    %{bypass: bypass}
  end

  test "gets worker account settings", %{bypass: bypass} do
    account_id = "acct-123"

    Bypass.expect_once(
      bypass,
      "GET",
      "/accounts/#{account_id}/workers/account-settings",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": {"default_usage_model": "bundled", "green_compute": false}, "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => %{"default_usage_model" => "bundled"}}}} =
             Cloudflare.WorkerAccountSettings.get(
               client: client,
               params: [account_id: account_id]
             )
  end

  test "updates worker account settings", %{bypass: bypass} do
    account_id = "acct-123"
    body = %{"default_usage_model" => "unbound", "green_compute" => true}

    Bypass.expect_once(
      bypass,
      "PUT",
      "/accounts/#{account_id}/workers/account-settings",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": {"default_usage_model": "unbound", "green_compute": true}, "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => %{"default_usage_model" => "unbound"}}}} =
             Cloudflare.WorkerAccountSettings.update(body,
               client: client,
               params: [account_id: account_id]
             )
  end
end
