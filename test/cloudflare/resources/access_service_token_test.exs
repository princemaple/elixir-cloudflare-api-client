defmodule Cloudflare.AccessServiceTokenTest do
  use ExUnit.Case

  setup do
    bypass = Bypass.open()
    Application.put_env(:cloudflare, :base_url, "http://localhost:#{bypass.port}")
    %{bypass: bypass}
  end

  test "lists service tokens", %{bypass: bypass} do
    account_id = "acct-123"

    Bypass.expect_once(bypass, "GET", "/accounts/#{account_id}/access/service_tokens", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": [{"id": "tok-1", "name": "My Token"}], "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => [%{"id" => "tok-1"}]}}} =
             Cloudflare.AccessServiceToken.index(client: client, params: [account_id: account_id])
  end

  test "creates a service token", %{bypass: bypass} do
    account_id = "acct-123"
    body = %{"name" => "My New Token", "duration" => "8760h"}

    Bypass.expect_once(bypass, "POST", "/accounts/#{account_id}/access/service_tokens", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": {"id": "tok-new", "client_secret": "secret-xyz"}, "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => %{"client_secret" => "secret-xyz"}}}} =
             Cloudflare.AccessServiceToken.create(body,
               client: client,
               params: [account_id: account_id]
             )
  end

  test "deletes a service token", %{bypass: bypass} do
    account_id = "acct-123"
    token_id = "tok-456"

    Bypass.expect_once(
      bypass,
      "DELETE",
      "/accounts/#{account_id}/access/service_tokens/#{token_id}",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": {"id": "#{token_id}"}, "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"success" => true}}} =
             Cloudflare.AccessServiceToken.delete(token_id,
               client: client,
               params: [account_id: account_id]
             )
  end

  test "refreshes a service token", %{bypass: bypass} do
    account_id = "acct-123"
    token_id = "tok-456"

    Bypass.expect_once(
      bypass,
      "POST",
      "/accounts/#{account_id}/access/service_tokens/#{token_id}/refresh",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": {"id": "#{token_id}", "expires_at": "2027-01-01T00:00:00Z"}, "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"result" => %{"expires_at" => "2027-01-01T00:00:00Z"}}}} =
             Cloudflare.AccessServiceToken.refresh(token_id,
               client: client,
               params: [account_id: account_id]
             )
  end

  test "rotates a service token secret", %{bypass: bypass} do
    account_id = "acct-123"
    token_id = "tok-456"

    Bypass.expect_once(
      bypass,
      "POST",
      "/accounts/#{account_id}/access/service_tokens/#{token_id}/rotate",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": {"id": "#{token_id}", "client_secret": "new-secret"}, "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"result" => %{"client_secret" => "new-secret"}}}} =
             Cloudflare.AccessServiceToken.rotate(token_id,
               client: client,
               params: [account_id: account_id]
             )
  end
end
