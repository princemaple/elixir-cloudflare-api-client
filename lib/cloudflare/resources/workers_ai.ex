defmodule Cloudflare.WorkersAI do
  use Cloudflare.Doc, "workers_ai"

  use Restlax.Resource,
    endpoint: "accounts/:account_id/ai",
    only: []

  @doc """
  Executes an AI model with the given input.
  """
  def run(model_name, body, opts \\ []) do
    client(opts).post(
      path_for(nil, action: "run/#{model_name}"),
      body,
      Restlax.Resource.handle_options(opts)
    )
  end

  @doc """
  Searches available AI models.
  """
  def models(opts \\ []) do
    client(opts).get(
      path_for(nil, action: "models/search"),
      Restlax.Resource.handle_options(opts)
    )
  end

  @doc """
  Gets the schema for a specific AI model.
  """
  def model_schema(opts \\ []) do
    client(opts).get(
      path_for(nil, action: "models/schema"),
      Restlax.Resource.handle_options(opts)
    )
  end

  @doc """
  Searches available AI tasks.
  """
  def tasks(opts \\ []) do
    client(opts).get(
      path_for(nil, action: "tasks/search"),
      Restlax.Resource.handle_options(opts)
    )
  end
end
