defmodule Cloudflare.StreamVideoTest do
  use ExUnit.Case

  setup do
    bypass = Bypass.open()
    Application.put_env(:cloudflare, :base_url, "http://localhost:#{bypass.port}")
    %{bypass: bypass}
  end

  test "lists videos", %{bypass: bypass} do
    account_id = "acct-123"

    Bypass.expect_once(bypass, "GET", "/accounts/#{account_id}/stream", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": [{"uid": "vid-1", "readyToStream": true}], "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => [%{"uid" => "vid-1"}]}}} =
             Cloudflare.StreamVideo.index(client: client, params: [account_id: account_id])
  end

  test "retrieves video details", %{bypass: bypass} do
    account_id = "acct-123"
    video_id = "vid-456"

    Bypass.expect_once(bypass, "GET", "/accounts/#{account_id}/stream/#{video_id}", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": {"uid": "#{video_id}", "readyToStream": true}, "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => %{"uid" => ^video_id}}}} =
             Cloudflare.StreamVideo.show(video_id,
               client: client,
               params: [account_id: account_id]
             )
  end

  test "deletes a video", %{bypass: bypass} do
    account_id = "acct-123"
    video_id = "vid-456"

    Bypass.expect_once(bypass, "DELETE", "/accounts/#{account_id}/stream/#{video_id}", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(200, ~s({"result": null, "success": true, "errors": [], "messages": []}))
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200}} =
             Cloudflare.StreamVideo.delete(video_id,
               client: client,
               params: [account_id: account_id]
             )
  end

  test "edits video details (POST update)", %{bypass: bypass} do
    account_id = "acct-123"
    video_id = "vid-456"
    body = %{"requireSignedURLs" => true}

    Bypass.expect_once(bypass, "POST", "/accounts/#{account_id}/stream/#{video_id}", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": {"uid": "#{video_id}", "requireSignedURLs": true}, "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"result" => %{"requireSignedURLs" => true}}}} =
             Cloudflare.StreamVideo.update(video_id, body,
               client: client,
               params: [account_id: account_id]
             )
  end

  test "creates a signed token for a video", %{bypass: bypass} do
    account_id = "acct-123"
    video_id = "vid-456"

    Bypass.expect_once(
      bypass,
      "POST",
      "/accounts/#{account_id}/stream/#{video_id}/token",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": {"token": "eyJhbGciOiJ..."}, "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"result" => %{"token" => "eyJhbGciOiJ..."}}}} =
             Cloudflare.StreamVideo.create_token(video_id, %{},
               client: client,
               params: [account_id: account_id]
             )
  end
end
