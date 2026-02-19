defmodule Cloudflare.RateLimitTest do
  use ExUnit.Case

  setup do
    bypass = Bypass.open()
    Application.put_env(:cloudflare, :base_url, "http://localhost:#{bypass.port}")
    %{bypass: bypass}
  end

  test "lists rate limits", %{bypass: bypass} do
    zone_id = "zone-123"

    Bypass.expect_once(bypass, "GET", "/zones/#{zone_id}/rate_limits", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": [{"id": "rl-1", "threshold": 100, "period": 60}], "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => [%{"id" => "rl-1"}]}}} =
             Cloudflare.RateLimit.index(client: client, params: [zone_id: zone_id])
  end

  test "creates a rate limit", %{bypass: bypass} do
    zone_id = "zone-123"

    body = %{
      "threshold" => 100,
      "period" => 60,
      "action" => %{"mode" => "ban", "timeout" => 86400},
      "match" => %{"request" => %{"url_pattern" => "*.example.com/path*"}}
    }

    Bypass.expect_once(bypass, "POST", "/zones/#{zone_id}/rate_limits", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": {"id": "rl-new", "threshold": 100}, "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => %{"id" => "rl-new"}}}} =
             Cloudflare.RateLimit.create(body, client: client, params: [zone_id: zone_id])
  end

  test "updates a rate limit", %{bypass: bypass} do
    zone_id = "zone-123"
    rl_id = "rl-456"
    body = %{"threshold" => 200, "period" => 60}

    Bypass.expect_once(bypass, "PUT", "/zones/#{zone_id}/rate_limits/#{rl_id}", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": {"id": "#{rl_id}", "threshold": 200}, "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"success" => true}}} =
             Cloudflare.RateLimit.update(rl_id, body, client: client, params: [zone_id: zone_id])
  end

  test "deletes a rate limit", %{bypass: bypass} do
    zone_id = "zone-123"
    rl_id = "rl-456"

    Bypass.expect_once(bypass, "DELETE", "/zones/#{zone_id}/rate_limits/#{rl_id}", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": {"id": "#{rl_id}"}, "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"success" => true}}} =
             Cloudflare.RateLimit.delete(rl_id, client: client, params: [zone_id: zone_id])
  end
end
