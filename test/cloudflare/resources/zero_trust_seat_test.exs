defmodule Cloudflare.ZeroTrustSeatTest do
  use ExUnit.Case

  setup do
    bypass = Bypass.open()
    Application.put_env(:cloudflare, :base_url, "http://localhost:#{bypass.port}")
    %{bypass: bypass}
  end

  test "updates seats", %{bypass: bypass} do
    account_id = "acct-123"
    body = [%{"seat_uid" => "user-1", "access_seat" => false, "gateway_seat" => false}]

    Bypass.expect_once(bypass, "PATCH", "/accounts/#{account_id}/access/seats", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": [{"seat_uid": "user-1", "access_seat": false, "gateway_seat": false}], "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => [%{"seat_uid" => "user-1"}]}}} =
             Cloudflare.ZeroTrustSeat.update(body,
               client: client,
               params: [account_id: account_id]
             )
  end
end
