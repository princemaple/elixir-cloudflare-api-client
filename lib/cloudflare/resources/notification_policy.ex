defmodule Cloudflare.NotificationPolicy do
  use Cloudflare.Doc, "notification_policies"

  use Restlax.Resource,
    endpoint: "accounts/:account_id/alerting/v3/policies",
    only: [:index, :show, :create, :update, :delete]
end
