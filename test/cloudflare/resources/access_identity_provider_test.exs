defmodule Cloudflare.AccessIdentityProviderTest do
  use ExUnit.Case

  setup do
    bypass = Bypass.open()
    Application.put_env(:cloudflare, :base_url, "http://localhost:#{bypass.port}")
    %{bypass: bypass}
  end

  test "lists identity providers", %{bypass: bypass} do
    account_id = "acct-123"

    Bypass.expect_once(
      bypass,
      "GET",
      "/accounts/#{account_id}/access/identity_providers",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": [{"id": "idp-1", "name": "Google"}], "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => [%{"id" => "idp-1"}]}}} =
             Cloudflare.AccessIdentityProvider.index(
               client: client,
               params: [account_id: account_id]
             )
  end

  test "creates an identity provider", %{bypass: bypass} do
    account_id = "acct-123"
    body = %{"name" => "Google Workspace", "type" => "google"}

    Bypass.expect_once(
      bypass,
      "POST",
      "/accounts/#{account_id}/access/identity_providers",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": {"id": "idp-new"}, "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => %{"id" => "idp-new"}}}} =
             Cloudflare.AccessIdentityProvider.create(body,
               client: client,
               params: [account_id: account_id]
             )
  end

  test "updates an identity provider", %{bypass: bypass} do
    account_id = "acct-123"
    idp_id = "idp-456"
    body = %{"name" => "Updated IdP"}

    Bypass.expect_once(
      bypass,
      "PUT",
      "/accounts/#{account_id}/access/identity_providers/#{idp_id}",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": {"id": "#{idp_id}"}, "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"success" => true}}} =
             Cloudflare.AccessIdentityProvider.update(idp_id, body,
               client: client,
               params: [account_id: account_id]
             )
  end

  test "deletes an identity provider", %{bypass: bypass} do
    account_id = "acct-123"
    idp_id = "idp-456"

    Bypass.expect_once(
      bypass,
      "DELETE",
      "/accounts/#{account_id}/access/identity_providers/#{idp_id}",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": {"id": "#{idp_id}"}, "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"success" => true}}} =
             Cloudflare.AccessIdentityProvider.delete(idp_id,
               client: client,
               params: [account_id: account_id]
             )
  end
end
