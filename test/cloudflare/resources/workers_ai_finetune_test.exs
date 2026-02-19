defmodule Cloudflare.WorkersAiFinetuneTest do
  use ExUnit.Case

  setup do
    bypass = Bypass.open()
    Application.put_env(:cloudflare, :base_url, "http://localhost:#{bypass.port}")
    %{bypass: bypass}
  end

  test "lists finetunes", %{bypass: bypass} do
    account_id = "acct-123"

    Bypass.expect_once(bypass, "GET", "/accounts/#{account_id}/ai/finetunes", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": [{"id": "ft-1", "name": "My Finetune"}], "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => [%{"id" => "ft-1"}]}}} =
             Cloudflare.WorkersAiFinetune.index(client: client, params: [account_id: account_id])
  end

  test "creates a finetune", %{bypass: bypass} do
    account_id = "acct-123"
    body = %{"name" => "My Finetune"}

    Bypass.expect_once(bypass, "POST", "/accounts/#{account_id}/ai/finetunes", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        201,
        ~s({"result": {"id": "ft-new"}, "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => %{"id" => "ft-new"}}}} =
             Cloudflare.WorkersAiFinetune.create(body,
               client: client,
               params: [account_id: account_id]
             )
  end

  test "lists public finetunes", %{bypass: bypass} do
    account_id = "acct-123"

    Bypass.expect_once(bypass, "GET", "/accounts/#{account_id}/ai/finetunes/public", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": [{"id": "ft-pub"}], "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => [%{"id" => "ft-pub"}]}}} =
             Cloudflare.WorkersAiFinetune.public(client: client, params: [account_id: account_id])
  end
end
