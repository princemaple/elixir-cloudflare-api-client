defmodule Cloudflare.UserApiTokenTest do
  use ExUnit.Case

  setup do
    bypass = Bypass.open()
    Application.put_env(:cloudflare, :base_url, "http://localhost:#{bypass.port}")
    %{bypass: bypass}
  end

  test "lists user API tokens", %{bypass: bypass} do
    Bypass.expect_once(bypass, "GET", "/user/tokens", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": [{"id": "tok-1"}], "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => [%{"id" => "tok-1"}]}}} =
             Cloudflare.UserApiToken.index(client: client)
  end

  test "creates a user API token", %{bypass: bypass} do
    body = %{"name" => "Test Token", "policies" => []}

    Bypass.expect_once(bypass, "POST", "/user/tokens", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": {"id": "tok-new"}, "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => %{"id" => "tok-new"}}}} =
             Cloudflare.UserApiToken.create(body, client: client)
  end

  test "verifies a user API token", %{bypass: bypass} do
    Bypass.expect_once(bypass, "GET", "/user/tokens/verify", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": {"id": "tok-1", "status": "active"}, "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"result" => %{"status" => "active"}}}} =
             Cloudflare.UserApiToken.verify(client: client)
  end
end
