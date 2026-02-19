defmodule Cloudflare.WorkerSubdomainTest do
  use ExUnit.Case

  setup do
    bypass = Bypass.open()
    Application.put_env(:cloudflare, :base_url, "http://localhost:#{bypass.port}")
    %{bypass: bypass}
  end

  test "gets the worker subdomain", %{bypass: bypass} do
    account_id = "acct-123"

    Bypass.expect_once(bypass, "GET", "/accounts/#{account_id}/workers/subdomain", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": {"name": "my-subdomain"}, "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => %{"name" => "my-subdomain"}}}} =
             Cloudflare.WorkerSubdomain.get(client: client, params: [account_id: account_id])
  end

  test "creates the worker subdomain", %{bypass: bypass} do
    account_id = "acct-123"
    body = %{"name" => "new-subdomain"}

    Bypass.expect_once(bypass, "PUT", "/accounts/#{account_id}/workers/subdomain", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": {"name": "new-subdomain"}, "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => %{"name" => "new-subdomain"}}}} =
             Cloudflare.WorkerSubdomain.create(body,
               client: client,
               params: [account_id: account_id]
             )
  end

  test "deletes the worker subdomain", %{bypass: bypass} do
    account_id = "acct-123"

    Bypass.expect_once(bypass, "DELETE", "/accounts/#{account_id}/workers/subdomain", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(200, ~s({"result": {}, "success": true, "errors": [], "messages": []}))
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200}} =
             Cloudflare.WorkerSubdomain.delete(client: client, params: [account_id: account_id])
  end
end
