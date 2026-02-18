# Devices

## List devices (deprecated)

**GET** `/accounts/{account_id}/devices`

List WARP devices. Not supported when [multi-user mode](https://developers.cloudflare.com/cloudflare-one/connections/connect-devices/warp/deployment/mdm-deployment/windows-multiuser/) is enabled for the account.

**Deprecated**: please use one of the following endpoints instead:
- GET /accounts/{account_id}/devices/physical-devices
- GET /accounts/{account_id}/devices/registrations



## List device settings profiles

**GET** `/accounts/{account_id}/devices/policies`

Fetches a list of the device settings profiles for an account.


## Create a device settings profile

**POST** `/accounts/{account_id}/devices/policy`

Creates a device settings profile to be applied to certain devices matching the criteria.


## Update the default device settings profile

**PATCH** `/accounts/{account_id}/devices/policy`

Updates the default device settings profile for an account.


## Get the default device settings profile

**GET** `/accounts/{account_id}/devices/policy`

Fetches the default device settings profile for an account.


## Set the Split Tunnel exclude list

**PUT** `/accounts/{account_id}/devices/policy/exclude`

Sets the list of routes excluded from the WARP client's tunnel.


## Get the Split Tunnel exclude list

**GET** `/accounts/{account_id}/devices/policy/exclude`

Fetches the list of routes excluded from the WARP client's tunnel.


## Set your Local Domain Fallback list

**PUT** `/accounts/{account_id}/devices/policy/fallback_domains`

Sets the list of domains to bypass Gateway DNS resolution. These domains will use the specified local DNS resolver instead.


## Get your Local Domain Fallback list

**GET** `/accounts/{account_id}/devices/policy/fallback_domains`

Fetches a list of domains to bypass Gateway DNS resolution. These domains will use the specified local DNS resolver instead.


## Set the Split Tunnel include list

**PUT** `/accounts/{account_id}/devices/policy/include`

Sets the list of routes included in the WARP client's tunnel.


## Get the Split Tunnel include list

**GET** `/accounts/{account_id}/devices/policy/include`

Fetches the list of routes included in the WARP client's tunnel.


## Update a device settings profile

**PATCH** `/accounts/{account_id}/devices/policy/{policy_id}`

Updates a configured device settings profile.


## Get device settings profile by ID

**GET** `/accounts/{account_id}/devices/policy/{policy_id}`

Fetches a device settings profile by ID.


## Delete a device settings profile

**DELETE** `/accounts/{account_id}/devices/policy/{policy_id}`

Deletes a device settings profile and fetches a list of the remaining profiles for an account.


## Set the Split Tunnel exclude list for a device settings profile

**PUT** `/accounts/{account_id}/devices/policy/{policy_id}/exclude`

Sets the list of routes excluded from the WARP client's tunnel for a specific device settings profile.


## Get the Split Tunnel exclude list for a device settings profile

**GET** `/accounts/{account_id}/devices/policy/{policy_id}/exclude`

Fetches the list of routes excluded from the WARP client's tunnel for a specific device settings profile.


## Set the Local Domain Fallback list for a device settings profile

**PUT** `/accounts/{account_id}/devices/policy/{policy_id}/fallback_domains`

Sets the list of domains to bypass Gateway DNS resolution. These domains will use the specified local DNS resolver instead. This will only apply to the specified device settings profile.


## Get the Local Domain Fallback list for a device settings profile

**GET** `/accounts/{account_id}/devices/policy/{policy_id}/fallback_domains`

Fetches the list of domains to bypass Gateway DNS resolution from a specified device settings profile. These domains will use the specified local DNS resolver instead.


## Set the Split Tunnel include list for a device settings profile

**PUT** `/accounts/{account_id}/devices/policy/{policy_id}/include`

Sets the list of routes included in the WARP client's tunnel for a specific device settings profile.


## Get the Split Tunnel include list for a device settings profile

**GET** `/accounts/{account_id}/devices/policy/{policy_id}/include`

Fetches the list of routes included in the WARP client's tunnel for a specific device settings profile.


## Revoke devices (deprecated)

**POST** `/accounts/{account_id}/devices/revoke`

Revokes a list of devices. Not supported when [multi-user mode](https://developers.cloudflare.com/cloudflare-one/connections/connect-devices/warp/deployment/mdm-deployment/windows-multiuser/) is enabled.

**Deprecated**: please use POST /accounts/{account_id}/devices/registrations/revoke instead.



## Unrevoke devices (deprecated)

**POST** `/accounts/{account_id}/devices/unrevoke`

Unrevokes a list of devices. Not supported when [multi-user mode](https://developers.cloudflare.com/cloudflare-one/connections/connect-devices/warp/deployment/mdm-deployment/windows-multiuser/) is enabled.

**Deprecated**: please use POST /accounts/{account_id}/devices/registrations/unrevoke instead.



## Get device (deprecated)

**GET** `/accounts/{account_id}/devices/{device_id}`

Fetches a single WARP device. Not supported when [multi-user mode](https://developers.cloudflare.com/cloudflare-one/connections/connect-devices/warp/deployment/mdm-deployment/windows-multiuser/) is enabled for the account.

**Deprecated**: please use one of the following endpoints instead:
- GET /accounts/{account_id}/devices/physical-devices/{device_id}
- GET /accounts/{account_id}/devices/registrations/{registration_id}



## Get override codes (deprecated)


**GET** `/accounts/{account_id}/devices/{device_id}/override_codes`

Fetches a one-time use admin override code for a device. This relies on the **Admin Override** setting being enabled in your device configuration. Not supported when [multi-user mode](https://developers.cloudflare.com/cloudflare-one/connections/connect-devices/warp/deployment/mdm-deployment/windows-multiuser/) is enabled for the account.
**Deprecated:** please use GET /accounts/{account_id}/devices/registrations/{registration_id}/override_codes instead.



## Update device certificate provisioning status

**PATCH** `/zones/{zone_id}/devices/policy/certificates`

Enable Zero Trust Clients to provision a certificate, containing a x509 subject, and referenced by Access device posture policies when the client visits MTLS protected domains. This facilitates device posture without a WARP session.


## Get device certificate provisioning status

**GET** `/zones/{zone_id}/devices/policy/certificates`

Fetches device certificate provisioning.

