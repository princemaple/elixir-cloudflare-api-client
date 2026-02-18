# Secrets Store

## View secret usage

**GET** `/accounts/{account_id}/secrets_store/quota`

Lists the number of secrets used in the account.


## Create a store

**POST** `/accounts/{account_id}/secrets_store/stores`

Creates a store in the account


## List account stores

**GET** `/accounts/{account_id}/secrets_store/stores`

Lists all the stores in an account


## Delete a store

**DELETE** `/accounts/{account_id}/secrets_store/stores/{store_id}`

Deletes a single store


## Create a secret

**POST** `/accounts/{account_id}/secrets_store/stores/{store_id}/secrets`

Creates a secret in the account


## List store secrets

**GET** `/accounts/{account_id}/secrets_store/stores/{store_id}/secrets`

Lists all store secrets


## Delete secrets

**DELETE** `/accounts/{account_id}/secrets_store/stores/{store_id}/secrets`

Deletes one or more secrets


## Patch a secret

**PATCH** `/accounts/{account_id}/secrets_store/stores/{store_id}/secrets/{secret_id}`

Updates a single secret


## Get a secret by ID

**GET** `/accounts/{account_id}/secrets_store/stores/{store_id}/secrets/{secret_id}`

Returns details of a single secret


## Delete a secret

**DELETE** `/accounts/{account_id}/secrets_store/stores/{store_id}/secrets/{secret_id}`

Deletes a single secret


## Duplicate Secret

**POST** `/accounts/{account_id}/secrets_store/stores/{store_id}/secrets/{secret_id}/duplicate`

Duplicates the secret, keeping the value


## Create a store (System)

**POST** `/system/accounts/{account_tag}/stores`

Creates a store in the account on behalf of the calling service.
The store will be marked as managed by the authenticated service.
Requires account_id in the request body.



## List account stores (System)

**GET** `/system/accounts/{account_tag}/stores`

Lists all stores in an account that are managed by the calling service.
Only returns stores where managed_by matches the authenticated service.



## Delete a store (System)

**DELETE** `/system/accounts/{account_tag}/stores/{store_id}`

Deletes a store managed by the calling service.
Returns 404 if the store doesn't exist or is not managed by the authenticated service.



## Create secrets (System)

**POST** `/system/accounts/{account_tag}/stores/{store_id}/secrets`

Creates one or more secrets in a store managed by the calling service.
Returns 404 if the store doesn't exist or is not managed by the authenticated service.



## List store secrets (System)

**GET** `/system/accounts/{account_tag}/stores/{store_id}/secrets`

Lists all secrets in a store managed by the calling service.
Returns 404 if the store doesn't exist or is not managed by the authenticated service.



## Delete secrets (System)

**DELETE** `/system/accounts/{account_tag}/stores/{store_id}/secrets`

Deletes one or more secrets from a store managed by the calling service.
Returns 404 if the store doesn't exist or is not managed by the authenticated service.



## Patch a secret (System)

**PATCH** `/system/accounts/{account_tag}/stores/{store_id}/secrets/{secret_id}`

Updates a single secret in a store managed by the calling service.
Returns 404 if the store doesn't exist or is not managed by the authenticated service.



## Get a secret by ID (System)

**GET** `/system/accounts/{account_tag}/stores/{store_id}/secrets/{secret_id}`

Returns details of a single secret from a store managed by the calling service.
Returns 404 if the store doesn't exist or is not managed by the authenticated service.



## Delete a secret (System)

**DELETE** `/system/accounts/{account_tag}/stores/{store_id}/secrets/{secret_id}`

Deletes a single secret from a store managed by the calling service.
Returns 404 if the store doesn't exist or is not managed by the authenticated service.



## Duplicate secret (System)

**POST** `/system/accounts/{account_tag}/stores/{store_id}/secrets/{secret_id}/duplicate`

Duplicates a secret in a store managed by the calling service, keeping the value.
Returns 404 if the store doesn't exist or is not managed by the authenticated service.


