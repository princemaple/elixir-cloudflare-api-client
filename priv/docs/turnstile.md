# Turnstile

## Create a Turnstile Widget

**POST** `/accounts/{account_id}/challenges/widgets`

Lists challenge widgets.


## List Turnstile Widgets

**GET** `/accounts/{account_id}/challenges/widgets`

Lists all turnstile widgets of an account.


## Update a Turnstile Widget

**PUT** `/accounts/{account_id}/challenges/widgets/{sitekey}`

Update the configuration of a widget.


## Turnstile Widget Details

**GET** `/accounts/{account_id}/challenges/widgets/{sitekey}`

Show a single challenge widget configuration.


## Delete a Turnstile Widget

**DELETE** `/accounts/{account_id}/challenges/widgets/{sitekey}`

Destroy a Turnstile Widget.


## Rotate Secret for a Turnstile Widget

**POST** `/accounts/{account_id}/challenges/widgets/{sitekey}/rotate_secret`

Generate a new secret key for this widget. If `invalidate_immediately`
is set to `false`, the previous secret remains valid for 2 hours.

Note that secrets cannot be rotated again during the grace period.


