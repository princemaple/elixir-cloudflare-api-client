defmodule Cloudflare.ClientTest do
  use ExUnit.Case

  setup do
    bypass = Bypass.open()

    module =
      Module.concat(__MODULE__, "BypassTestClient#{System.unique_integer([:positive])}")

    {:module, module, _, _} =
      Module.create(
        module,
        quote do
          use Restlax.Client, base_url: unquote("http://localhost:#{bypass.port}")

          def req(request), do: Cloudflare.Client.req(request)
        end,
        Macro.Env.location(__ENV__)
      )

    %{bypass: bypass, client: module}
  end

  test "uses bearer auth token from request headers", %{bypass: bypass, client: client} do
    Bypass.expect_once(bypass, fn conn ->
      assert [auth] = Plug.Conn.get_req_header(conn, "authorization")
      assert auth == "Bearer token-from-opts"
      Plug.Conn.resp(conn, 200, ~s({"ok":true}))
    end)

    assert {:ok, %{status: 200}} =
             client.get("/token", headers: [{"authorization", "Bearer token-from-opts"}])
  end

  test "uses email/key auth from request headers", %{bypass: bypass, client: client} do
    Bypass.expect_once(bypass, fn conn ->
      assert Plug.Conn.get_req_header(conn, "x-auth-email") == ["e@example.com"]
      assert Plug.Conn.get_req_header(conn, "x-auth-key") == ["key-123"]
      Plug.Conn.resp(conn, 200, ~s({"ok":true}))
    end)

    assert {:ok, %{status: 200}} =
             client.get("/key",
               headers: [{"x-auth-email", "e@example.com"}, {"x-auth-key", "key-123"}]
             )
  end

  test "falls back to application auth config when request options are absent", %{
    bypass: bypass,
    client: client
  } do
    original_auth_token = Application.get_env(:cloudflare, :auth_token)
    Application.put_env(:cloudflare, :auth_token, "token-from-config")

    on_exit(fn ->
      if is_nil(original_auth_token) do
        Application.delete_env(:cloudflare, :auth_token)
      else
        Application.put_env(:cloudflare, :auth_token, original_auth_token)
      end
    end)

    Bypass.expect_once(bypass, fn conn ->
      assert Plug.Conn.get_req_header(conn, "authorization") == ["Bearer token-from-config"]
      Plug.Conn.resp(conn, 200, ~s({"ok":true}))
    end)

    assert {:ok, %{status: 200}} = client.get("/config")
  end
end
