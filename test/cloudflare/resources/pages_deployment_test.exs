defmodule Cloudflare.PagesDeploymentTest do
  use ExUnit.Case

  setup do
    bypass = Bypass.open()
    Application.put_env(:cloudflare, :base_url, "http://localhost:#{bypass.port}")
    %{bypass: bypass}
  end

  test "lists deployments", %{bypass: bypass} do
    account_id = "acct-123"
    project_name = "my-site"

    Bypass.expect_once(
      bypass,
      "GET",
      "/accounts/#{account_id}/pages/projects/#{project_name}/deployments",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": [{"id": "dep-1", "environment": "production", "url": "https://my-site.pages.dev"}], "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => [%{"id" => "dep-1"}]}}} =
             Cloudflare.PagesDeployment.index(
               client: client,
               params: [account_id: account_id, project_name: project_name]
             )
  end

  test "creates a deployment", %{bypass: bypass} do
    account_id = "acct-123"
    project_name = "my-site"

    Bypass.expect_once(
      bypass,
      "POST",
      "/accounts/#{account_id}/pages/projects/#{project_name}/deployments",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": {"id": "dep-new", "environment": "production"}, "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => %{"id" => "dep-new"}}}} =
             Cloudflare.PagesDeployment.create(%{},
               client: client,
               params: [account_id: account_id, project_name: project_name]
             )
  end

  test "deletes a deployment", %{bypass: bypass} do
    account_id = "acct-123"
    project_name = "my-site"
    deployment_id = "dep-456"

    Bypass.expect_once(
      bypass,
      "DELETE",
      "/accounts/#{account_id}/pages/projects/#{project_name}/deployments/#{deployment_id}",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(200, ~s({"result": {}, "success": true, "errors": [], "messages": []}))
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"success" => true}}} =
             Cloudflare.PagesDeployment.delete(deployment_id,
               client: client,
               params: [account_id: account_id, project_name: project_name]
             )
  end

  test "retries a deployment", %{bypass: bypass} do
    account_id = "acct-123"
    project_name = "my-site"
    deployment_id = "dep-456"

    Bypass.expect_once(
      bypass,
      "POST",
      "/accounts/#{account_id}/pages/projects/#{project_name}/deployments/#{deployment_id}/retry",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": {"id": "dep-new-retry"}, "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"result" => %{"id" => "dep-new-retry"}}}} =
             Cloudflare.PagesDeployment.retry(deployment_id,
               client: client,
               params: [account_id: account_id, project_name: project_name]
             )
  end

  test "rollbacks a deployment", %{bypass: bypass} do
    account_id = "acct-123"
    project_name = "my-site"
    deployment_id = "dep-456"

    Bypass.expect_once(
      bypass,
      "POST",
      "/accounts/#{account_id}/pages/projects/#{project_name}/deployments/#{deployment_id}/rollback",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": {"id": "dep-456", "environment": "production"}, "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"result" => %{"environment" => "production"}}}} =
             Cloudflare.PagesDeployment.rollback(deployment_id,
               client: client,
               params: [account_id: account_id, project_name: project_name]
             )
  end
end
