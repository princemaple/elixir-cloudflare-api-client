defmodule Cloudflare.AccountMemberTest do
  use ExUnit.Case

  setup do
    bypass = Bypass.open()
    Application.put_env(:cloudflare, :base_url, "http://localhost:#{bypass.port}")
    %{bypass: bypass}
  end

  test "lists account members", %{bypass: bypass} do
    account_id = "acct-123"

    Bypass.expect_once(bypass, "GET", "/accounts/#{account_id}/members", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": [{"id": "mem-1"}], "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => [%{"id" => "mem-1"}]}}} =
             Cloudflare.AccountMember.index(client: client, params: [account_id: account_id])
  end

  test "creates an account member", %{bypass: bypass} do
    account_id = "acct-123"
    body = %{"email" => "user@example.com", "roles" => ["admin"]}

    Bypass.expect_once(bypass, "POST", "/accounts/#{account_id}/members", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": {"id": "mem-new"}, "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"success" => true}}} =
             Cloudflare.AccountMember.create(body,
               client: client,
               params: [account_id: account_id]
             )
  end

  test "deletes an account member", %{bypass: bypass} do
    account_id = "acct-123"
    member_id = "mem-456"

    Bypass.expect_once(
      bypass,
      "DELETE",
      "/accounts/#{account_id}/members/#{member_id}",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": {"id": "#{member_id}"}, "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"success" => true}}} =
             Cloudflare.AccountMember.delete(member_id,
               client: client,
               params: [account_id: account_id]
             )
  end
end
