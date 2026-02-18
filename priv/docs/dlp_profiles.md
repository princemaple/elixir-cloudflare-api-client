# DLP Profiles

## List all profiles

**GET** `/accounts/{account_id}/dlp/profiles`

Lists all DLP profiles in an account.


## Create custom profile

**POST** `/accounts/{account_id}/dlp/profiles/custom`

Creates a DLP custom profile.


## List all custom profiles

**GET** `/accounts/{account_id}/dlp/profiles/custom`

Lists all DLP custom profiles in an account.


## Update custom profile

**PUT** `/accounts/{account_id}/dlp/profiles/custom/{profile_id}`

Updates a DLP custom profile.


## Get custom profile

**GET** `/accounts/{account_id}/dlp/profiles/custom/{profile_id}`

Fetches a custom DLP profile by id.


## Delete custom profile

**DELETE** `/accounts/{account_id}/dlp/profiles/custom/{profile_id}`

Deletes a DLP custom profile.


## Create predefined profile

**POST** `/accounts/{account_id}/dlp/profiles/predefined`

Creates a DLP predefined profile. Only supports enabling/disabling entries.


## Update predefined profile

**PUT** `/accounts/{account_id}/dlp/profiles/predefined/{profile_id}`

Updates a DLP predefined profile. Only supports enabling/disabling entries.


## Get predefined profile

**GET** `/accounts/{account_id}/dlp/profiles/predefined/{profile_id}`

Fetches a predefined DLP profile by id.


## Delete predefined profile

**DELETE** `/accounts/{account_id}/dlp/profiles/predefined/{profile_id}`

This is a no-op as predefined profiles can't be deleted but is needed for our generated terraform API.


## Update predefined profile config

**PUT** `/accounts/{account_id}/dlp/profiles/predefined/{profile_id}/config`

This is similar to `update_predefined` but only returns entries that are enabled.
This is needed for our terraform API
Updates a DLP predefined profile. Only supports enabling/disabling entries.


## Create predefined profile

**POST** `/accounts/{account_id}/dlp/profiles/predefined/{profile_id}/config`

This is similar to `update_predefined` but only returns entries that are enabled.
This is needed for our terraform API
Creates a DLP predefined profile. Only supports enabling/disabling entries.


## Get predefined profile config

**GET** `/accounts/{account_id}/dlp/profiles/predefined/{profile_id}/config`

This is similar to `get_predefined` but only returns entries that are enabled.
This is needed for our terraform API
Fetches a predefined DLP profile by id.


## Get DLP Profile

**GET** `/accounts/{account_id}/dlp/profiles/{profile_id}`

Fetches a DLP profile by ID.

