defmodule Cloudflare.PagesProjectTest do
  use ExUnit.Case

  setup do
    bypass = Bypass.open()
    Application.put_env(:cloudflare, :base_url, "http://localhost:#{bypass.port}")
    %{bypass: bypass}
  end

  test "lists pages projects", %{bypass: bypass} do
    account_id = "acct-123"

    Bypass.expect_once(bypass, "GET", "/accounts/#{account_id}/pages/projects", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": [{"id": "proj-1", "name": "my-site"}], "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => [%{"id" => "proj-1"}]}}} =
             Cloudflare.PagesProject.index(client: client, params: [account_id: account_id])
  end

  test "creates a pages project", %{bypass: bypass} do
    account_id = "acct-123"
    body = %{"name" => "my-site", "production_branch" => "main"}

    Bypass.expect_once(bypass, "POST", "/accounts/#{account_id}/pages/projects", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": {"id": "proj-new", "name": "my-site"}, "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => %{"name" => "my-site"}}}} =
             Cloudflare.PagesProject.create(body,
               client: client,
               params: [account_id: account_id]
             )
  end

  test "updates a pages project (PATCH)", %{bypass: bypass} do
    account_id = "acct-123"
    project_name = "my-site"
    body = %{"production_branch" => "production"}

    Bypass.expect_once(
      bypass,
      "PATCH",
      "/accounts/#{account_id}/pages/projects/#{project_name}",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": {"name": "#{project_name}"}, "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"success" => true}}} =
             Cloudflare.PagesProject.update(project_name, body,
               client: client,
               params: [account_id: account_id]
             )
  end

  test "deletes a pages project", %{bypass: bypass} do
    account_id = "acct-123"
    project_name = "my-site"

    Bypass.expect_once(
      bypass,
      "DELETE",
      "/accounts/#{account_id}/pages/projects/#{project_name}",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(200, ~s({"result": {}, "success": true, "errors": [], "messages": []}))
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"success" => true}}} =
             Cloudflare.PagesProject.delete(project_name,
               client: client,
               params: [account_id: account_id]
             )
  end
end
