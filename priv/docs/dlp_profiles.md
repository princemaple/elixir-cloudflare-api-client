# DLP Profiles

## List all profiles

**GET** `/accounts/{account_id}/dlp/profiles`

Lists all DLP profiles in an account.

### Responses

#### 200 List all profiles response.

> Data is at `body["result"]`

```json
[
  null
]
```

#### 4XX List all profiles failure response.

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



## Create custom profile

**POST** `/accounts/{account_id}/dlp/profiles/custom`

Creates a DLP custom profile.

### Responses

#### 200 New custom profile response.

> Data is at `body["result"]`

```json
null
```

#### 4XX New custom profile failure response.

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



## List all custom profiles

**GET** `/accounts/{account_id}/dlp/profiles/custom`

Lists all DLP custom profiles in an account.

### Responses

#### 200 List all custom profiles response.

> Data is at `body["result"]`

```json
[
  {
    "ai_context_enabled": "*boolean*",
    "allowed_match_count": "*integer*",
    "confidence_threshold": "*string*",
    "context_awareness": {
      "enabled": "*boolean*",
      "skip": null
    },
    "created_at": "*string*",
    "description": "*string*",
    "entries": [
      null
    ],
    "id": "*string*",
    "name": "*string*",
    "ocr_enabled": "*boolean*",
    "shared_entries": [
      null
    ],
    "updated_at": "*string*"
  }
]
```

#### 4XX List all profiles failure response.

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



## Update custom profile

**PUT** `/accounts/{account_id}/dlp/profiles/custom/{profile_id}`

Updates a DLP custom profile.

### Responses

#### 200 Update custom profile response.

> Data is at `body["result"]`

```json
null
```

#### 4XX Update custom profile failure response.

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



## Get custom profile

**GET** `/accounts/{account_id}/dlp/profiles/custom/{profile_id}`

Fetches a custom DLP profile by id.

### Responses

#### 200 Custom profile response.

> Data is at `body["result"]`

```json
null
```

#### 4XX Custom profile failure response.

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



## Delete custom profile

**DELETE** `/accounts/{account_id}/dlp/profiles/custom/{profile_id}`

Deletes a DLP custom profile.

### Responses

#### 200 Delete custom profile response.

> Data is at `body["result"]`

```json
{}
```

#### 4XX Delete custom profile failure response.

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



## Create predefined profile

**POST** `/accounts/{account_id}/dlp/profiles/predefined`

Creates a DLP predefined profile. Only supports enabling/disabling entries.

### Responses

#### 200 Create predefined profile response.

> Data is at `body["result"]`

```json
null
```

#### 4XX Create predefined profile failure response.

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



## Update predefined profile

**PUT** `/accounts/{account_id}/dlp/profiles/predefined/{profile_id}`

Updates a DLP predefined profile. Only supports enabling/disabling entries.

### Responses

#### 200 Update predefined profile response.

> Data is at `body["result"]`

```json
null
```

#### 4XX Update predefined profile failure response.

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



## Get predefined profile

**GET** `/accounts/{account_id}/dlp/profiles/predefined/{profile_id}`

Fetches a predefined DLP profile by id.

### Responses

#### 200 Predefined profile response.

> Data is at `body["result"]`

```json
null
```

#### 4XX Predefined profile failure response.

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



## Delete predefined profile

**DELETE** `/accounts/{account_id}/dlp/profiles/predefined/{profile_id}`

This is a no-op as predefined profiles can't be deleted but is needed for our generated terraform API.

### Responses

#### 200 Delete predefined profile response.

> Data is at `body["result"]`

```json
{}
```

#### 4XX Delete predefined profile failure response.

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



## Update predefined profile config

**PUT** `/accounts/{account_id}/dlp/profiles/predefined/{profile_id}/config`

This is similar to `update_predefined` but only returns entries that are enabled.
This is needed for our terraform API
Updates a DLP predefined profile. Only supports enabling/disabling entries.

### Responses

#### 200 Update predefined profile response.

> Data is at `body["result"]`

```json
{
  "ai_context_enabled": "*boolean*",
  "allowed_match_count": "*integer*",
  "confidence_threshold": "*string*",
  "enabled_entries": [
    "*string*"
  ],
  "entries": [
    null
  ],
  "id": "*string*",
  "name": "*string*",
  "ocr_enabled": "*boolean*",
  "open_access": "*boolean*"
}
```

#### 4XX Update predefined profile failure response.

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



## Create predefined profile

**POST** `/accounts/{account_id}/dlp/profiles/predefined/{profile_id}/config`

This is similar to `update_predefined` but only returns entries that are enabled.
This is needed for our terraform API
Creates a DLP predefined profile. Only supports enabling/disabling entries.

### Responses

#### 200 Create predefined profile response.

> Data is at `body["result"]`

```json
{
  "ai_context_enabled": "*boolean*",
  "allowed_match_count": "*integer*",
  "confidence_threshold": "*string*",
  "enabled_entries": [
    "*string*"
  ],
  "entries": [
    null
  ],
  "id": "*string*",
  "name": "*string*",
  "ocr_enabled": "*boolean*",
  "open_access": "*boolean*"
}
```

#### 4XX Create predefined profile failure response.

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



## Get predefined profile config

**GET** `/accounts/{account_id}/dlp/profiles/predefined/{profile_id}/config`

This is similar to `get_predefined` but only returns entries that are enabled.
This is needed for our terraform API
Fetches a predefined DLP profile by id.

### Responses

#### 200 Predefined profile response.

> Data is at `body["result"]`

```json
{
  "ai_context_enabled": "*boolean*",
  "allowed_match_count": "*integer*",
  "confidence_threshold": "*string*",
  "enabled_entries": [
    "*string*"
  ],
  "entries": [
    null
  ],
  "id": "*string*",
  "name": "*string*",
  "ocr_enabled": "*boolean*",
  "open_access": "*boolean*"
}
```

#### 4XX Predefined profile failure response.

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



## Get DLP Profile

**GET** `/accounts/{account_id}/dlp/profiles/{profile_id}`

Fetches a DLP profile by ID.

### Responses

#### 200 Get profile response.

> Data is at `body["result"]`

```json
null
```

#### 4XX Get profile failure response.

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


