defmodule Cloudflare.R2SuperSlurper do
  use Cloudflare.Doc, "r2_super_slurper"

  use Restlax.Resource,
    endpoint: "accounts/:account_id/slurper/jobs",
    only: [:index, :show, :create]

  @doc """
  Aborts all running Super Slurper jobs.
  """
  def abort_all(opts \\ []) do
    client(opts).put(
      path_for(nil, action: "abortAll"),
      %{},
      Restlax.Resource.handle_options(opts)
    )
  end

  @doc """
  Aborts a specific Super Slurper job.
  """
  def abort(id, opts \\ []) do
    client(opts).put(
      path_for(id, action: "abort"),
      %{},
      Restlax.Resource.handle_options(opts)
    )
  end

  @doc """
  Gets the logs for a specific Super Slurper job.
  """
  def logs(id, opts \\ []) do
    client(opts).get(
      path_for(id, action: "logs"),
      Restlax.Resource.handle_options(opts)
    )
  end

  @doc """
  Pauses a specific Super Slurper job.
  """
  def pause(id, opts \\ []) do
    client(opts).put(
      path_for(id, action: "pause"),
      %{},
      Restlax.Resource.handle_options(opts)
    )
  end

  @doc """
  Gets the progress of a specific Super Slurper job.
  """
  def progress(id, opts \\ []) do
    client(opts).get(
      path_for(id, action: "progress"),
      Restlax.Resource.handle_options(opts)
    )
  end

  @doc """
  Resumes a specific Super Slurper job.
  """
  def resume(id, opts \\ []) do
    client(opts).put(
      path_for(id, action: "resume"),
      %{},
      Restlax.Resource.handle_options(opts)
    )
  end

  @doc """
  Checks source bucket connectivity.
  """
  def source_connectivity(body, opts \\ []) do
    account_id = Keyword.get(opts[:params] || [], :account_id)

    client(opts).put(
      "accounts/#{account_id}/slurper/source/connectivity-precheck",
      body,
      Restlax.Resource.handle_options(opts)
    )
  end

  @doc """
  Checks target bucket connectivity.
  """
  def target_connectivity(body, opts \\ []) do
    account_id = Keyword.get(opts[:params] || [], :account_id)

    client(opts).put(
      "accounts/#{account_id}/slurper/target/connectivity-precheck",
      body,
      Restlax.Resource.handle_options(opts)
    )
  end
end
