# User API Tokens

## Create Token

**POST** `/user/tokens`

Create a new access token.


## List Tokens

**GET** `/user/tokens`

List all access tokens you created.


## List Token Permission Groups

**GET** `/user/tokens/permission_groups`

Find all available permission groups for API Tokens


## Verify Token

**GET** `/user/tokens/verify`

Test whether a token works.


## Update Token

**PUT** `/user/tokens/{token_id}`

Update an existing token.


## Token Details

**GET** `/user/tokens/{token_id}`

Get information about a specific token.


## Delete Token

**DELETE** `/user/tokens/{token_id}`

Destroy a token.


## Roll Token

**PUT** `/user/tokens/{token_id}/value`

Roll the token secret.

