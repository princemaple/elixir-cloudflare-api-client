# Zero Trust accounts

## Update device settings for a Zero Trust account

**PUT** `/accounts/{account_id}/devices/settings`

Updates the current device settings for a Zero Trust account.


## Patch device settings for a Zero Trust account

**PATCH** `/accounts/{account_id}/devices/settings`

Patches the current device settings for a Zero Trust account.


## Get device settings for a Zero Trust account

**GET** `/accounts/{account_id}/devices/settings`

Describes the current device settings for a Zero Trust account.


## Reset device settings for a Zero Trust account with defaults. This turns off all proxying.

**DELETE** `/accounts/{account_id}/devices/settings`

Resets the current device settings for a Zero Trust account.


## Create Zero Trust account

**POST** `/accounts/{account_id}/gateway`

Create a Zero Trust account for an existing Cloudflare account.


## Get Zero Trust account information

**GET** `/accounts/{account_id}/gateway`

Retrieve information about the current Zero Trust account.


## Update Zero Trust account configuration

**PUT** `/accounts/{account_id}/gateway/configuration`

Update the current Zero Trust account configuration.


## Patch Zero Trust account configuration

**PATCH** `/accounts/{account_id}/gateway/configuration`

Update (PATCH) a single subcollection of settings such as `antivirus`, `tls_decrypt`, `activity_log`, `block_page`, `browser_isolation`, `fips`, `body_scanning`, or `certificate` without updating the entire configuration object. This endpoint returns an error if any settings collection lacks proper configuration.


## Get Zero Trust account configuration

**GET** `/accounts/{account_id}/gateway/configuration`

Retrieve the current Zero Trust account configuration.


## Get Zero Trust certificate configuration

**GET** `/accounts/{account_id}/gateway/configuration/custom_certificate`

Retrieve the current Zero Trust certificate configuration.


## Update Zero Trust account logging settings

**PUT** `/accounts/{account_id}/gateway/logging`

Update logging settings for the current Zero Trust account.


## Get logging settings for the Zero Trust account

**GET** `/accounts/{account_id}/gateway/logging`

Retrieve the current logging settings for the Zero Trust account.

