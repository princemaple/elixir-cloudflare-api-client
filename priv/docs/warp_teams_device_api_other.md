# warp-teams-device-api_other

## Create IP profile

**POST** `/accounts/{account_id}/devices/ip-profiles`

Creates a WARP Device IP profile. Currently, only IPv4 Device subnets can be associated.

### Responses

#### 200 Create Device IP profile response.

> Data is at `body["result"]`

```json
{
  "created_at": "*string*",
  "description": "*string*",
  "enabled": "*boolean*",
  "id": "*string*",
  "match": "*string*",
  "name": "*string*",
  "precedence": "*integer*",
  "subnet_id": "*string*",
  "updated_at": "*string*"
}
```



## List IP profiles

**GET** `/accounts/{account_id}/devices/ip-profiles`

Lists WARP Device IP profiles.

### Responses

#### 200 List Device IP profiles response.

> Data is at `body["result"]`

```json
[
  {
    "created_at": "*string*",
    "description": "*string*",
    "enabled": "*boolean*",
    "id": "*string*",
    "match": "*string*",
    "name": "*string*",
    "precedence": "*integer*",
    "subnet_id": "*string*",
    "updated_at": "*string*"
  }
]
```



## Update IP profile

**PATCH** `/accounts/{account_id}/devices/ip-profiles/{profile_id}`

Updates a WARP Device IP profile. Currently, only IPv4 Device subnets can be associated.

### Responses

#### 200 Update Device IP profile response.

> Data is at `body["result"]`

```json
{
  "created_at": "*string*",
  "description": "*string*",
  "enabled": "*boolean*",
  "id": "*string*",
  "match": "*string*",
  "name": "*string*",
  "precedence": "*integer*",
  "subnet_id": "*string*",
  "updated_at": "*string*"
}
```



## Get IP profile

**GET** `/accounts/{account_id}/devices/ip-profiles/{profile_id}`

Fetches a single WARP Device IP profile.

### Responses

#### 200 Get Device IP profile response.

> Data is at `body["result"]`

```json
{
  "created_at": "*string*",
  "description": "*string*",
  "enabled": "*boolean*",
  "id": "*string*",
  "match": "*string*",
  "name": "*string*",
  "precedence": "*integer*",
  "subnet_id": "*string*",
  "updated_at": "*string*"
}
```



## Delete IP profile

**DELETE** `/accounts/{account_id}/devices/ip-profiles/{profile_id}`

Delete a WARP Device IP profile.

### Responses

#### 200 Delete Device IP profile response.

> Data is at `body["result"]`

```json
{
  "id": "*string*"
}
```



## Get override codes

**GET** `/accounts/{account_id}/devices/registrations/{registration_id}/override_codes`

Fetches one-time use admin override codes for a registration. This relies on the **Admin Override** setting being enabled in your device configuration.

### Responses

#### 200 Get admin override codes for a registration response.

> Data is at `body["result"]`

```json
null
```


