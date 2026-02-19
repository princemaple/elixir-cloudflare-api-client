defmodule Cloudflare.HyperdriveTest do
  use ExUnit.Case

  setup do
    bypass = Bypass.open()
    Application.put_env(:cloudflare, :base_url, "http://localhost:#{bypass.port}")
    %{bypass: bypass}
  end

  test "lists Hyperdrive configs", %{bypass: bypass} do
    account_id = "acct-123"

    Bypass.expect_once(bypass, "GET", "/accounts/#{account_id}/hyperdrive/configs", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": [{"id": "hd-1", "name": "my-hyperdrive"}], "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => [%{"id" => "hd-1"}]}}} =
             Cloudflare.Hyperdrive.index(client: client, params: [account_id: account_id])
  end

  test "creates a Hyperdrive config", %{bypass: bypass} do
    account_id = "acct-123"

    body = %{
      "name" => "my-hyperdrive",
      "origin" => %{"database" => "mydb", "host" => "db.example.com"}
    }

    Bypass.expect_once(bypass, "POST", "/accounts/#{account_id}/hyperdrive/configs", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": {"id": "hd-new"}, "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => %{"id" => "hd-new"}}}} =
             Cloudflare.Hyperdrive.create(body, client: client, params: [account_id: account_id])
  end

  test "updates a Hyperdrive config (PUT)", %{bypass: bypass} do
    account_id = "acct-123"
    hd_id = "hd-456"
    body = %{"name" => "renamed-hyperdrive"}

    Bypass.expect_once(
      bypass,
      "PUT",
      "/accounts/#{account_id}/hyperdrive/configs/#{hd_id}",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": {"id": "#{hd_id}"}, "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"success" => true}}} =
             Cloudflare.Hyperdrive.update(hd_id, body,
               client: client,
               params: [account_id: account_id]
             )
  end

  test "deletes a Hyperdrive config", %{bypass: bypass} do
    account_id = "acct-123"
    hd_id = "hd-456"

    Bypass.expect_once(
      bypass,
      "DELETE",
      "/accounts/#{account_id}/hyperdrive/configs/#{hd_id}",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(200, ~s({"result": {}, "success": true, "errors": [], "messages": []}))
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"success" => true}}} =
             Cloudflare.Hyperdrive.delete(hd_id, client: client, params: [account_id: account_id])
  end
end
