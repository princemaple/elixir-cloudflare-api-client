defmodule Cloudflare.WorkerDomainTest do
  use ExUnit.Case

  setup do
    bypass = Bypass.open()
    Application.put_env(:cloudflare, :base_url, "http://localhost:#{bypass.port}")
    %{bypass: bypass}
  end

  test "lists worker domains", %{bypass: bypass} do
    account_id = "acct-123"

    Bypass.expect_once(bypass, "GET", "/accounts/#{account_id}/workers/domains", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": [{"id": "dom-1", "hostname": "api.example.com", "service": "my-worker"}], "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => [%{"id" => "dom-1"}]}}} =
             Cloudflare.WorkerDomain.index(client: client, params: [account_id: account_id])
  end

  test "attaches a worker to a domain", %{bypass: bypass} do
    account_id = "acct-123"

    body = %{
      "environment" => "production",
      "hostname" => "api.example.com",
      "service" => "my-worker",
      "zone_id" => "zone-123"
    }

    Bypass.expect_once(bypass, "PUT", "/accounts/#{account_id}/workers/domains", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": {"id": "dom-new", "hostname": "api.example.com"}, "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => %{"id" => "dom-new"}}}} =
             Cloudflare.WorkerDomain.attach(body,
               client: client,
               params: [account_id: account_id]
             )
  end

  test "detaches a worker from a domain", %{bypass: bypass} do
    account_id = "acct-123"
    domain_id = "dom-456"

    Bypass.expect_once(
      bypass,
      "DELETE",
      "/accounts/#{account_id}/workers/domains/#{domain_id}",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(200, ~s({"result": {}, "success": true, "errors": [], "messages": []}))
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"success" => true}}} =
             Cloudflare.WorkerDomain.delete(domain_id,
               client: client,
               params: [account_id: account_id]
             )
  end
end
