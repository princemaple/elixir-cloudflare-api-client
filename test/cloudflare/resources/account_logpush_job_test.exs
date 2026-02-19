defmodule Cloudflare.AccountLogpushJobTest do
  use ExUnit.Case

  setup do
    bypass = Bypass.open()
    Application.put_env(:cloudflare, :base_url, "http://localhost:#{bypass.port}")
    %{bypass: bypass}
  end

  test "lists logpush jobs", %{bypass: bypass} do
    account_id = "acct-123"

    Bypass.expect_once(bypass, "GET", "/accounts/#{account_id}/logpush/jobs", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": [{"id": 1, "name": "my-job"}], "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => [%{"id" => 1}]}}} =
             Cloudflare.AccountLogpushJob.index(client: client, params: [account_id: account_id])
  end

  test "creates a logpush job", %{bypass: bypass} do
    account_id = "acct-123"

    body = %{
      "name" => "my-job",
      "destination_conf" => "s3://bucket/path?region=us-east-1",
      "dataset" => "http_requests"
    }

    Bypass.expect_once(bypass, "POST", "/accounts/#{account_id}/logpush/jobs", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": {"id": 99, "name": "my-job"}, "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => %{"id" => 99}}}} =
             Cloudflare.AccountLogpushJob.create(body,
               client: client,
               params: [account_id: account_id]
             )
  end

  test "gets an ownership challenge", %{bypass: bypass} do
    account_id = "acct-123"
    body = %{"destination_conf" => "s3://bucket/path?region=us-east-1"}

    Bypass.expect_once(
      bypass,
      "POST",
      "/accounts/#{account_id}/logpush/jobs/ownership",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": {"filename": "ownership-challenge.txt", "valid": true}, "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => %{"valid" => true}}}} =
             Cloudflare.AccountLogpushJob.ownership_challenge(body,
               client: client,
               params: [account_id: account_id]
             )
  end

  test "deletes a logpush job", %{bypass: bypass} do
    account_id = "acct-123"
    job_id = "55"

    Bypass.expect_once(
      bypass,
      "DELETE",
      "/accounts/#{account_id}/logpush/jobs/#{job_id}",
      fn conn ->
        conn
        |> Plug.Conn.put_resp_header("content-type", "application/json")
        |> Plug.Conn.resp(
          200,
          ~s({"result": {"id": 55}, "success": true, "errors": [], "messages": []})
        )
      end
    )

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"success" => true}}} =
             Cloudflare.AccountLogpushJob.delete(job_id,
               client: client,
               params: [account_id: account_id]
             )
  end
end
