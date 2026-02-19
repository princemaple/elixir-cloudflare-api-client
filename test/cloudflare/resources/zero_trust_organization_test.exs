defmodule Cloudflare.ZeroTrustOrganizationTest do
  use ExUnit.Case

  setup do
    bypass = Bypass.open()
    Application.put_env(:cloudflare, :base_url, "http://localhost:#{bypass.port}")
    %{bypass: bypass}
  end

  test "gets the ZT organization", %{bypass: bypass} do
    account_id = "acct-123"

    Bypass.expect_once(bypass, "GET", "/accounts/#{account_id}/access/organizations", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": {"auth_domain": "example.cloudflareaccess.com", "name": "My Org"}, "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => %{"auth_domain" => "example.cloudflareaccess.com"}}}} =
             Cloudflare.ZeroTrustOrganization.get(
               client: client,
               params: [account_id: account_id]
             )
  end

  test "creates the ZT organization", %{bypass: bypass} do
    account_id = "acct-123"
    body = %{"auth_domain" => "example.cloudflareaccess.com", "name" => "My Org"}

    Bypass.expect_once(bypass, "POST", "/accounts/#{account_id}/access/organizations", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        201,
        ~s({"result": {"auth_domain": "example.cloudflareaccess.com"}, "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => %{"auth_domain" => "example.cloudflareaccess.com"}}}} =
             Cloudflare.ZeroTrustOrganization.create(body,
               client: client,
               params: [account_id: account_id]
             )
  end

  test "updates the ZT organization", %{bypass: bypass} do
    account_id = "acct-123"
    body = %{"name" => "Updated Org"}

    Bypass.expect_once(bypass, "PUT", "/accounts/#{account_id}/access/organizations", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": {"name": "Updated Org"}, "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"result" => %{"name" => "Updated Org"}}}} =
             Cloudflare.ZeroTrustOrganization.update(body,
               client: client,
               params: [account_id: account_id]
             )
  end

  test "revokes all access tokens for a user", %{bypass: bypass} do
    account_id = "acct-123"
    body = %{"email" => "user@example.com"}

    Bypass.expect_once(
      bypass,
      "POST",
      "/accounts/#{account_id}/access/organizations/revoke_user",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": true, "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"result" => true}}} =
             Cloudflare.ZeroTrustOrganization.revoke_user(body,
               client: client,
               params: [account_id: account_id]
             )
  end
end
