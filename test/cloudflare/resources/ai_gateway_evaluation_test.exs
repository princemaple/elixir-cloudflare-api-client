defmodule Cloudflare.AIGatewayEvaluationTest do
  use ExUnit.Case

  setup do
    bypass = Bypass.open()
    Application.put_env(:cloudflare, :base_url, "http://localhost:#{bypass.port}")
    %{bypass: bypass}
  end

  test "lists evaluator types at account level", %{bypass: bypass} do
    account_id = "acct-123"

    Bypass.expect_once(
      bypass,
      "GET",
      "/accounts/#{account_id}/ai-gateway/evaluation-types",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": [{"id": "et-1", "name": "faithfulness"}], "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => [%{"id" => "et-1"}]}}} =
             Cloudflare.AIGatewayEvaluation.evaluation_types(
               client: client,
               params: [account_id: account_id]
             )
  end

  test "lists evaluations", %{bypass: bypass} do
    account_id = "acct-123"
    gateway_id = "gw-1"

    Bypass.expect_once(
      bypass,
      "GET",
      "/accounts/#{account_id}/ai-gateway/gateways/#{gateway_id}/evaluations",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": [{"id": "eval-1"}], "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => [%{"id" => "eval-1"}]}}} =
             Cloudflare.AIGatewayEvaluation.index(
               client: client,
               params: [account_id: account_id, gateway_id: gateway_id]
             )
  end

  test "creates an evaluation", %{bypass: bypass} do
    account_id = "acct-123"
    gateway_id = "gw-1"
    body = %{"name" => "My Eval", "datasets" => []}

    Bypass.expect_once(
      bypass,
      "POST",
      "/accounts/#{account_id}/ai-gateway/gateways/#{gateway_id}/evaluations",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": {"id": "eval-new"}, "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => %{"id" => "eval-new"}}}} =
             Cloudflare.AIGatewayEvaluation.create(body,
               client: client,
               params: [account_id: account_id, gateway_id: gateway_id]
             )
  end
end
