# Access service tokens

## Create a service token

**POST** `/accounts/{account_id}/access/service_tokens`

Generates a new service token. **Note:** This is the only time you can get the Client Secret. If you lose the Client Secret, you will have to rotate the Client Secret or create a new service token.


## List service tokens

**GET** `/accounts/{account_id}/access/service_tokens`

Lists all service tokens.


## Update a service token

**PUT** `/accounts/{account_id}/access/service_tokens/{service_token_id}`

Updates a configured service token.


## Get a service token

**GET** `/accounts/{account_id}/access/service_tokens/{service_token_id}`

Fetches a single service token.


## Delete a service token

**DELETE** `/accounts/{account_id}/access/service_tokens/{service_token_id}`

Deletes a service token.


## Refresh a service token

**POST** `/accounts/{account_id}/access/service_tokens/{service_token_id}/refresh`

Refreshes the expiration of a service token.


## Rotate a service token

**POST** `/accounts/{account_id}/access/service_tokens/{service_token_id}/rotate`

Generates a new Client Secret for a service token and revokes the old one.

