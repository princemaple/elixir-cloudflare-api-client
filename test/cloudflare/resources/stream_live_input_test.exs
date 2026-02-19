defmodule Cloudflare.StreamLiveInputTest do
  use ExUnit.Case

  setup do
    bypass = Bypass.open()
    Application.put_env(:cloudflare, :base_url, "http://localhost:#{bypass.port}")
    %{bypass: bypass}
  end

  test "lists live inputs", %{bypass: bypass} do
    account_id = "acct-123"

    Bypass.expect_once(bypass, "GET", "/accounts/#{account_id}/stream/live_inputs", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": {"liveInputs": [{"uid": "li-1"}], "total": 1}, "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => %{"liveInputs" => [_]}}}} =
             Cloudflare.StreamLiveInput.index(client: client, params: [account_id: account_id])
  end

  test "creates a live input", %{bypass: bypass} do
    account_id = "acct-123"
    body = %{"meta" => %{"name" => "My Live Stream"}, "recording" => %{"mode" => "automatic"}}

    Bypass.expect_once(bypass, "POST", "/accounts/#{account_id}/stream/live_inputs", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": {"uid": "li-new", "rtmps": {"url": "rtmps://live.cloudflare.com:443/live/"}}, "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => %{"uid" => "li-new"}}}} =
             Cloudflare.StreamLiveInput.create(body,
               client: client,
               params: [account_id: account_id]
             )
  end

  test "deletes a live input", %{bypass: bypass} do
    account_id = "acct-123"
    li_id = "li-456"

    Bypass.expect_once(
      bypass,
      "DELETE",
      "/accounts/#{account_id}/stream/live_inputs/#{li_id}",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(200, ~s({"result": {}, "success": true, "errors": [], "messages": []}))
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"success" => true}}} =
             Cloudflare.StreamLiveInput.delete(li_id,
               client: client,
               params: [account_id: account_id]
             )
  end

  test "disables a live input", %{bypass: bypass} do
    account_id = "acct-123"
    li_id = "li-456"

    Bypass.expect_once(
      bypass,
      "POST",
      "/accounts/#{account_id}/stream/live_inputs/#{li_id}/disable",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": {"uid": "#{li_id}", "enabled": false}, "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"result" => %{"enabled" => false}}}} =
             Cloudflare.StreamLiveInput.disable(li_id,
               client: client,
               params: [account_id: account_id]
             )
  end

  test "enables a live input", %{bypass: bypass} do
    account_id = "acct-123"
    li_id = "li-456"

    Bypass.expect_once(
      bypass,
      "POST",
      "/accounts/#{account_id}/stream/live_inputs/#{li_id}/enable",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": {"uid": "#{li_id}", "enabled": true}, "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"result" => %{"enabled" => true}}}} =
             Cloudflare.StreamLiveInput.enable(li_id,
               client: client,
               params: [account_id: account_id]
             )
  end
end
