defmodule Cloudflare.AIGatewayDatasetTest do
  use ExUnit.Case

  setup do
    bypass = Bypass.open()
    Application.put_env(:cloudflare, :base_url, "http://localhost:#{bypass.port}")
    %{bypass: bypass}
  end

  test "lists datasets for a gateway", %{bypass: bypass} do
    account_id = "acct-123"
    gateway_id = "gw-1"

    Bypass.expect_once(
      bypass,
      "GET",
      "/accounts/#{account_id}/ai-gateway/gateways/#{gateway_id}/datasets",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": [{"id": "ds-1", "name": "My Dataset"}], "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => [%{"id" => "ds-1"}]}}} =
             Cloudflare.AIGatewayDataset.index(
               client: client,
               params: [account_id: account_id, gateway_id: gateway_id]
             )
  end

  test "creates a dataset", %{bypass: bypass} do
    account_id = "acct-123"
    gateway_id = "gw-1"
    body = %{"name" => "My Dataset", "enable" => true, "filters" => []}

    Bypass.expect_once(
      bypass,
      "POST",
      "/accounts/#{account_id}/ai-gateway/gateways/#{gateway_id}/datasets",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": {"id": "ds-new", "name": "My Dataset"}, "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => %{"id" => "ds-new"}}}} =
             Cloudflare.AIGatewayDataset.create(body,
               client: client,
               params: [account_id: account_id, gateway_id: gateway_id]
             )
  end

  test "deletes a dataset", %{bypass: bypass} do
    account_id = "acct-123"
    gateway_id = "gw-1"
    dataset_id = "ds-456"

    Bypass.expect_once(
      bypass,
      "DELETE",
      "/accounts/#{account_id}/ai-gateway/gateways/#{gateway_id}/datasets/#{dataset_id}",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": {"id": "#{dataset_id}"}, "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200}} =
             Cloudflare.AIGatewayDataset.delete(dataset_id,
               client: client,
               params: [account_id: account_id, gateway_id: gateway_id]
             )
  end
end
