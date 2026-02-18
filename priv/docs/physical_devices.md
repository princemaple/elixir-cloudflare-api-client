# Physical Devices

## List devices

**GET** `/accounts/{account_id}/devices/physical-devices`

Lists WARP devices.

### Responses

#### 200 Returns a list of Devices.

> Data is at `body["result"]`

```json
[
  {
    "active_registrations": "*integer*",
    "client_version": "*string*",
    "created_at": "*string*",
    "deleted_at": "*string*",
    "device_type": "*string*",
    "hardware_id": "*string*",
    "id": "*string*",
    "last_seen_at": "*string*",
    "last_seen_registration": {},
    "last_seen_user": {},
    "mac_address": "*string*",
    "manufacturer": "*string*",
    "model": "*string*",
    "name": "*string*",
    "os_version": "*string*",
    "os_version_extra": "*string*",
    "public_ip": "*string*",
    "serial_number": "*string*",
    "updated_at": "*string*"
  }
]
```



## Get device

**GET** `/accounts/{account_id}/devices/physical-devices/{device_id}`

Fetches a single WARP device.

### Responses

#### 200 Returns a Device.

> Data is at `body["result"]`

```json
{
  "active_registrations": "*integer*",
  "client_version": "*string*",
  "created_at": "*string*",
  "deleted_at": "*string*",
  "device_type": "*string*",
  "hardware_id": "*string*",
  "id": "*string*",
  "last_seen_at": "*string*",
  "last_seen_registration": {},
  "last_seen_user": {},
  "mac_address": "*string*",
  "manufacturer": "*string*",
  "model": "*string*",
  "name": "*string*",
  "os_version": "*string*",
  "os_version_extra": "*string*",
  "public_ip": "*string*",
  "serial_number": "*string*",
  "updated_at": "*string*"
}
```



## Delete device

**DELETE** `/accounts/{account_id}/devices/physical-devices/{device_id}`

Deletes a WARP device.

### Responses

#### 200 Device was successfully deleted.

> Data is at `body["result"]`

```json
{}
```



## Revoke device registrations

**POST** `/accounts/{account_id}/devices/physical-devices/{device_id}/revoke`

Revokes all WARP registrations associated with the specified device.

### Responses

#### 200 Revoke device registrations response.

> Data is at `body["result"]`

```json
{}
```



## Delete registrations

**DELETE** `/accounts/{account_id}/devices/registrations`

Deletes a list of WARP registrations.

### Responses

#### 200 Delete a list of registrations response.

> Data is at `body["result"]`

```json
{}
```


