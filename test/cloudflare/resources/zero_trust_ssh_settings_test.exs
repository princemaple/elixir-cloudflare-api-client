defmodule Cloudflare.ZeroTrustSshSettingsTest do
  use ExUnit.Case

  setup do
    bypass = Bypass.open()
    Application.put_env(:cloudflare, :base_url, "http://localhost:#{bypass.port}")
    %{bypass: bypass}
  end

  test "gets SSH settings", %{bypass: bypass} do
    account_id = "acct-123"

    Bypass.expect_once(
      bypass,
      "GET",
      "/accounts/#{account_id}/gateway/audit_ssh_settings",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": {"public_key": "ssh-rsa AAA..."}, "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => %{"public_key" => "ssh-rsa AAA..."}}}} =
             Cloudflare.ZeroTrustSshSettings.get(client: client, params: [account_id: account_id])
  end

  test "rotates SSH seed", %{bypass: bypass} do
    account_id = "acct-123"

    Bypass.expect_once(
      bypass,
      "POST",
      "/accounts/#{account_id}/gateway/audit_ssh_settings/rotate_seed",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": {"public_key": "ssh-rsa BBB...", "seed_id": "new-seed"}, "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => %{"seed_id" => "new-seed"}}}} =
             Cloudflare.ZeroTrustSshSettings.rotate_seed(
               client: client,
               params: [account_id: account_id]
             )
  end
end
