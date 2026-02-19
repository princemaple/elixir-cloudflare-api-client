defmodule Cloudflare.ZeroTrustRiskScoringTest do
  use ExUnit.Case

  setup do
    bypass = Bypass.open()
    Application.put_env(:cloudflare, :base_url, "http://localhost:#{bypass.port}")
    %{bypass: bypass}
  end

  test "gets behaviors", %{bypass: bypass} do
    account_id = "acct-123"

    Bypass.expect_once(
      bypass,
      "GET",
      "/accounts/#{account_id}/zt_risk_scoring/behaviors",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": {"behaviors": {}}, "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => %{"behaviors" => %{}}}}} =
             Cloudflare.ZeroTrustRiskScoring.behaviors(
               client: client,
               params: [account_id: account_id]
             )
  end

  test "gets summary", %{bypass: bypass} do
    account_id = "acct-123"

    Bypass.expect_once(
      bypass,
      "GET",
      "/accounts/#{account_id}/zt_risk_scoring/summary",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": {"users": []}, "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => %{"users" => []}}}} =
             Cloudflare.ZeroTrustRiskScoring.summary(
               client: client,
               params: [account_id: account_id]
             )
  end

  test "resets user score", %{bypass: bypass} do
    account_id = "acct-123"
    user_id = "user-1"

    Bypass.expect_once(
      bypass,
      "POST",
      "/accounts/#{account_id}/zt_risk_scoring/#{user_id}/reset",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(200, ~s({"result": {}, "success": true, "errors": [], "messages": []}))
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, _} =
             Cloudflare.ZeroTrustRiskScoring.reset(user_id,
               client: client,
               params: [account_id: account_id]
             )
  end
end
