defmodule Cloudflare.Zone do
  use Cloudflare.Doc, "zone"

  use Restlax.Resource, endpoint: "zones"

  @spec activation_check(id :: term(), opts :: Restlax.Resource.action_options()) ::
          {:ok, map()} | {:error, term()}
  def activation_check(id, opts \\ []) do
    client(opts).put(
      path_for(id, action: "activation_check"),
      %{},
      Restlax.Resource.handle_options(opts)
    )
  end

  @doc """
  ### Purge all files

      Cloudflare.Zone.purge_cache(zone_id)

  ### Purge specific files

      Cloudflare.Zone.purge_cache(zone_id, %{
        "files" => [
          "http://www.example.com/css/styles.css",
          %{
            "headers" => %{
              "CF-Device-Type" => "desktop",
              "CF-IPCountry" => "US",
              "Origin" => "https://www.cloudflare.com"
            },
            "url" => "http://www.example.com/cat_picture.jpg"
          }
        ]
      })

      Cloudflare.Zone.purge_cache(zone_id, %{
        "hosts" => ["www.example.com", "images.example.com"],
        "prefixes" => ["www.example.com/foo", "images.example.com/bar/baz"],
        "tags" => ["some-tag", "another-tag"]
      })

  """
  @spec purge_cache(
          id :: term(),
          matcher :: map() | keyword(),
          opts :: Restlax.Resource.action_options()
        ) :: {:ok, map()} | {:error, term()}
  def purge_cache(id, matcher \\ %{}, opts \\ []) do
    client(opts).post(
      path_for(id, action: "purge_cache"),
      matcher,
      Restlax.Resource.handle_options(opts)
    )
  end
end
