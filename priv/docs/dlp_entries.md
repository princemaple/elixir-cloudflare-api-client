# DLP Entries

## Create custom entry

**POST** `/accounts/{account_id}/dlp/entries`

Creates a DLP custom entry.

### Responses

#### 200 Create new custom entry response.

> Data is at `body["result"]`

```json
{
  "created_at": "*string*",
  "description": "*string*",
  "enabled": "*boolean*",
  "id": "*string*",
  "name": "*string*",
  "pattern": {
    "regex": "*string*",
    "validation": "*string*"
  },
  "profile_id": "*string*",
  "updated_at": "*string*"
}
```

#### 4XX Create new custom entry failure response.

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



## List all entries

**GET** `/accounts/{account_id}/dlp/entries`

Lists all DLP entries in an account.

### Responses

#### 200 List all entries response.

> Data is at `body["result"]`

```json
[
  {
    "upload_status": "*string*"
  }
]
```

#### 4XX List all entries failure response.

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



## Update custom entry

**PUT** `/accounts/{account_id}/dlp/entries/custom/{entry_id}`

Updates a DLP custom entry.

### Responses

#### 200 Update entry response.

> Data is at `body["result"]`

```json
{
  "created_at": "*string*",
  "description": "*string*",
  "enabled": "*boolean*",
  "id": "*string*",
  "name": "*string*",
  "pattern": {
    "regex": "*string*",
    "validation": "*string*"
  },
  "profile_id": "*string*",
  "updated_at": "*string*"
}
```

#### 4XX Update entry failure response.

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



## Update predefined entry

**PUT** `/accounts/{account_id}/dlp/entries/predefined/{entry_id}`

Updates a DLP entry.

### Responses

#### 200 Update predefined entry response.

> Data is at `body["result"]`

```json
{
  "confidence": {
    "ai_context_available": "*boolean*",
    "available": "*boolean*"
  },
  "enabled": "*boolean*",
  "id": "*string*",
  "name": "*string*",
  "profile_id": "*string*",
  "variant": null
}
```

#### 4XX Update entry failure response.

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



## Update entry

**PUT** `/accounts/{account_id}/dlp/entries/{entry_id}`

Updates a DLP entry.

### Responses

#### 200 Update entry response.

> Data is at `body["result"]`

```json
null
```

#### 4XX Update entry failure response.

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



## Get DLP Entry

**GET** `/accounts/{account_id}/dlp/entries/{entry_id}`

Fetches a DLP entry by ID.

### Responses

#### 200 Get entry response.

> Data is at `body["result"]`

```json
{
  "profiles": [
    {
      "id": "*string*",
      "name": "*string*"
    }
  ],
  "upload_status": "*string*"
}
```

#### 4XX Get entry failure response.

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



## Delete custom entry

**DELETE** `/accounts/{account_id}/dlp/entries/{entry_id}`

Deletes a DLP custom entry.

### Responses

#### 200 Delete custom entry response.

> Data is at `body["result"]`

```json
{}
```

#### 4XX Delete custom entry failure response.

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


