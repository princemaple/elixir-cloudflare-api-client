defmodule Cloudflare.WafPackageTest do
  use ExUnit.Case

  setup do
    bypass = Bypass.open()
    Application.put_env(:cloudflare, :base_url, "http://localhost:#{bypass.port}")
    %{bypass: bypass}
  end

  test "lists WAF packages", %{bypass: bypass} do
    zone_id = "zone-123"

    Bypass.expect_once(bypass, "GET", "/zones/#{zone_id}/firewall/waf/packages", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": [{"id": "pkg-1"}], "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => [%{"id" => "pkg-1"}]}}} =
             Cloudflare.WafPackage.index(client: client, params: [zone_id: zone_id])
  end

  test "shows a WAF package", %{bypass: bypass} do
    zone_id = "zone-123"
    pkg_id = "pkg-456"

    Bypass.expect_once(
      bypass,
      "GET",
      "/zones/#{zone_id}/firewall/waf/packages/#{pkg_id}",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": {"id": "#{pkg_id}"}, "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"result" => %{"id" => ^pkg_id}}}} =
             Cloudflare.WafPackage.show(pkg_id, client: client, params: [zone_id: zone_id])
  end
end
