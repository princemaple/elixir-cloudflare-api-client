defmodule Cloudflare.StreamLiveInput do
  use Cloudflare.Doc, "stream_live_inputs"

  use Restlax.Resource,
    endpoint: "accounts/:account_id/stream/live_inputs",
    only: [:index, :show, :create, :update, :delete]

  @doc """
  Disables a live input (POST action).
  """
  def disable(live_input_id, opts \\ []) do
    client(opts).post(
      path_for(live_input_id, action: "disable"),
      %{},
      Restlax.Resource.handle_options(opts)
    )
  end

  @doc """
  Enables a live input (POST action).
  """
  def enable(live_input_id, opts \\ []) do
    client(opts).post(
      path_for(live_input_id, action: "enable"),
      %{},
      Restlax.Resource.handle_options(opts)
    )
  end

  @doc """
  Lists outputs associated with a live input.
  """
  def outputs(live_input_id, opts \\ []) do
    client(opts).get(
      path_for(live_input_id, action: "outputs"),
      Restlax.Resource.handle_options(opts)
    )
  end
end
