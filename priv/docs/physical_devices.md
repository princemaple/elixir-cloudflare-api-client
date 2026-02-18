# Physical Devices

## List devices

**GET** `/accounts/{account_id}/devices/physical-devices`

Lists WARP devices.


## Get device

**GET** `/accounts/{account_id}/devices/physical-devices/{device_id}`

Fetches a single WARP device.


## Delete device

**DELETE** `/accounts/{account_id}/devices/physical-devices/{device_id}`

Deletes a WARP device.


## Revoke device registrations

**POST** `/accounts/{account_id}/devices/physical-devices/{device_id}/revoke`

Revokes all WARP registrations associated with the specified device.


## Delete registrations

**DELETE** `/accounts/{account_id}/devices/registrations`

Deletes a list of WARP registrations.

