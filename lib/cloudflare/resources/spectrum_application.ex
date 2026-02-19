defmodule Cloudflare.SpectrumApplication do
  use Cloudflare.Doc, "spectrum_applications"

  use Restlax.Resource,
    endpoint: "zones/:zone_id/spectrum/apps",
    only: [:index, :show, :create, :update, :delete]
end
