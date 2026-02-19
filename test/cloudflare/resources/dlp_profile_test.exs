defmodule Cloudflare.DLPProfileTest do
  use ExUnit.Case

  setup do
    bypass = Bypass.open()
    Application.put_env(:cloudflare, :base_url, "http://localhost:#{bypass.port}")
    %{bypass: bypass}
  end

  test "lists custom DLP profiles", %{bypass: bypass} do
    account_id = "acct-123"

    Bypass.expect_once(bypass, "GET", "/accounts/#{account_id}/dlp/profiles/custom", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": [{"id": "prof-1", "name": "SSN Profile"}], "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => [%{"id" => "prof-1"}]}}} =
             Cloudflare.DLPProfile.index(client: client, params: [account_id: account_id])
  end

  test "creates a custom DLP profile", %{bypass: bypass} do
    account_id = "acct-123"

    body = %{
      "name" => "SSN Profile",
      "entries" => [%{"name" => "Social Security Number", "enabled" => true}]
    }

    Bypass.expect_once(bypass, "POST", "/accounts/#{account_id}/dlp/profiles/custom", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": {"id": "prof-new", "name": "SSN Profile"}, "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => %{"id" => "prof-new"}}}} =
             Cloudflare.DLPProfile.create(body, client: client, params: [account_id: account_id])
  end

  test "updates a custom DLP profile", %{bypass: bypass} do
    account_id = "acct-123"
    profile_id = "prof-456"
    body = %{"name" => "Updated SSN Profile"}

    Bypass.expect_once(
      bypass,
      "PUT",
      "/accounts/#{account_id}/dlp/profiles/custom/#{profile_id}",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": {"id": "#{profile_id}"}, "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"success" => true}}} =
             Cloudflare.DLPProfile.update(profile_id, body,
               client: client,
               params: [account_id: account_id]
             )
  end

  test "deletes a custom DLP profile", %{bypass: bypass} do
    account_id = "acct-123"
    profile_id = "prof-456"

    Bypass.expect_once(
      bypass,
      "DELETE",
      "/accounts/#{account_id}/dlp/profiles/custom/#{profile_id}",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(200, ~s({"result": {}, "success": true, "errors": [], "messages": []}))
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"success" => true}}} =
             Cloudflare.DLPProfile.delete(profile_id,
               client: client,
               params: [account_id: account_id]
             )
  end

  test "lists all DLP profiles (custom + predefined)", %{bypass: bypass} do
    account_id = "acct-123"

    Bypass.expect_once(bypass, "GET", "/accounts/#{account_id}/dlp/profiles", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": [{"id": "prof-1"}, {"id": "prof-2"}], "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"result" => [_, _]}}} =
             Cloudflare.DLPProfile.all(client: client, params: [account_id: account_id])
  end
end
