# Access identity providers

## Add an Access identity provider

**POST** `/accounts/{account_id}/access/identity_providers`

Adds a new identity provider to Access.


## List Access identity providers

**GET** `/accounts/{account_id}/access/identity_providers`

Lists all configured identity providers.


## Update an Access identity provider

**PUT** `/accounts/{account_id}/access/identity_providers/{identity_provider_id}`

Updates a configured identity provider.


## Get an Access identity provider

**GET** `/accounts/{account_id}/access/identity_providers/{identity_provider_id}`

Fetches a configured identity provider.


## Delete an Access identity provider

**DELETE** `/accounts/{account_id}/access/identity_providers/{identity_provider_id}`

Deletes an identity provider from Access.


## List SCIM Group resources

**GET** `/accounts/{account_id}/access/identity_providers/{identity_provider_id}/scim/groups`

Lists SCIM Group resources synced to Cloudflare via the System for Cross-domain Identity Management (SCIM).


## List SCIM User resources

**GET** `/accounts/{account_id}/access/identity_providers/{identity_provider_id}/scim/users`

Lists SCIM User resources synced to Cloudflare via the System for Cross-domain Identity Management (SCIM).

