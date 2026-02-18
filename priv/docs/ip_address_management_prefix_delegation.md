# IP Address Management Prefix Delegation

## Create Prefix Delegation

**POST** `/accounts/{account_id}/addressing/prefixes/{prefix_id}/delegations`

Create a new account delegation for a given IP prefix.


## List Prefix Delegations

**GET** `/accounts/{account_id}/addressing/prefixes/{prefix_id}/delegations`

List all delegations for a given account IP prefix.


## Delete Prefix Delegation

**DELETE** `/accounts/{account_id}/addressing/prefixes/{prefix_id}/delegations/{delegation_id}`

Delete an account delegation for a given IP prefix.

