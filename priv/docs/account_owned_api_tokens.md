# Account Owned API Tokens

## Create Token

**POST** `/accounts/{account_id}/tokens`

Create a new Account Owned API token.


## List Tokens

**GET** `/accounts/{account_id}/tokens`

List all Account Owned API tokens created for this account.


## List Permission Groups

**GET** `/accounts/{account_id}/tokens/permission_groups`

Find all available permission groups for Account Owned API Tokens


## Verify Token

**GET** `/accounts/{account_id}/tokens/verify`

Test whether a token works.


## Update Token

**PUT** `/accounts/{account_id}/tokens/{token_id}`

Update an existing token.


## Token Details

**GET** `/accounts/{account_id}/tokens/{token_id}`

Get information about a specific Account Owned API token.


## Delete Token

**DELETE** `/accounts/{account_id}/tokens/{token_id}`

Destroy an Account Owned API token.


## Roll Token

**PUT** `/accounts/{account_id}/tokens/{token_id}/value`

Roll the Account Owned API token secret.

