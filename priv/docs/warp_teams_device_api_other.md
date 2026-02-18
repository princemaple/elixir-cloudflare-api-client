# warp-teams-device-api_other

## Create IP profile

**POST** `/accounts/{account_id}/devices/ip-profiles`

Creates a WARP Device IP profile. Currently, only IPv4 Device subnets can be associated.


## List IP profiles

**GET** `/accounts/{account_id}/devices/ip-profiles`

Lists WARP Device IP profiles.


## Update IP profile

**PATCH** `/accounts/{account_id}/devices/ip-profiles/{profile_id}`

Updates a WARP Device IP profile. Currently, only IPv4 Device subnets can be associated.


## Get IP profile

**GET** `/accounts/{account_id}/devices/ip-profiles/{profile_id}`

Fetches a single WARP Device IP profile.


## Delete IP profile

**DELETE** `/accounts/{account_id}/devices/ip-profiles/{profile_id}`

Delete a WARP Device IP profile.


## Get override codes

**GET** `/accounts/{account_id}/devices/registrations/{registration_id}/override_codes`

Fetches one-time use admin override codes for a registration. This relies on the **Admin Override** setting being enabled in your device configuration.

