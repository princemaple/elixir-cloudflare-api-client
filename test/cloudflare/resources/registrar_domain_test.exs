defmodule Cloudflare.RegistrarDomainTest do
  use ExUnit.Case

  setup do
    bypass = Bypass.open()
    Application.put_env(:cloudflare, :base_url, "http://localhost:#{bypass.port}")
    %{bypass: bypass}
  end

  test "lists registrar domains", %{bypass: bypass} do
    account_id = "acct-123"

    Bypass.expect_once(bypass, "GET", "/accounts/#{account_id}/registrar/domains", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": [{"id": "example.com", "current_registrar": "Cloudflare"}], "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => [%{"id" => "example.com"}]}}} =
             Cloudflare.RegistrarDomain.index(client: client, params: [account_id: account_id])
  end

  test "gets a registrar domain", %{bypass: bypass} do
    account_id = "acct-123"
    domain_name = "example.com"

    Bypass.expect_once(
      bypass,
      "GET",
      "/accounts/#{account_id}/registrar/domains/#{domain_name}",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": {"id": "example.com", "locked": false}, "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => %{"id" => "example.com"}}}} =
             Cloudflare.RegistrarDomain.show(domain_name,
               client: client,
               params: [account_id: account_id]
             )
  end

  test "updates a registrar domain", %{bypass: bypass} do
    account_id = "acct-123"
    domain_name = "example.com"
    body = %{"auto_renew" => true}

    Bypass.expect_once(
      bypass,
      "PUT",
      "/accounts/#{account_id}/registrar/domains/#{domain_name}",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(200, ~s({"result": {}, "success": true, "errors": [], "messages": []}))
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"success" => true}}} =
             Cloudflare.RegistrarDomain.update(domain_name, body,
               client: client,
               params: [account_id: account_id]
             )
  end
end
