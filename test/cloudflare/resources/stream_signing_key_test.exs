defmodule Cloudflare.StreamSigningKeyTest do
  use ExUnit.Case

  setup do
    bypass = Bypass.open()
    Application.put_env(:cloudflare, :base_url, "http://localhost:#{bypass.port}")
    %{bypass: bypass}
  end

  test "lists signing keys", %{bypass: bypass} do
    account_id = "acct-123"

    Bypass.expect_once(bypass, "GET", "/accounts/#{account_id}/stream/keys", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": [{"id": "key-1", "created": "2021-01-01T00:00:00Z"}], "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => [%{"id" => "key-1"}]}}} =
             Cloudflare.StreamSigningKey.index(client: client, params: [account_id: account_id])
  end

  test "creates a signing key", %{bypass: bypass} do
    account_id = "acct-123"

    Bypass.expect_once(bypass, "POST", "/accounts/#{account_id}/stream/keys", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": {"id": "key-new", "pem": "-----BEGIN RSA PRIVATE KEY-----...", "jwk": "{...}", "created": "2024-01-01T00:00:00Z"}, "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => %{"id" => "key-new"}}}} =
             Cloudflare.StreamSigningKey.create(%{},
               client: client,
               params: [account_id: account_id]
             )
  end

  test "deletes a signing key", %{bypass: bypass} do
    account_id = "acct-123"
    key_id = "key-456"

    Bypass.expect_once(
      bypass,
      "DELETE",
      "/accounts/#{account_id}/stream/keys/#{key_id}",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": "deleted", "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"success" => true}}} =
             Cloudflare.StreamSigningKey.delete(key_id,
               client: client,
               params: [account_id: account_id]
             )
  end
end
