defmodule Cloudflare.AccountLogpushJob do
  use Cloudflare.Doc, "logpush_jobs_for_an_account"

  use Restlax.Resource,
    endpoint: "accounts/:account_id/logpush/jobs",
    only: [:index, :show, :create, :update, :delete]

  @doc """
  Gets an ownership challenge for a Logpush destination.
  """
  def ownership_challenge(body, opts \\ []) do
    client(opts).post(
      path_for(nil, action: "ownership"),
      body,
      Restlax.Resource.handle_options(opts)
    )
  end

  @doc """
  Validates an ownership challenge for a Logpush destination.
  """
  def validate_ownership(body, opts \\ []) do
    client(opts).post(
      path_for(nil, action: "ownership/validate"),
      body,
      Restlax.Resource.handle_options(opts)
    )
  end
end
