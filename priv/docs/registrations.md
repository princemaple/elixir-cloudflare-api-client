# Registrations

## List registrations

**GET** `/accounts/{account_id}/devices/registrations`

Lists WARP registrations.

### Responses

#### 200 List of registrations response.

> Data is at `body["result"]`

```json
[
  {
    "created_at": "*string*",
    "deleted_at": "*string*",
    "device": {
      "client_version": "*string*",
      "id": "*string*",
      "name": "*string*"
    },
    "id": "*string*",
    "key": "*string*",
    "key_type": "*string*",
    "last_seen_at": "*string*",
    "policy": {
      "default": "*boolean*",
      "deleted": "*boolean*",
      "id": "*string*",
      "name": "*string*",
      "updated_at": "*string*"
    },
    "revoked_at": "*string*",
    "tunnel_type": "*string*",
    "updated_at": "*string*",
    "user": {
      "email": null,
      "id": null,
      "name": "*string*"
    }
  }
]
```



## Revoke registrations

**POST** `/accounts/{account_id}/devices/registrations/revoke`

Revokes a list of WARP registrations.

### Responses

#### 200 Revoke registrations response.

> Data is at `body["result"]`

```json
{}
```



## Unrevoke registrations

**POST** `/accounts/{account_id}/devices/registrations/unrevoke`

Unrevokes a list of WARP registrations.

### Responses

#### 200 Unrevoke registrations response.

> Data is at `body["result"]`

```json
{}
```



## Get registration

**GET** `/accounts/{account_id}/devices/registrations/{registration_id}`

Fetches a single WARP registration.

### Responses

#### 200 Returns a Registration.

> Data is at `body["result"]`

```json
{
  "created_at": "*string*",
  "deleted_at": "*string*",
  "device": {
    "client_version": "*string*",
    "id": "*string*",
    "name": "*string*"
  },
  "id": "*string*",
  "key": "*string*",
  "key_type": "*string*",
  "last_seen_at": "*string*",
  "policy": {
    "default": "*boolean*",
    "deleted": "*boolean*",
    "id": "*string*",
    "name": "*string*",
    "updated_at": "*string*"
  },
  "revoked_at": "*string*",
  "tunnel_type": "*string*",
  "updated_at": "*string*",
  "user": {
    "email": "*string*",
    "id": "*string*",
    "name": "*string*"
  }
}
```



## Delete registration

**DELETE** `/accounts/{account_id}/devices/registrations/{registration_id}`

Deletes a WARP registration.

### Responses

#### 200 Registration deleted response.

> Data is at `body["result"]`

```json
{}
```


