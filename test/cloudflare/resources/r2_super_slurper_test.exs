defmodule Cloudflare.R2SuperSlurperTest do
  use ExUnit.Case

  setup do
    bypass = Bypass.open()
    Application.put_env(:cloudflare, :base_url, "http://localhost:#{bypass.port}")
    %{bypass: bypass}
  end

  test "lists Super Slurper jobs", %{bypass: bypass} do
    account_id = "acct-123"

    Bypass.expect_once(bypass, "GET", "/accounts/#{account_id}/slurper/jobs", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": [{"id": "job-1", "status": "running"}], "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"result" => [%{"id" => "job-1"}]}}} =
             Cloudflare.R2SuperSlurper.index(client: client, params: [account_id: account_id])
  end

  test "creates a Super Slurper job", %{bypass: bypass} do
    account_id = "acct-123"
    body = %{"source" => %{}, "target" => %{"bucket" => "my-bucket", "vendor" => "r2"}}

    Bypass.expect_once(bypass, "POST", "/accounts/#{account_id}/slurper/jobs", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        201,
        ~s({"result": {"id": "job-1"}, "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 201, body: %{"result" => %{"id" => "job-1"}}}} =
             Cloudflare.R2SuperSlurper.create(body,
               client: client,
               params: [account_id: account_id]
             )
  end

  test "gets Super Slurper job details", %{bypass: bypass} do
    account_id = "acct-123"
    job_id = "job-1"

    Bypass.expect_once(
      bypass,
      "GET",
      "/accounts/#{account_id}/slurper/jobs/#{job_id}",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": {"id": "job-1", "status": "running"}, "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"result" => %{"id" => ^job_id}}}} =
             Cloudflare.R2SuperSlurper.show(job_id,
               client: client,
               params: [account_id: account_id]
             )
  end

  test "aborts all Super Slurper jobs", %{bypass: bypass} do
    account_id = "acct-123"

    Bypass.expect_once(bypass, "PUT", "/accounts/#{account_id}/slurper/jobs/abortAll", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": "ok", "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"success" => true}}} =
             Cloudflare.R2SuperSlurper.abort_all(client: client, params: [account_id: account_id])
  end

  test "aborts a specific Super Slurper job", %{bypass: bypass} do
    account_id = "acct-123"
    job_id = "job-1"

    Bypass.expect_once(
      bypass,
      "PUT",
      "/accounts/#{account_id}/slurper/jobs/#{job_id}/abort",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": "ok", "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"success" => true}}} =
             Cloudflare.R2SuperSlurper.abort(job_id,
               client: client,
               params: [account_id: account_id]
             )
  end

  test "gets Super Slurper job logs", %{bypass: bypass} do
    account_id = "acct-123"
    job_id = "job-1"

    Bypass.expect_once(
      bypass,
      "GET",
      "/accounts/#{account_id}/slurper/jobs/#{job_id}/logs",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": [{"message": "started", "logType": "info"}], "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"result" => [%{"message" => "started"}]}}} =
             Cloudflare.R2SuperSlurper.logs(job_id,
               client: client,
               params: [account_id: account_id]
             )
  end

  test "pauses a Super Slurper job", %{bypass: bypass} do
    account_id = "acct-123"
    job_id = "job-1"

    Bypass.expect_once(
      bypass,
      "PUT",
      "/accounts/#{account_id}/slurper/jobs/#{job_id}/pause",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": "ok", "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"success" => true}}} =
             Cloudflare.R2SuperSlurper.pause(job_id,
               client: client,
               params: [account_id: account_id]
             )
  end

  test "gets Super Slurper job progress", %{bypass: bypass} do
    account_id = "acct-123"
    job_id = "job-1"

    Bypass.expect_once(
      bypass,
      "GET",
      "/accounts/#{account_id}/slurper/jobs/#{job_id}/progress",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": {"id": "job-1", "objects": 100, "transferredObjects": 50, "status": "running"}, "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"result" => %{"id" => ^job_id, "objects" => 100}}}} =
             Cloudflare.R2SuperSlurper.progress(job_id,
               client: client,
               params: [account_id: account_id]
             )
  end

  test "resumes a Super Slurper job", %{bypass: bypass} do
    account_id = "acct-123"
    job_id = "job-1"

    Bypass.expect_once(
      bypass,
      "PUT",
      "/accounts/#{account_id}/slurper/jobs/#{job_id}/resume",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": "ok", "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"success" => true}}} =
             Cloudflare.R2SuperSlurper.resume(job_id,
               client: client,
               params: [account_id: account_id]
             )
  end

  test "checks source connectivity", %{bypass: bypass} do
    account_id = "acct-123"
    body = %{"source" => %{"bucket" => "source-bucket"}}

    Bypass.expect_once(
      bypass,
      "PUT",
      "/accounts/#{account_id}/slurper/source/connectivity-precheck",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": {"connectivityStatus": "connected"}, "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"result" => %{"connectivityStatus" => "connected"}}}} =
             Cloudflare.R2SuperSlurper.source_connectivity(body,
               client: client,
               params: [account_id: account_id]
             )
  end

  test "checks target connectivity", %{bypass: bypass} do
    account_id = "acct-123"
    body = %{"target" => %{"bucket" => "target-bucket", "vendor" => "r2"}}

    Bypass.expect_once(
      bypass,
      "PUT",
      "/accounts/#{account_id}/slurper/target/connectivity-precheck",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": {"connectivityStatus": "connected"}, "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"result" => %{"connectivityStatus" => "connected"}}}} =
             Cloudflare.R2SuperSlurper.target_connectivity(body,
               client: client,
               params: [account_id: account_id]
             )
  end
end
