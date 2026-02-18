# Magic Network Monitoring Configuration

## Update an entire account configuration

**PUT** `/accounts/{account_id}/mnm/config`

Update an existing network monitoring configuration, requires the entire configuration to be updated at once.


## Create account configuration

**POST** `/accounts/{account_id}/mnm/config`

Create a new network monitoring configuration.


## Update account configuration fields

**PATCH** `/accounts/{account_id}/mnm/config`

Update fields in an existing network monitoring configuration.


## List account configuration

**GET** `/accounts/{account_id}/mnm/config`

Lists default sampling, router IPs and warp devices for account.


## Delete account configuration

**DELETE** `/accounts/{account_id}/mnm/config`

Delete an existing network monitoring configuration.


## List rules and account configuration

**GET** `/accounts/{account_id}/mnm/config/full`

Lists default sampling, router IPs, warp devices, and rules for account.

