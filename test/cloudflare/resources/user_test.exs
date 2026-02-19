defmodule Cloudflare.UserTest do
  use ExUnit.Case

  setup do
    bypass = Bypass.open()
    Application.put_env(:cloudflare, :base_url, "http://localhost:#{bypass.port}")
    %{bypass: bypass}
  end

  test "shows current user", %{bypass: bypass} do
    Bypass.expect_once(bypass, "GET", "/user", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": {"id": "user-1", "email": "user@example.com"}, "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => %{"email" => "user@example.com"}}}} =
             Cloudflare.User.show(client: client)
  end

  test "updates current user", %{bypass: bypass} do
    body = %{"first_name" => "Test"}

    Bypass.expect_once(bypass, "PATCH", "/user", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": {"first_name": "Test"}, "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"success" => true}}} =
             Cloudflare.User.update(body, client: client)
  end
end
