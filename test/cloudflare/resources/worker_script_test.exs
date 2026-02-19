defmodule Cloudflare.WorkerScriptTest do
  use ExUnit.Case

  setup do
    bypass = Bypass.open()
    Application.put_env(:cloudflare, :base_url, "http://localhost:#{bypass.port}")
    %{bypass: bypass}
  end

  test "lists worker scripts", %{bypass: bypass} do
    account_id = "acct-123"

    Bypass.expect_once(bypass, "GET", "/accounts/#{account_id}/workers/scripts", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": [{"id": "script-1"}], "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => [%{"id" => "script-1"}]}}} =
             Cloudflare.WorkerScript.index(client: client, params: [account_id: account_id])
  end

  test "shows a worker script", %{bypass: bypass} do
    account_id = "acct-123"
    script_name = "my-script"

    Bypass.expect_once(
      bypass,
      "GET",
      "/accounts/#{account_id}/workers/scripts/#{script_name}",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": {"id": "#{script_name}"}, "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200}} =
             Cloudflare.WorkerScript.show(script_name,
               client: client,
               params: [account_id: account_id]
             )
  end

  test "deletes a worker script", %{bypass: bypass} do
    account_id = "acct-123"
    script_name = "my-script"

    Bypass.expect_once(
      bypass,
      "DELETE",
      "/accounts/#{account_id}/workers/scripts/#{script_name}",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": null, "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"success" => true}}} =
             Cloudflare.WorkerScript.delete(script_name,
               client: client,
               params: [account_id: account_id]
             )
  end
end
