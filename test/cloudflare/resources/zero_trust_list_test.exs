defmodule Cloudflare.ZeroTrustListTest do
  use ExUnit.Case

  setup do
    bypass = Bypass.open()
    Application.put_env(:cloudflare, :base_url, "http://localhost:#{bypass.port}")
    %{bypass: bypass}
  end

  test "lists zero trust lists", %{bypass: bypass} do
    account_id = "acct-123"

    Bypass.expect_once(bypass, "GET", "/accounts/#{account_id}/gateway/lists", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": [{"id": "list-1", "name": "domains"}], "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => [%{"id" => "list-1"}]}}} =
             Cloudflare.ZeroTrustList.index(client: client, params: [account_id: account_id])
  end

  test "creates a zero trust list", %{bypass: bypass} do
    account_id = "acct-123"
    body = %{"name" => "blocked-domains", "type" => "DOMAIN"}

    Bypass.expect_once(bypass, "POST", "/accounts/#{account_id}/gateway/lists", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": {"id": "list-new", "name": "blocked-domains"}, "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => %{"id" => "list-new"}}}} =
             Cloudflare.ZeroTrustList.create(body,
               client: client,
               params: [account_id: account_id]
             )
  end

  test "gets list items", %{bypass: bypass} do
    account_id = "acct-123"
    list_id = "list-1"

    Bypass.expect_once(
      bypass,
      "GET",
      "/accounts/#{account_id}/gateway/lists/#{list_id}/items",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": [{"value": "evil.com"}], "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => [%{"value" => "evil.com"}]}}} =
             Cloudflare.ZeroTrustList.items(list_id,
               client: client,
               params: [account_id: account_id]
             )
  end
end
