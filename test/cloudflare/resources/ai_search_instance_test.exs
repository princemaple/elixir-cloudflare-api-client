defmodule Cloudflare.AISearchInstanceTest do
  use ExUnit.Case

  setup do
    bypass = Bypass.open()
    Application.put_env(:cloudflare, :base_url, "http://localhost:#{bypass.port}")
    %{bypass: bypass}
  end

  test "lists AI search instances", %{bypass: bypass} do
    account_id = "acct-123"

    Bypass.expect_once(bypass, "GET", "/accounts/#{account_id}/ai-search/instances", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": [{"id": "inst-1", "type": "r2"}], "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => [%{"id" => "inst-1"}]}}} =
             Cloudflare.AISearchInstance.index(client: client, params: [account_id: account_id])
  end

  test "creates an AI search instance", %{bypass: bypass} do
    account_id = "acct-123"
    body = %{"type" => "r2", "source" => "r2://my-bucket"}

    Bypass.expect_once(bypass, "POST", "/accounts/#{account_id}/ai-search/instances", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        201,
        ~s({"result": {"id": "inst-new"}, "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => %{"id" => "inst-new"}}}} =
             Cloudflare.AISearchInstance.create(body,
               client: client,
               params: [account_id: account_id]
             )
  end

  test "fetches stats for an instance", %{bypass: bypass} do
    account_id = "acct-123"
    instance_id = "inst-456"

    Bypass.expect_once(
      bypass,
      "GET",
      "/accounts/#{account_id}/ai-search/instances/#{instance_id}/stats",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": {"completed": 10}, "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => %{"completed" => 10}}}} =
             Cloudflare.AISearchInstance.stats(instance_id,
               client: client,
               params: [account_id: account_id]
             )
  end
end
