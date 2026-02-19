defmodule Cloudflare.DLPProfile do
  use Cloudflare.Doc, "dlp_profiles"

  use Restlax.Resource,
    endpoint: "accounts/:account_id/dlp/profiles/custom",
    only: [:index, :show, :create, :update, :delete]

  @doc """
  Lists all DLP profiles (both custom and predefined).
  """
  def all(opts \\ []) do
    client(opts).get(
      "accounts/#{Keyword.get(opts[:params] || [], :account_id)}/dlp/profiles",
      Restlax.Resource.handle_options(opts)
    )
  end
end
