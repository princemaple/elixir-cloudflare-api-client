defmodule Cloudflare.TurnstileTest do
  use ExUnit.Case

  setup do
    bypass = Bypass.open()
    Application.put_env(:cloudflare, :base_url, "http://localhost:#{bypass.port}")
    %{bypass: bypass}
  end

  test "lists turnstile widgets", %{bypass: bypass} do
    account_id = "acct-123"

    Bypass.expect_once(bypass, "GET", "/accounts/#{account_id}/challenges/widgets", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": [{"sitekey": "key-1", "name": "My Widget"}], "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => [%{"sitekey" => "key-1"}]}}} =
             Cloudflare.Turnstile.index(client: client, params: [account_id: account_id])
  end

  test "creates a turnstile widget", %{bypass: bypass} do
    account_id = "acct-123"
    body = %{"name" => "My Widget", "domains" => ["example.com"], "mode" => "managed"}

    Bypass.expect_once(bypass, "POST", "/accounts/#{account_id}/challenges/widgets", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": {"sitekey": "key-new"}, "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => %{"sitekey" => "key-new"}}}} =
             Cloudflare.Turnstile.create(body, client: client, params: [account_id: account_id])
  end

  test "deletes a turnstile widget", %{bypass: bypass} do
    account_id = "acct-123"
    sitekey = "key-456"

    Bypass.expect_once(
      bypass,
      "DELETE",
      "/accounts/#{account_id}/challenges/widgets/#{sitekey}",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": {"sitekey": "#{sitekey}"}, "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"success" => true}}} =
             Cloudflare.Turnstile.delete(sitekey,
               client: client,
               params: [account_id: account_id]
             )
  end

  test "rotates secret for a turnstile widget", %{bypass: bypass} do
    account_id = "acct-123"
    sitekey = "key-456"

    Bypass.expect_once(
      bypass,
      "POST",
      "/accounts/#{account_id}/challenges/widgets/#{sitekey}/rotate_secret",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": {"sitekey": "#{sitekey}", "secret": "new-secret"}, "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"result" => %{"secret" => "new-secret"}}}} =
             Cloudflare.Turnstile.rotate_secret(sitekey, %{},
               client: client,
               params: [account_id: account_id]
             )
  end
end
