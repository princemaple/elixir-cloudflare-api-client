defmodule Cloudflare.DevicePostureRule do
  use Cloudflare.Doc, "device_posture_rules"

  use Restlax.Resource,
    endpoint: "accounts/:account_id/devices/posture",
    only: [:index, :show, :create, :update, :delete]
end
