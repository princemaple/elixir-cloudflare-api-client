# Notification destinations with PagerDuty

## List PagerDuty services

**GET** `/accounts/{account_id}/alerting/v3/destinations/pagerduty`

Get a list of all configured PagerDuty services.


## Delete PagerDuty Services

**DELETE** `/accounts/{account_id}/alerting/v3/destinations/pagerduty`

Deletes all the PagerDuty Services connected to the account.


## Create PagerDuty integration token

**POST** `/accounts/{account_id}/alerting/v3/destinations/pagerduty/connect`

Creates a new token for integrating with PagerDuty.


## Connect PagerDuty

**GET** `/accounts/{account_id}/alerting/v3/destinations/pagerduty/connect/{token_id}`

Links PagerDuty with the account using the integration token.

