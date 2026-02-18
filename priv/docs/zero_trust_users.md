# Zero Trust users

## Create a user

**POST** `/accounts/{account_id}/access/users`

Creates a new user.

### Responses

#### 201 Create user response

> Data is at `body["result"]`

```json
{
  "access_seat": "*boolean*",
  "active_device_count": "*number*",
  "created_at": "*string*",
  "email": "*string*",
  "gateway_seat": "*boolean*",
  "id": "*string*",
  "last_successful_login": "*string*",
  "name": "*string*",
  "seat_uid": "*string*",
  "uid": "*string*",
  "updated_at": "*string*"
}
```

#### 4XX Create user response failure

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "source": {
        "pointer": "*string*"
      }
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "source": {
        "pointer": "*string*"
      }
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Get users

**GET** `/accounts/{account_id}/access/users`

Gets a list of users for an account.

### Responses

#### 200 Get users response

> Data is at `body["result"]`

```json
[
  {
    "access_seat": "*boolean*",
    "active_device_count": "*number*",
    "created_at": "*string*",
    "email": "*string*",
    "gateway_seat": "*boolean*",
    "id": "*string*",
    "last_successful_login": "*string*",
    "name": "*string*",
    "seat_uid": "*string*",
    "uid": "*string*",
    "updated_at": "*string*"
  }
]
```

#### 4XX Get users response failure

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "source": {
        "pointer": "*string*"
      }
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "source": {
        "pointer": "*string*"
      }
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Get active sessions

**GET** `/accounts/{account_id}/access/users/{user_id}/active_sessions`

Get active sessions for a single user.

### Responses

#### 200 Get active sessions response

> Data is at `body["result"]`

```json
[
  {
    "expiration": "*integer*",
    "metadata": {
      "apps": {},
      "expires": "*integer*",
      "iat": "*integer*",
      "nonce": "*string*",
      "ttl": "*integer*"
    },
    "name": "*string*"
  }
]
```

#### 4XX Get active sessions response failure

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "source": {
        "pointer": "*string*"
      }
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "source": {
        "pointer": "*string*"
      }
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Get single active session

**GET** `/accounts/{account_id}/access/users/{user_id}/active_sessions/{nonce}`

Get an active session for a single user.

### Responses

#### 200 Get active session response

> Data is at `body["result"]`

```json
{
  "account_id": "*string*",
  "auth_status": "*string*",
  "common_name": "*string*",
  "devicePosture": {},
  "device_id": "*string*",
  "device_sessions": {},
  "email": "*string*",
  "geo": {
    "country": "*string*"
  },
  "iat": "*number*",
  "idp": {
    "id": "*string*",
    "type": "*string*"
  },
  "ip": "*string*",
  "isActive": "*boolean*",
  "is_gateway": "*boolean*",
  "is_warp": "*boolean*",
  "mtls_auth": {
    "auth_status": "*string*",
    "cert_issuer_dn": "*string*",
    "cert_issuer_ski": "*string*",
    "cert_presented": "*boolean*",
    "cert_serial": "*string*"
  },
  "service_token_id": "*string*",
  "service_token_status": "*boolean*",
  "user_uuid": "*string*",
  "version": "*number*"
}
```

#### 4XX Get active session response failure

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "source": {
        "pointer": "*string*"
      }
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "source": {
        "pointer": "*string*"
      }
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Get failed logins

**GET** `/accounts/{account_id}/access/users/{user_id}/failed_logins`

Get all failed login attempts for a single user.

### Responses

#### 200 Get failed logins response

> Data is at `body["result"]`

```json
[
  {
    "expiration": "*integer*",
    "metadata": {}
  }
]
```

#### 4XX Get failed logins response failure

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "source": {
        "pointer": "*string*"
      }
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "source": {
        "pointer": "*string*"
      }
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Get last seen identity

**GET** `/accounts/{account_id}/access/users/{user_id}/last_seen_identity`

Get last seen identity for a single user.

### Responses

#### 200 Get active session response

> Data is at `body["result"]`

```json
{
  "account_id": "*string*",
  "auth_status": "*string*",
  "common_name": "*string*",
  "devicePosture": {},
  "device_id": "*string*",
  "device_sessions": {},
  "email": "*string*",
  "geo": {
    "country": "*string*"
  },
  "iat": "*number*",
  "idp": {
    "id": "*string*",
    "type": "*string*"
  },
  "ip": "*string*",
  "is_gateway": "*boolean*",
  "is_warp": "*boolean*",
  "mtls_auth": {
    "auth_status": "*string*",
    "cert_issuer_dn": "*string*",
    "cert_issuer_ski": "*string*",
    "cert_presented": "*boolean*",
    "cert_serial": "*string*"
  },
  "service_token_id": "*string*",
  "service_token_status": "*boolean*",
  "user_uuid": "*string*",
  "version": "*number*"
}
```

#### 4XX Get active session response failure

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "source": {
        "pointer": "*string*"
      }
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "source": {
        "pointer": "*string*"
      }
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```


