# Accounts

## Create an account

**POST** `/accounts`

Create an account (only available for tenant admins at this time)


## List Accounts

**GET** `/accounts`

List all accounts you have ownership or verified access to.


## Batch move accounts

**POST** `/accounts/move`

Batch move a collection of accounts to a specific organization. ⚠️ Not implemented.


## Update Account

**PUT** `/accounts/{account_id}`

Update an existing account.


## Account Details

**GET** `/accounts/{account_id}`

Get information about a specific account that you are a member of.


## Delete a specific account

**DELETE** `/accounts/{account_id}`

Delete a specific account (only available for tenant admins at this time). This is a permanent operation that will delete any zones or other resources under the account


## Move account

**POST** `/accounts/{account_id}/move`

Move an account within an organization hierarchy or an account outside an organization. (Currently in Closed Beta - see https://developers.cloudflare.com/fundamentals/organizations/)


## List account organizations

**GET** `/accounts/{account_id}/organizations`

Retrieve a list of the organizations that "contain" this account or are
managing it.

The returned list will be in order from "root" to "leaf", where the "leaf"
will be the organization that _immediately_ contains the specified
account.


## Modify account profile

**PUT** `/accounts/{account_id}/profile`




## Get account profile

**GET** `/accounts/{account_id}/profile`



