defmodule Cloudflare.ZeroTrustRiskScoringIntegrationTest do
  use ExUnit.Case

  setup do
    bypass = Bypass.open()
    Application.put_env(:cloudflare, :base_url, "http://localhost:#{bypass.port}")
    %{bypass: bypass}
  end

  test "lists integrations", %{bypass: bypass} do
    account_id = "acct-123"

    Bypass.expect_once(
      bypass,
      "GET",
      "/accounts/#{account_id}/zt_risk_scoring/integrations",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": [{"id": "int-1", "integration_type": "okta"}], "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => [%{"id" => "int-1"}]}}} =
             Cloudflare.ZeroTrustRiskScoringIntegration.index(
               client: client,
               params: [account_id: account_id]
             )
  end

  test "creates an integration", %{bypass: bypass} do
    account_id = "acct-123"
    body = %{"integration_type" => "okta", "tenant_url" => "https://example.okta.com"}

    Bypass.expect_once(
      bypass,
      "POST",
      "/accounts/#{account_id}/zt_risk_scoring/integrations",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": {"id": "int-new", "integration_type": "okta"}, "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => %{"id" => "int-new"}}}} =
             Cloudflare.ZeroTrustRiskScoringIntegration.create(body,
               client: client,
               params: [account_id: account_id]
             )
  end

  test "gets integration by reference id", %{bypass: bypass} do
    account_id = "acct-123"
    ref_id = "my-ref"

    Bypass.expect_once(
      bypass,
      "GET",
      "/accounts/#{account_id}/zt_risk_scoring/integrations/reference_id/#{ref_id}",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": {"id": "int-1", "reference_id": "my-ref"}, "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => %{"reference_id" => ^ref_id}}}} =
             Cloudflare.ZeroTrustRiskScoringIntegration.by_reference_id(ref_id,
               client: client,
               params: [account_id: account_id]
             )
  end
end
