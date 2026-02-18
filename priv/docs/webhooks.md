# Webhooks

## Add a webhook

**POST** `/accounts/{account_id}/realtime/kit/{app_id}/webhooks`

Adds a new webhook to an App.


## Fetch all webhooks details

**GET** `/accounts/{account_id}/realtime/kit/{app_id}/webhooks`

Returns details of all webhooks for an App.


## Replace a webhook

**PUT** `/accounts/{account_id}/realtime/kit/{app_id}/webhooks/{webhook_id}`

Replace all details for the given webhook ID.


## Edit a webhook

**PATCH** `/accounts/{account_id}/realtime/kit/{app_id}/webhooks/{webhook_id}`

Edits the webhook details for the given webhook ID.


## Fetch details of a webhook

**GET** `/accounts/{account_id}/realtime/kit/{app_id}/webhooks/{webhook_id}`

Returns webhook details for the given webhook ID.


## Delete a webhook

**DELETE** `/accounts/{account_id}/realtime/kit/{app_id}/webhooks/{webhook_id}`

Removes a webhook for the given webhook ID.

