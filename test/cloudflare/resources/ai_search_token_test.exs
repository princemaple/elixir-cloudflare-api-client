defmodule Cloudflare.AISearchTokenTest do
  use ExUnit.Case

  setup do
    bypass = Bypass.open()
    Application.put_env(:cloudflare, :base_url, "http://localhost:#{bypass.port}")
    %{bypass: bypass}
  end

  test "lists AI search tokens", %{bypass: bypass} do
    account_id = "acct-123"

    Bypass.expect_once(bypass, "GET", "/accounts/#{account_id}/ai-search/tokens", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": [{"id": "tok-1", "name": "My Token"}], "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => [%{"id" => "tok-1"}]}}} =
             Cloudflare.AISearchToken.index(client: client, params: [account_id: account_id])
  end

  test "creates an AI search token", %{bypass: bypass} do
    account_id = "acct-123"
    body = %{"name" => "My Token"}

    Bypass.expect_once(bypass, "POST", "/accounts/#{account_id}/ai-search/tokens", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        201,
        ~s({"result": {"id": "tok-new"}, "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => %{"id" => "tok-new"}}}} =
             Cloudflare.AISearchToken.create(body,
               client: client,
               params: [account_id: account_id]
             )
  end

  test "deletes an AI search token", %{bypass: bypass} do
    account_id = "acct-123"
    token_id = "tok-456"

    Bypass.expect_once(
      bypass,
      "DELETE",
      "/accounts/#{account_id}/ai-search/tokens/#{token_id}",
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

    assert {:ok, %{status: 200}} =
             Cloudflare.AISearchToken.delete(token_id,
               client: client,
               params: [account_id: account_id]
             )
  end
end
