defmodule Cloudflare.LogpushJobTest do
  use ExUnit.Case

  setup do
    bypass = Bypass.open()
    Application.put_env(:cloudflare, :base_url, "http://localhost:#{bypass.port}")
    %{bypass: bypass}
  end

  test "lists logpush jobs", %{bypass: bypass} do
    zone_id = "zone-123"

    Bypass.expect_once(bypass, "GET", "/zones/#{zone_id}/logpush/jobs", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": [{"id": 1, "dataset": "http_requests", "enabled": true}], "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => [%{"id" => 1}]}}} =
             Cloudflare.LogpushJob.index(client: client, params: [zone_id: zone_id])
  end

  test "creates a logpush job", %{bypass: bypass} do
    zone_id = "zone-123"

    body = %{
      "dataset" => "http_requests",
      "destination_conf" => "s3://my-bucket/logs?region=us-east-1",
      "enabled" => true
    }

    Bypass.expect_once(bypass, "POST", "/zones/#{zone_id}/logpush/jobs", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": {"id": 42, "dataset": "http_requests"}, "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{body: %{"result" => %{"id" => 42}}}} =
             Cloudflare.LogpushJob.create(body, client: client, params: [zone_id: zone_id])
  end

  test "updates a logpush job", %{bypass: bypass} do
    zone_id = "zone-123"
    job_id = "42"
    body = %{"enabled" => false}

    Bypass.expect_once(bypass, "PUT", "/zones/#{zone_id}/logpush/jobs/#{job_id}", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": {"id": 42, "enabled": false}, "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"success" => true}}} =
             Cloudflare.LogpushJob.update(job_id, body,
               client: client,
               params: [zone_id: zone_id]
             )
  end

  test "deletes a logpush job", %{bypass: bypass} do
    zone_id = "zone-123"
    job_id = "42"

    Bypass.expect_once(bypass, "DELETE", "/zones/#{zone_id}/logpush/jobs/#{job_id}", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": {"id": 42}, "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"success" => true}}} =
             Cloudflare.LogpushJob.delete(job_id, client: client, params: [zone_id: zone_id])
  end

  test "gets ownership challenge", %{bypass: bypass} do
    zone_id = "zone-123"
    body = %{"destination_conf" => "s3://my-bucket/logs?region=us-east-1"}

    Bypass.expect_once(bypass, "POST", "/zones/#{zone_id}/logpush/jobs/ownership", fn conn ->
      conn
      |> Plug.Conn.put_resp_header("content-type", "application/json")
      |> Plug.Conn.resp(
        200,
        ~s({"result": {"filename": "challenge.txt", "valid": true}, "success": true, "errors": [], "messages": []})
      )
    end)

    client = Cloudflare.Client.new(auth_token: "dummy")

    assert {:ok, %{status: 200, body: %{"result" => %{"valid" => true}}}} =
             Cloudflare.LogpushJob.get_ownership(body, client: client, params: [zone_id: zone_id])
  end
end
