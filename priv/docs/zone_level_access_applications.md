# Zone-Level Access applications

## Add an Access application

**POST** `/zones/{zone_id}/access/apps`

Adds a new application to Access.

### Responses

#### 201 Add an Access application response

> Data is at `body["result"]`

```json
{}
```

#### 4XX Add an Access application response failure

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



## List Access Applications

**GET** `/zones/{zone_id}/access/apps`

List all Access Applications in a zone.

### Responses

#### 200 List Access Applications response

> Data is at `body["result"]`

```json
[
  {}
]
```

#### 4XX List Access Applications response failure

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



## Update an Access application

**PUT** `/zones/{zone_id}/access/apps/{app_id}`

Updates an Access application.

### Responses

#### 200 Update an Access application response

> Data is at `body["result"]`

```json
{}
```

#### 4XX Update an Access application response failure

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



## Get an Access application

**GET** `/zones/{zone_id}/access/apps/{app_id}`

Fetches information about an Access application.

### Responses

#### 200 Get an Access application response

> Data is at `body["result"]`

```json
{}
```

#### 4XX Get an Access application response failure

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



## Delete an Access application

**DELETE** `/zones/{zone_id}/access/apps/{app_id}`

Deletes an application from Access.

### Responses

#### 202 Delete an Access application response

> Data is at `body["result"]`

```json
{
  "id": "*string*"
}
```

#### 4XX Delete an Access application response failure

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



## Revoke application tokens

**POST** `/zones/{zone_id}/access/apps/{app_id}/revoke_tokens`

Revokes all tokens issued for an application.

### Responses

#### 202 Revoke application tokens response

> Data is at `body["result"]`

```json
{}
```

#### 4XX Revoke application tokens response failure

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



## Update application settings

**PUT** `/zones/{zone_id}/access/apps/{app_id}/settings`

Updates application settings.

### Responses

#### 202 Update application settings response

> Data is at `body["result"]`

```json
{
  "allow_iframe": "*boolean*",
  "skip_interstitial": "*boolean*"
}
```

#### 4XX Update application settings response failure

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



## Update application settings

**PATCH** `/zones/{zone_id}/access/apps/{app_id}/settings`

Updates application settings.

### Responses

#### 202 Update application settings response

> Data is at `body["result"]`

```json
{
  "allow_iframe": "*boolean*",
  "skip_interstitial": "*boolean*"
}
```

#### 4XX Update application settings response failure

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



## Test Access policies

**GET** `/zones/{zone_id}/access/apps/{app_id}/user_policy_checks`

Tests if a specific user has permission to access an application.

### Responses

#### 200 Test Access policies response

> Data is at `body["result"]`

```json
{
  "app_state": {
    "app_uid": "*string*",
    "aud": "*string*",
    "hostname": "*string*",
    "name": "*string*",
    "policies": [
      null
    ],
    "status": "*string*"
  },
  "user_identity": {
    "account_id": "*string*",
    "device_sessions": {},
    "email": "*string*",
    "geo": {
      "country": "*string*"
    },
    "iat": "*integer*",
    "id": "*string*",
    "is_gateway": "*boolean*",
    "is_warp": "*boolean*",
    "name": "*string*",
    "user_uuid": "*string*",
    "version": "*integer*"
  }
}
```

#### 4XX Test Access policies response failure

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


