# Magic Sites

## Create a new Site

**POST** `/accounts/{account_id}/magic/sites`

Creates a new Site


## List Sites

**GET** `/accounts/{account_id}/magic/sites`

Lists Sites associated with an account. Use connectorid query param to return sites where connectorid matches either site.ConnectorID or site.SecondaryConnectorID.


## Update Site

**PUT** `/accounts/{account_id}/magic/sites/{site_id}`

Update a specific Site.


## Patch Site

**PATCH** `/accounts/{account_id}/magic/sites/{site_id}`

Patch a specific Site.


## Site Details

**GET** `/accounts/{account_id}/magic/sites/{site_id}`

Get a specific Site.


## Delete Site

**DELETE** `/accounts/{account_id}/magic/sites/{site_id}`

Remove a specific Site.

