defmodule Cloudflare.DeviceManagedNetwork do
  use Cloudflare.Doc, "device_managed_networks"

  use Restlax.Resource,
    endpoint: "accounts/:account_id/devices/networks",
    only: [:index, :show, :create, :update, :delete]
end
