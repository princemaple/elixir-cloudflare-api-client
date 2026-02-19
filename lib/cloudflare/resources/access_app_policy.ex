defmodule Cloudflare.AccessAppPolicy do
  use Cloudflare.Doc, "access_application_scoped_policies"

  use Restlax.Resource,
    endpoint: "accounts/:account_id/access/apps/:app_id/policies",
    only: [:index, :show, :create, :update, :delete]

  @doc """
  Converts an app-scoped policy into a reusable (account-level) policy.
  """
  def make_reusable(policy_id, opts \\ []) do
    client(opts).put(
      path_for(policy_id, action: "make_reusable"),
      %{},
      Restlax.Resource.handle_options(opts)
    )
  end
end
