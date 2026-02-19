defmodule Cloudflare.ZeroTrustGatewayPacFileTest do
  use ExUnit.Case

  setup do
    bypass = Bypass.open()
    Application.put_env(:cloudflare, :base_url, "http://localhost:#{bypass.port}")
    %{bypass: bypass}
  end

  test "lists PAC files", %{bypass: bypass} do
    account_id = "acct-123"

    Bypass.expect_once(bypass, "GET", "/accounts/#{account_id}/gateway/pacfiles", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": [{"id": "pac-1", "name": "my-pac"}], "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => [%{"id" => "pac-1"}]}}} =
             Cloudflare.ZeroTrustGatewayPacFile.index(
               client: client,
               params: [account_id: account_id]
             )
  end

  test "creates a PAC file", %{bypass: bypass} do
    account_id = "acct-123"

    body = %{
      "name" => "my-pac",
      "contents" => "function FindProxyForURL(url, host) { return \"DIRECT\"; }"
    }

    Bypass.expect_once(bypass, "POST", "/accounts/#{account_id}/gateway/pacfiles", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": {"id": "pac-new", "name": "my-pac"}, "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => %{"id" => "pac-new"}}}} =
             Cloudflare.ZeroTrustGatewayPacFile.create(body,
               client: client,
               params: [account_id: account_id]
             )
  end

  test "deletes a PAC file", %{bypass: bypass} do
    account_id = "acct-123"
    pac_id = "pac-1"

    Bypass.expect_once(
      bypass,
      "DELETE",
      "/accounts/#{account_id}/gateway/pacfiles/#{pac_id}",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(200, ~s({"result": {}, "success": true, "errors": [], "messages": []}))
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, _} =
             Cloudflare.ZeroTrustGatewayPacFile.delete(pac_id,
               client: client,
               params: [account_id: account_id]
             )
  end
end
