# Zero Trust organization

## Update your Zero Trust organization

**PUT** `/accounts/{account_id}/access/organizations`

Updates the configuration for your Zero Trust organization.


## Create your Zero Trust organization

**POST** `/accounts/{account_id}/access/organizations`

Sets up a Zero Trust organization for your account.


## Get your Zero Trust organization

**GET** `/accounts/{account_id}/access/organizations`

Returns the configuration for your Zero Trust organization.


## Update your Zero Trust organization DoH settings

**PUT** `/accounts/{account_id}/access/organizations/doh`

Updates the DoH settings for your Zero Trust organization.


## Get your Zero Trust organization DoH settings

**GET** `/accounts/{account_id}/access/organizations/doh`

Returns the DoH settings for your Zero Trust organization.


## Revoke all Access tokens for a user

**POST** `/accounts/{account_id}/access/organizations/revoke_user`

Revokes a user's access across all applications.

