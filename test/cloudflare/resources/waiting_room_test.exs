defmodule Cloudflare.WaitingRoomTest do
  use ExUnit.Case

  setup do
    bypass = Bypass.open()
    Application.put_env(:cloudflare, :base_url, "http://localhost:#{bypass.port}")
    %{bypass: bypass}
  end

  test "lists waiting rooms", %{bypass: bypass} do
    zone_id = "zone-123"

    Bypass.expect_once(bypass, "GET", "/zones/#{zone_id}/waiting_rooms", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": [{"id": "wr-1", "name": "checkout-queue", "host": "example.com"}], "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => [%{"id" => "wr-1"}]}}} =
             Cloudflare.WaitingRoom.index(client: client, params: [zone_id: zone_id])
  end

  test "creates a waiting room", %{bypass: bypass} do
    zone_id = "zone-123"

    body = %{
      "name" => "checkout-queue",
      "host" => "example.com",
      "path" => "/checkout",
      "new_users_per_minute" => 200,
      "total_active_users" => 300
    }

    Bypass.expect_once(bypass, "POST", "/zones/#{zone_id}/waiting_rooms", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": {"id": "wr-new", "name": "checkout-queue"}, "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => %{"id" => "wr-new"}}}} =
             Cloudflare.WaitingRoom.create(body, client: client, params: [zone_id: zone_id])
  end

  test "updates a waiting room", %{bypass: bypass} do
    zone_id = "zone-123"
    wr_id = "wr-456"
    body = %{"new_users_per_minute" => 500}

    Bypass.expect_once(bypass, "PUT", "/zones/#{zone_id}/waiting_rooms/#{wr_id}", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": {"id": "#{wr_id}", "new_users_per_minute": 500}, "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"success" => true}}} =
             Cloudflare.WaitingRoom.update(wr_id, body,
               client: client,
               params: [zone_id: zone_id]
             )
  end

  test "deletes a waiting room", %{bypass: bypass} do
    zone_id = "zone-123"
    wr_id = "wr-456"

    Bypass.expect_once(bypass, "DELETE", "/zones/#{zone_id}/waiting_rooms/#{wr_id}", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": {"id": "#{wr_id}"}, "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"success" => true}}} =
             Cloudflare.WaitingRoom.delete(wr_id, client: client, params: [zone_id: zone_id])
  end

  test "creates a preview page", %{bypass: bypass} do
    zone_id = "zone-123"
    body = %{"custom_html" => "<html>You are in queue</html>"}

    Bypass.expect_once(bypass, "POST", "/zones/#{zone_id}/waiting_rooms/preview", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": {"preview_url": "https://waitingrooms.dev/preview/abc123"}, "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok,
            %{
              status: 200,
              body: %{"result" => %{"preview_url" => "https://waitingrooms.dev/preview/abc123"}}
            }} =
             Cloudflare.WaitingRoom.preview(body, client: client, params: [zone_id: zone_id])
  end
end
