# Zone-Level Access service tokens

## Create a service token

**POST** `/zones/{zone_id}/access/service_tokens`

Generates a new service token. **Note:** This is the only time you can get the Client Secret. If you lose the Client Secret, you will have to create a new service token.


## List service tokens

**GET** `/zones/{zone_id}/access/service_tokens`

Lists all service tokens.


## Update a service token

**PUT** `/zones/{zone_id}/access/service_tokens/{service_token_id}`

Updates a configured service token.


## Get a service token

**GET** `/zones/{zone_id}/access/service_tokens/{service_token_id}`

Fetches a single service token.


## Delete a service token

**DELETE** `/zones/{zone_id}/access/service_tokens/{service_token_id}`

Deletes a service token.

